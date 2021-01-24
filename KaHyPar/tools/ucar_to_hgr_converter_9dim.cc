/*******************************************************************************
 * This tool is used for a conversion of a file in a format used by
 * Uçar et al. into a .hgr File in Metis Format for 9-partite, 9-uniform
 * hypergraphs. After converting one can use the resulting .hgr file
 * to convert it into a .graph file.
 ******************************************************************************/

#include <fstream>
#include <iostream>

int main(int argc, char* argv[]) {
    std::string ucar_filename(argv[1]);
    std::string hgr_filename(ucar_filename + ".hgr");
    
    std::ifstream input_file(ucar_filename);
    if (!input_file.is_open()) { // check for successful opening
        std::cout << "Input file could not be opened! Terminating!" << std::endl;
        return 1;
    }
    std::ofstream output_file(hgr_filename); // open the output file
    if (!output_file.is_open()) { // check for successful opening
        std::cout << "Output file could not be opened! Terminating!" << std::endl;
        return 1;
    }
    
    // the first line should give information about the number
    // of hyperedges and nodes of the hypergraph
    int npp;
    int num_hyperedges;
    int num_partitions;
    input_file >> npp >> num_hyperedges >> num_partitions;
    output_file << num_hyperedges << " " << num_partitions * npp << std::endl;
    
    // each column represents one partition in a d-partite, d-uniform hgr
    int col1;
    int col2;
    int col3;
    int col4;
    int col5;
    int col6;
    int col7;
    int col8;
    int col9;
    while (input_file >> col1 >> col2 >> col3 >> col4 >> col5 >> col6 >> col7 >> col8 >> col9) {
        output_file << col1 + 1 << " " << col2 + npp + 1 << " " << col3 + 2*npp + 1 << " " << col4 + 3*npp + 1 << " " << col5 + 4*npp + 1 << " " << col6 + 5*npp + 1 << " " << col7 + 6*npp + 1 << " " << col8 + 7*npp  + 1 << " " << col9 + 8*npp + 1 << std::endl;
    }
    
    input_file.close();
    output_file.close();
    std::cout << "Done!" << std::endl;
    return 0;
}
