/*******************************************************************************
 * This tool is used for a conversion of a hypergraph in a
 * normal graph. The idea is that every hyperedge becomes a node in
 * the new graph and overlapping hyperedges become edges in the new grpah.
 ******************************************************************************/

#include <fstream>
#include <iostream>
#include <sstream>
#include <string>

#include "kahypar/definitions.h"
#include "kahypar/io/hypergraph_io.h"
#include "kahypar/macros.h"

#include <omp.h>
#include <chrono>

using namespace kahypar;

std::vector<int> calculate_big_edges(double, Hypergraph&);
Hypergraph reduce_hypergraph(Hypergraph&, bool);
std::vector< std::vector<int> > conversion(Hypergraph&, bool, int, std::ofstream&);


int main(int argc, char* argv[]) {

    // -------------------------- SETUP --------------------------
    
    if (argc != 3 && argc != 4) {
        std::cout << "No .hgr file specified" << std::endl;
    }
    
    std::string hgr_filename(argv[1]);
    std::string graph_filename(hgr_filename + ".graph");
    
    // create ofstream and a buffer for better performance
    std::ofstream out_stream(graph_filename.c_str());
    const size_t bufsize = 256*1024;
    char buf[bufsize];
    out_stream.rdbuf()->pubsetbuf(buf, bufsize);
    
    // begin to measure time
    auto start = std::chrono::steady_clock::now();
    
    Hypergraph hypergraph(io::createHypergraphFromFile(hgr_filename, 2));
    
    bool hasWeights = false;
    if (hypergraph.type() == HypergraphType::EdgeWeights) hasWeights = true;
    
    // set number of threads used in the parallel regions to measure speedups
    int max_num_threads = omp_get_max_threads();
    int num_threads = atof(argv[3]);
    if (num_threads > max_num_threads || num_threads < 1) num_threads = max_num_threads;
    
    auto t1 = std::chrono::steady_clock::now();
    std::chrono::duration<double> diff1 = t1 - start;
    std::cout << " ... FINISHED SETUP - TIME NEEDED: " << diff1.count() << "s\n";
    
    // -----------------------------------------------------------
    
    
    
    // -------------------- REDUCE HYPEREDGES --------------------
    
    double decision_boundary = atof(argv[2]);
    if (decision_boundary > 1.0 or decision_boundary < 0.0) {
        std::cerr << "decision_boundary argument has to be in [0,1]" << std::endl;
        return 1;
    }
    std::vector<int> bigEdges = calculate_big_edges(decision_boundary, hypergraph);
    
    // remove hyperedges with 'big pins' from hypergraph
    for (long unsigned int i = 0; i < bigEdges.size(); ++i) {
        hypergraph.removeEdge(bigEdges[i]);
    }
    
    auto t2 = std::chrono::steady_clock::now();
    std::chrono::duration<double> diff2 = t2 - t1;
    std::cout << " ... REDUCED HYPEREDGES! - TIME NEEDED: " << diff2.count() << "s\n";
    
    // -----------------------------------------------------------
    
    
    
    // ---------------- CREATE REDUCED HYPERGRAPH ----------------
    
    Hypergraph reduced_hypergraph = reduce_hypergraph(hypergraph, hasWeights);
    
    auto t3 = std::chrono::steady_clock::now();
    std::chrono::duration<double> diff3 = t3 - t2;
    std::cout << " ... CREATED REDUCED HYPERGRAPH! - TIME NEEDED: " << diff3.count() << "s\n";
    
    // -----------------------------------------------------------
    
    
    
    // ----------------------- CONVERSION ------------------------
    
    std::vector< std::vector<int> > result = conversion(reduced_hypergraph, hasWeights, num_threads, out_stream);
    
    auto t4 = std::chrono::steady_clock::now();
    std::chrono::duration<double> diff4 = t4 - t3;
    std::cout << "\033[1;31m ... CONVERSION FINISHED! - TIME NEEDED: " << diff4.count() << "s\033[0m\n";
    
    // -----------------------------------------------------------
    
    
    
    // --------------------- FINAL OUTSTREAM ---------------------
    
    std::vector< std::vector<int> >::iterator it;
    std::vector<int>::iterator i;
    for (it = result.begin(); it != result.end(); ++it) {
        for (i = (*it).begin(); i != (*it).end(); i++) {
            out_stream << *i << " ";
        }
        out_stream << "\n";
    }
    
    auto t5 = std::chrono::steady_clock::now();
    std::chrono::duration<double> diff5 = t5 - t4;
    std::cout << " ... CREATED GRAPH FILE! - TIME NEEDED: " << diff5.count() << "s\n";
    
    // -----------------------------------------------------------
    
    
    
    // --------------------- FINAL OUTSTREAM ---------------------
    
    out_stream.close();
    
    auto t6 = std::chrono::steady_clock::now();
    std::chrono::duration<double> diff6 = t6 - start;
    std::cout << " ... DONE! - COMPLETE TIME NEEDED: " << diff6.count() << "s" << std::endl;
    
    // -----------------------------------------------------------
    
    return 0;
}


