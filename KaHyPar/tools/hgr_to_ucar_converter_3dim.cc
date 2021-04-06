/*******************************************************************************
 * This tool is used for a conversion of a .hgr File in Metis Format for
 * 3-partite hypergraphs in a format used by Uçar et al.
 ******************************************************************************/

#include <fstream>
#include <iostream>

int main(int argc, char* argv[]) {
    std::string hgr_filename(argv[1]);
    std::string ucar_filename(hgr_filename + ".txt");
    
    std::ifstream input_file(hgr_filename);
    if (!input_file.is_open()) { // check for successful opening
        std::cout << "Input file could not be opened! Terminating!" << std::endl;
        return 1;
    }
    std::ofstream output_file(ucar_filename); // open the output file
    if (!output_file.is_open()) { // check for successful opening
        std::cout << "Output file could not be opened! Terminating!" << std::endl;
        return 1;
    }
    
    // because hgr files have no information about the number of
    // nodes per partition, we have to count (find) them first
    int num_hyperedges;
    int num_partitions = 3;
    int n1 = 0;
    int n2 = 0;
    int n3 = 0;
    
    // each column represents one partition in a d-partite, d-uniform hgr
    // the last column represents the weight of the tensor/hypergraph
    int col1;
    int col2;
    int col3;
    
    while (input_file >> col1 >> col2) {
        num_hyperedges = col1;
        break;
    }
    
    while (input_file >> col1 >> col2 >> col3) {
        if (col1 > n1)
            n1 = col1;
        if (col2 > n2)
            n2 = col2;
        if (col3 > n3)
            n3 = col3;
    }
    input_file.clear();
    input_file.seekg(0);
    std::string line;
    while (std::getline(input_file, line))
        break;
    
    output_file << num_hyperedges << " " << num_partitions << std::endl;
    output_file << n1 << " " << n2-n1 << " " << n3-n2 << std::endl;
    while (input_file >> col1 >> col2 >> col3) {
        output_file << col1 - 1 << " " << col2 - 1 - n1 << " " << col3 - 1 - n2 << std::endl;
    }
    
    input_file.close();
    output_file.close();
    std::cout << "... Done!" << std::endl;
    return 0;
}
