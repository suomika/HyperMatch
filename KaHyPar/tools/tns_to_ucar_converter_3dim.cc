/*******************************************************************************
 * This tool is used for a conversion of a file in a tensor format (.tns)
 * into a unweighted hypergraph format used by Uçar et al. for a
 * 3-partite, 3-uniform Hypergraph
 ******************************************************************************/

#include <fstream>
#include <iostream>

int main(int argc, char* argv[]) {
    std::string tensor_filename(argv[1]);
    std::string ucar_filename(tensor_filename + ".txt");
    
    std::ifstream input_file(tensor_filename);
    if (!input_file.is_open()) { // check for successful opening
        std::cout << "Input file could not be opened! Terminating!" << std::endl;
        return 1;
    }
    std::ofstream output_file(ucar_filename); // open the output file
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
    
    // because the second line in a ucar file contains information about
    // the number of vertices in the partition we have to write them too
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
    
    output_file << num_hyperedges << " " << 3 << std::endl;
    output_file << n1 << " " << n2 << " " << n3 << std::endl;
    while (input_file >> col1 >> col2 >> col3 >> weights) {
        output_file << col1 - 1 << " " << col2 - 1 << " " << col3 - 1 << std::endl;
    }
    
    input_file.close();
    output_file.close();
    std::cout << "... Done!" << std::endl;
    return 0;
}