std::vector<int> calculate_big_edges(double decision_boundary, Hypergraph& hypergraph) {
    
    const HypernodeID initial_num_nodes = hypergraph.initialNumNodes();
    long maxNodeDegree = 0;
    for (HypernodeID pin = 0; pin < initial_num_nodes; ++pin) {
        if (hypergraph.nodeDegree(pin) > maxNodeDegree) maxNodeDegree = hypergraph.nodeDegree(pin);
    }
    
    // we base our maxDegree on the maximum node degree
    double maxDegree = maxNodeDegree * (1-decision_boundary);
    
    // safe which hyperedges should be removed
    std::vector<int> bigEdges;
    for (HypernodeID pin = 0; pin < initial_num_nodes; ++pin) {
        if (hypergraph.nodeDegree(pin) > maxDegree) {
            for (const HyperedgeID& he : hypergraph.incidentEdges(pin)) {
                bigEdges.push_back(he);
            }
        }
    }
    std::sort( bigEdges.begin(), bigEdges.end() );
    bigEdges.erase( std::unique( bigEdges.begin(), bigEdges.end() ), bigEdges.end() );
    
    return bigEdges;
}


Hypergraph reduce_hypergraph(Hypergraph& hypergraph, bool hasWeights) {
    
    const HyperedgeID initial_num_edges = hypergraph.initialNumEdges();
    const HypernodeID num_nodes = hypergraph.currentNumNodes();
    const HyperedgeID num_edges = hypergraph.currentNumEdges();
    
    HyperedgeIndexVector index_vector;
    HyperedgeVector edge_vector;
    
    index_vector.push_back(edge_vector.size());
    for (HyperedgeID he = 0; he < initial_num_edges; ++he) {
        if (!hypergraph.edgeIsEnabled(he)) continue;
        for (const HypernodeID& pin : hypergraph.pins(he)) {
            edge_vector.push_back(pin);
        }
        index_vector.push_back(edge_vector.size());
    }
    
    HyperedgeWeightVector* hyperedge_weights_ptr = nullptr;
    HypernodeWeightVector* hypernode_weights_ptr = nullptr;
    HyperedgeWeightVector hyperedge_weights;
    HypernodeWeightVector hypernode_weights;
    
    // we only work with weighted HE's, so hypernode_weights is always nullptr
    if (hasWeights) {
        for (const auto he : hypergraph.edges()) {
            hyperedge_weights.push_back(hypergraph.edgeWeight(he));
        }
        hyperedge_weights_ptr = &hyperedge_weights;
    }
    
    Hypergraph reduced_hypergraph = Hypergraph(num_nodes, num_edges, index_vector, edge_vector, hypergraph.k(), hyperedge_weights_ptr, hypernode_weights_ptr);
    
    return reduced_hypergraph;
}


std::vector< std::vector<int> > conversion(Hypergraph& hypergraph, bool hasWeights, int num_threads, std::ofstream& out_stream) {
    
    const HyperedgeID num_edges = hypergraph.currentNumEdges();
    std::vector< std::vector<int> > result(num_edges, std::vector<int>());
    long overlapping_edges = 0;
    
    if (hasWeights) {
        
        #pragma omp parallel for reduction(+: overlapping_edges) num_threads(num_threads)
        for (HyperedgeID he = 0; he < num_edges; ++he) {
            std::vector<int> temp;
            temp.push_back(hypergraph.edgeWeight(he));
            for (const HypernodeID& pin : hypergraph.pins(he)) {
                for (const HyperedgeID& he2 : hypergraph.incidentEdges(pin)) {
                    if (he != he2) {
                        temp.push_back(he2 + 1);
                    }
                }
            }
            
            std::sort( temp.begin() + 1, temp.end() );
            temp.erase( std::unique( temp.begin(), temp.end() ), temp.end() );
            result.at(he) = temp;
            overlapping_edges += temp.size() - 1;
            temp.clear();
        }
        
        overlapping_edges = overlapping_edges / 2;
        std::cout << "     -> RESULTING GRAPH HAS " << num_edges << " NODES." << std::endl;
        std::cout << "     -> RESULTING GRAPH HAS " << overlapping_edges << " EDGES." << std::endl;
        
        out_stream << num_edges << " " << overlapping_edges << " 10" << std::endl;
        
    } else {
        
        #pragma omp parallel for reduction(+: overlapping_edges) num_threads(num_threads)
        for (HyperedgeID he = 0; he < num_edges; ++he) {
            std::vector<int> temp;
            for (const HypernodeID& pin : hypergraph.pins(he)) {
                for (const HyperedgeID& he2 : hypergraph.incidentEdges(pin)) {
                    if (he != he2) {
                        temp.push_back(he2 + 1);
                    }
                }
            }
            
            std::sort( temp.begin(), temp.end() );
            temp.erase( std::unique( temp.begin(), temp.end() ), temp.end() );
            result.at(he) = temp;
            overlapping_edges += temp.size();
            temp.clear();
        }
        
        overlapping_edges = overlapping_edges / 2;
        std::cout << "     -> RESULTING GRAPH HAS " << num_edges << " NODES." << std::endl;
        std::cout << "     -> RESULTING GRAPH HAS " << overlapping_edges << " EDGES." << std::endl;
        
        out_stream << num_edges << " " << overlapping_edges << std::endl;
        
    }
    
    return result;
}
