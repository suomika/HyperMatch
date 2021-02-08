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

#include "kahypar/definitions.h"
#include "kahypar/io/hypergraph_io.h"
#include "kahypar/macros.h"

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
    
    std::list<int> temp = {};
    
    // decision boundary: From which size on we should remove pins (and how much)
    int maxDegree = 0;
    int number = hypergraph.initialNumEdges();
    if (number > 20000 && number < 1000000) {
        maxDegree = number / 5;
    } else if (number >= 1000000) {
        maxDegree = number / 100;
    } else {
        maxDegree = 20000;
    }
    
    // remove 'big pins' from hypergraph
    for (const HypernodeID& pin : hypergraph.nodes()) {
        if (hypergraph.nodeDegree(pin) > maxDegree) hypergraph.removeNode(pin);
    }
    
    // counting overlapping hyperedges to determine #edges in graph
    int overlapping_edges = 0;
    for (const HyperedgeID& he : hypergraph.edges()) {
        temp.clear();
        for (const HypernodeID& pin : hypergraph.pins(he)) {
            for (const HyperedgeID& he2 : hypergraph.incidentEdges(pin)) {
                if (he != he2) {
                    temp.push_back(he2);
                }
            }
        }
        temp.sort();
        temp.unique();
        overlapping_edges += temp.size();
    }
    
    // because overlapping_edges counts every edge two times,
    // we have to divide it by 2
    overlapping_edges = overlapping_edges / 2;
    
    // conversion works for unweighted hypergraphs and weighted hyperedges
    if (hypergraph.type() == HypergraphType::EdgeWeights) {
        out_stream << hypergraph.initialNumEdges() << " " << overlapping_edges << " 10" << std::endl;
        
        for (const HyperedgeID& he : hypergraph.edges()) {
            temp.clear();
            for (const HypernodeID& pin : hypergraph.pins(he)) {
                for (const HyperedgeID& he2 : hypergraph.incidentEdges(pin)) {
                    if (he != he2) {
                        temp.push_back(he2);
                    }
                }
            }
            temp.sort();
            temp.unique();
            out_stream << hypergraph.edgeWeight(he) << " ";
            for (auto const& i : temp) {
                out_stream << i + 1 << " ";
            }
            out_stream << std::endl;
        }
    } else {
        out_stream << hypergraph.initialNumEdges() << " " << overlapping_edges << std::endl;
        
        for (const HyperedgeID& he : hypergraph.edges()) {
            temp.clear();
            for (const HypernodeID& pin : hypergraph.pins(he)) {
                for (const HyperedgeID& he2 : hypergraph.incidentEdges(pin)) {
                    if (he != he2) {
                        temp.push_back(he2);
                    }
                }
            }
            temp.sort();
            temp.unique();
            for (auto const& i : temp) {
                out_stream << i + 1 << " ";
            }
            out_stream << std::endl;
        }
    }
    
    out_stream.close();
    std::cout << " ... done!" << std::endl;
    return 0;
}
