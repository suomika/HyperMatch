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
#include <boost/program_options.hpp>

using namespace kahypar;
namespace po = boost::program_options;

int main(int argc, char* argv[]) {
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
    const HypernodeID initial_num_nodes = hypergraph.initialNumNodes();
    
    
    /*
     * TODO: don't remove pins, remove hyperedges!
     *
    // decision boundary: which pins should be removed
    double decision_boundary = atof(argv[2]);
    if (decision_boundary > 1.0 or decision_boundary < 0.0) {
        std::cerr << "decision_boundary arguement has to be in [0,1]" << std::endl;
        return 1;
    }
    
    // maxDegree based on maximum node degree
    long maxNodeDegree = 0;
    for (HypernodeID pin = 0; pin < initial_num_nodes; ++pin) {
        if (hypergraph.nodeDegree(pin) > maxNodeDegree) maxNodeDegree = hypergraph.nodeDegree(pin);
    }
    
    // maxDegree based on mean node degrees
    double averageDegree = 0;
    for (HypernodeID pin = 0; pin < initial_num_nodes; ++pin) {
        averageDegree += hypergraph.nodeDegree(pin)/initial_num_nodes;
    }
                                
    // momentary we base our maxDegree on the maximum node degree
    double maxDegree = maxNodeDegree * (1-decision_boundary);
    
    auto t1 = std::chrono::steady_clock::now();
    std::chrono::duration<double> diff1 = t1-start;
    std::cout << " ... calculated maxDegree successfully! - - - elapsed time: " << diff1.count() << "s\n";
    
    
    // remove 'big pins' from hypergraph
    for (HypernodeID pin = 0; pin < initial_num_nodes; ++pin) {
        if (hypergraph.nodeDegree(pin) > maxDegree) hypergraph.removeNode(pin);
    }
     *
     */
    
    const HyperedgeID num_edges = hypergraph.currentNumEdges();
    
    auto t2 = std::chrono::steady_clock::now();
    std::chrono::duration<double> diff2 = t2-start;
    // std::cout << " ... reduced nodes successfully! - - - elapsed time: " << diff2.count() << "s\n";
    
                                                          
    // set number of threads used in the parallel regions to measure speedups
    int max_num_threads = omp_get_max_threads();
    int num_threads = atof(argv[3]);
    if (num_threads > max_num_threads || num_threads < 1) num_threads = max_num_threads;
    
    // counting overlapping hyperedges to determine #edges in graph
    long overlapping_edges = 0;
    
    
    // conversion works for unweighted hypergraphs and weighted hyperedges
    if (hypergraph.type() == HypergraphType::EdgeWeights) {

        // define resulting array and iterators for outstream
        std::vector< std::vector<int> > result(num_edges, std::vector<int>());
        std::vector< std::vector<int> >::iterator it;
        std::vector<int>::iterator i;
        
        #pragma omp parallel for reduction(+: overlapping_edges) num_threads(num_threads)
        for (HyperedgeID he = 0; he < num_edges; ++he) {
            std::vector<int> temp;
            temp.push_back(hypergraph.edgeWeight(he));
            for (const HypernodeID& pin : hypergraph.pins(he)) {
                for (const HyperedgeID& he2 : hypergraph.incidentEdges(pin)) {
                    if (he != he2) {
                        temp.push_back(he2+1);
                    }
                }
            }
            
            std::sort( temp.begin(), temp.end() );
            temp.erase( std::unique( temp.begin(), temp.end() ), temp.end() );
            result.at(he)=temp;
            overlapping_edges += temp.size();
            temp.clear();
        }
        
        auto t3 = std::chrono::steady_clock::now();
        std::chrono::duration<double> diff3 = t3-start;
        std::cout << " ... calculations for the resulting file are done! - - - elapsed time: " << diff3.count() << "s\n";
        
        
        // because overlapping_edges counts every edge two times,
        // we have to divide it by 2
        overlapping_edges = overlapping_edges / 2;
        std::cout << " ... number of nodes in the resulting graph: " << num_edges << std::endl;
        std::cout << " ... number of edges in the resulting graph: " << overlapping_edges << std::endl;
        
        out_stream << num_edges << " " << overlapping_edges << " 10" << std::endl;
        
        
        // write the data of result into graph file
        for (it = result.begin(); it != result.end(); ++it) {
            for (i = (*it).begin(); i != (*it).end(); i++) {
                out_stream << *i << " ";
            }
            out_stream << "\n";
        }
        
        
    } else {
        
        // define resulting array and iterators for outstream
        std::vector< std::vector<int> > result(num_edges, std::vector<int>());
        std::vector< std::vector<int> >::iterator it;
        std::vector<int>::iterator i;
        
        #pragma omp parallel for reduction(+: overlapping_edges) num_threads(num_threads)
        for (HyperedgeID he = 0; he < num_edges; ++he) {
            std::vector<int> temp;
            for (const HypernodeID& pin : hypergraph.pins(he)) {
                for (const HyperedgeID& he2 : hypergraph.incidentEdges(pin)) {
                    if (he != he2) {
                        temp.push_back(he2+1);
                    }
                }
            }
            
            std::sort( temp.begin(), temp.end() );
            temp.erase( std::unique( temp.begin(), temp.end() ), temp.end() );
            result.at(he)=temp;
            overlapping_edges += temp.size();
            temp.clear();
        }
        
        auto t3 = std::chrono::steady_clock::now();
        std::chrono::duration<double> diff3 = t3-start;
        std::cout << " ... calculations for the resulting file are done! - - - elapsed time: " << diff3.count() << "s\n";
        
        
        // because overlapping_edges counts every edge two times,
        // we have to divide it by 2
        overlapping_edges = overlapping_edges / 2;
        std::cout << " ... number of nodes in the resulting graph: " << num_edges << std::endl;
        std::cout << " ... number of edges in the resulting graph: " << overlapping_edges << std::endl;
        
        out_stream << num_edges << " " << overlapping_edges << std::endl;
        
        
        // write the data of result into graph file
        for (it = result.begin(); it != result.end(); ++it) {
            for (i = (*it).begin(); i != (*it).end(); i++) {
                out_stream << *i << " ";
            }
            out_stream << "\n";
        }
    }
    
    out_stream.close();
    auto t4 = std::chrono::steady_clock::now();
    std::chrono::duration<double> diff4 = t4-start;
    std::cout << " ... done! - - - elapsed time: " << diff4.count() << "s" << std::endl;
    return 0;
}


/* ____________________________ LATER ____________________________
 *
 * test the output of temp and result and check their correctness
    std::cout << "\n temp:" << std::endl;
    for (auto& i: temp)
        std::cout << i << ' ';
    std::cout << "\n result:" << std::endl;
    for (auto& i: result)
        std::cout << i << ' ';
 *
 * print Hyperedges: hypergraph.printHyperedges();
 *
 * for (const HypernodeID& hn : hypergraph.nodes()) {
      std::cout << hn << std::endl;
   }
   for (const HyperedgeID& he : hypergraph.edges()) {
      std::cout << he << std::endl;
   }
 *
 * std::cout << "num of nodes = " << num_nodes << std::endl;
 *
 * for(HypernodeID i : hypergraph.nodes()) hypergraph.printNodeState(i);
   for(HyperedgeID e : hypergraph.edges())  hypergraph.printEdgeState(e);
 * _______________________________________________________________
 */
