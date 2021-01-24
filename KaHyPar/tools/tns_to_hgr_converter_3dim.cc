/*******************************************************************************
 * This tool is used for a conversion of a file in a tensor format (.tns)
 * into a (unweighted) hypergraph format (.hgr) in Metis Format for 3-partite,
 * 3-uniform hypergraphs. After converting one can use the resulting .hgr file
 * to convert it into a .graph file.
 ******************************************************************************/

#include <fstream>
#include <iostream>

int main(int argc, char* argv[]) {
    std::string tensor_filename(argv[1]);
    std::string hgr_filename(tensor_filename + ".hgr");
    
    std::ifstream input_file(tensor_filename);
    if (!input_file.is_open()) { // check for successful opening
        std::cout << "Input file could not be opened! Terminating!" << std::endl;
        return 1;
    }
    std::ofstream output_file(hgr_filename); // open the output file
    if (!output_file.is_open()) { // check for successful opening
        std::cout << "Output file could not be opened! Terminating!" << std::endl;
        return 1;
    }
    
    // because tns files have no information about the number of
    // hyperedges and nodes per partition, we have to count (find) them first
    int num_hyperedges = 0;
    int n1 = 0;
    int n2 = 0;
    int n3 = 0;
    
    std::string line;
    while (std::getline(input_file, line))
        ++num_hyperedges;
    input_file.clear();
    input_file.seekg(0);
    
    // each column represents one partition in a d-partite, d-uniform hgr
    // the last column represents the weight of the tensor/hypergraph
    int col1;
    int col2;
    int col3;
    double weights;
    
    while(input_file >> col1 >> col2 >> col3 >> weights) {
        if (col1 > n1)
            n1 = col1;
        if (col2 > n2)
            n2 = col2;
        if (col3 > n3)
            n3 = col3;
    }
    input_file.clear();
    input_file.seekg(0);
    
    int num_nodes = n1 + n2 + n3;
    
    // beacuse tns files are always weighted, it's possible to create
    // a weightes hypergraph or an unweighted
    int o = atoi(argv[2]);
    if (o == 0) {
        output_file << num_hyperedges << " " << num_nodes << std::endl;
        while (input_file >> col1 >> col2 >> col3 >> weights) {
            output_file << col1 << " " << col2 + n1 << " " << col3 + n1 + n2 << std::endl;
        }
    } else if (o == 1) {
        output_file << num_hyperedges << " " << num_nodes << " 1" << std::endl;
        while (input_file >> col1 >> col2 >> col3 >> weights) {
            output_file << weights << " " << col1 << " " << col2 + n1 << " " << col3 + n1 + n2 << std::endl;
        }
    } else {
        std::cerr << "\n*************************************************\n"<< "Please specify if you want a weighted Hypergraph or not:\n - set argv[2] = 0 for unweighted \n - set argv[2] = 1 for weighted." << "\n*************************************************\n" << std::endl;
        return 1;
    }
    
    input_file.close();
    output_file.close();
    std::cout << "... Done!" << std::endl;
    return 0;
}