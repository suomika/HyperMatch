/*******************************************************************************
 * This tool is used for a conversion of a hypergraph in a
 * normal graph. The idea is that every hyperedge becomes a node in
 * the new graph and overlapping hyperedges become edges in the new grpah.
 ******************************************************************************/

#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
#include <list>
#include <typeinfo>

#include "kahypar/definitions.h"
#include "kahypar/io/hypergraph_io.h"
#include "kahypar/macros.h"

#include <omp.h>

using namespace kahypar;

int main(int argc, char* argv[]) {
    if (argc != 2) {
        std::cout << "No .hgr file specified" << std::endl;
    }
    std::string hgr_filename(argv[1]);
    std::string graph_filename(hgr_filename + ".graph");
    
    Hypergraph hypergraph(io::createHypergraphFromFile(hgr_filename, 2));
    
    std::ofstream out_stream(graph_filename.c_str());
    
    // Vertices: hyperedges
    // Edges: overlapping hyperedges
    
    const HypernodeID num_nodes = hypergraph.initialNumNodes();
    const HyperedgeID num_edges = hypergraph.initialNumEdges();
    
    // decision boundary: From which size on we should remove pins (and how much)
    int maxDegree = 0;
    if (num_edges > 2000000 && num_edges < 100000000) {
        maxDegree = num_edges / 5;
    } else if (num_edges >= 100000000) {
        maxDegree = num_edges / 100;
    } else {
        maxDegree = 2000000;
    }
    
    // remove 'big pins' from hypergraph
    #pragma omp parallel for
    for (HypernodeID pin = 0; pin < num_nodes; ++pin) {
        if (hypergraph.nodeDegree(pin) > maxDegree) hypergraph.removeNode(pin);
    }
    
    std::cout << " ... reduced nodes successfully!" << std::endl;
    
    // counting overlapping hyperedges to determine #edges in graph
    int overlapping_edges = 0;
    #pragma omp parallel for
    for (HyperedgeID he = 0; he < num_edges; ++he) {
        std::vector<int> temp = {};
        for (const HypernodeID& pin : hypergraph.pins(he)) {
            for (const HyperedgeID& he2 : hypergraph.incidentEdges(pin)) {
                if (he != he2) {
                    temp.push_back(he2);
                }
            }
        }
        std::sort( temp.begin(), temp.end() );
        temp.erase( std::unique( temp.begin(), temp.end() ), temp.end() );
        overlapping_edges += temp.size();
        temp.clear();
    }

    std::cout << " ... counted overlapping edges successfully!" << std::endl;
    
    // because overlapping_edges counts every edge two times,
    // we have to divide it by 2
    overlapping_edges = overlapping_edges / 2;
    
    // conversion works for unweighted hypergraphs and weighted hyperedges
    if (hypergraph.type() == HypergraphType::EdgeWeights) {
        out_stream << num_edges << " " << overlapping_edges << " 10" << std::endl;
        
        #pragma omp parallel for ordered
        for (HyperedgeID he = 0; he < num_edges; ++he) {
            std::vector<int> temp = {};
            for (const HypernodeID& pin : hypergraph.pins(he)) {
                for (const HyperedgeID& he2 : hypergraph.incidentEdges(pin)) {
                    if (he != he2) {
                        temp.push_back(he2);
                    }
                }
            }
            std::sort( temp.begin(), temp.end() );
            temp.erase( std::unique( temp.begin(), temp.end() ), temp.end() );
            out_stream << hypergraph.edgeWeight(he) << " ";
            #pragma omp ordered
            {
                for (auto it = std::begin(temp); it != std::end(temp); ++it) {
                    out_stream << *it + 1 << " ";
                }
            }
            out_stream << std::endl;
            temp.clear();
        }
        
    } else {
        out_stream << num_edges << " " << overlapping_edges << std::endl;
        
        #pragma omp parallel for ordered
        for (HyperedgeID he = 0; he < num_edges; ++he) {
            std::vector<int> temp = {};
            for (const HypernodeID& pin : hypergraph.pins(he)) {
                for (const HyperedgeID& he2 : hypergraph.incidentEdges(pin)) {
                    if (he != he2) {
                        temp.push_back(he2);
                    }
                }
            }
            std::sort( temp.begin(), temp.end() );
            temp.erase( std::unique( temp.begin(), temp.end() ), temp.end() );
            #pragma omp ordered
            {
                for (auto it = std::begin(temp); it != std::end(temp); ++it) {
                    out_stream << *it + 1 << " ";
                }
            }
            out_stream << std::endl;
            temp.clear();
        }
    }
    
    out_stream.close();
    std::cout << " ... done!" << std::endl;
    return 0;
}
