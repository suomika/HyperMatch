/*******************************************************************************
 * This tool is used to write a reduced hypergraph into a .hgr file.
 ******************************************************************************/

#include <fstream>
#include <iostream>
#include <sstream>
#include <string>

#include "kahypar/definitions.h"
#include "kahypar/io/hypergraph_io.h"
#include "kahypar/macros.h"

using namespace kahypar;

std::vector<int> calculate_big_edges(double, Hypergraph&);
Hypergraph reduce_hypergraph(Hypergraph&, bool);


int main(int argc, char* argv[]) {
    
    // -------------------------- SETUP --------------------------
    
    if (argc != 3) {
        std::cout << "No .hgr file specified" << std::endl;
    }
    
    std::string hgr_filename(argv[1]);
    std::string red_filename(hgr_filename + "_red.hgr");
    
    // create ofstream and a buffer for better performance
    std::ofstream out_stream(red_filename.c_str());
    const size_t bufsize = 256*1024;
    char buf[bufsize];
    out_stream.rdbuf()->pubsetbuf(buf, bufsize);
    
    Hypergraph hypergraph(io::createHypergraphFromFile(hgr_filename, 2));
    
    bool hasWeights = false;
    if (hypergraph.type() == HypergraphType::EdgeWeights) hasWeights = true;
    
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
    
    // -----------------------------------------------------------
    
    
    
    // ---------------- WRITE REDUCED HYPERGRAPH ----------------
    
    Hypergraph reduced_hypergraph = reduce_hypergraph(hypergraph, hasWeights);
    io::writeHypergraphFile(reduced_hypergraph, red_filename);
    
    // -----------------------------------------------------------
    
    
    out_stream.close();
    std::cout << " ... DONE!" << std::endl;
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
