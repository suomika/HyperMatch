# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.19.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.19.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build

# Include any dependencies generated for this target.
include tools/CMakeFiles/HgrToGraph.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/HgrToGraph.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/HgrToGraph.dir/flags.make

tools/CMakeFiles/HgrToGraph.dir/hgr_to_graph_converter.cc.o: tools/CMakeFiles/HgrToGraph.dir/flags.make
tools/CMakeFiles/HgrToGraph.dir/hgr_to_graph_converter.cc.o: ../tools/hgr_to_graph_converter.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/CMakeFiles/HgrToGraph.dir/hgr_to_graph_converter.cc.o"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HgrToGraph.dir/hgr_to_graph_converter.cc.o -c /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/tools/hgr_to_graph_converter.cc

tools/CMakeFiles/HgrToGraph.dir/hgr_to_graph_converter.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HgrToGraph.dir/hgr_to_graph_converter.cc.i"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/tools/hgr_to_graph_converter.cc > CMakeFiles/HgrToGraph.dir/hgr_to_graph_converter.cc.i

tools/CMakeFiles/HgrToGraph.dir/hgr_to_graph_converter.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HgrToGraph.dir/hgr_to_graph_converter.cc.s"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/tools/hgr_to_graph_converter.cc -o CMakeFiles/HgrToGraph.dir/hgr_to_graph_converter.cc.s

# Object files for target HgrToGraph
HgrToGraph_OBJECTS = \
"CMakeFiles/HgrToGraph.dir/hgr_to_graph_converter.cc.o"

# External object files for target HgrToGraph
HgrToGraph_EXTERNAL_OBJECTS =

tools/HgrToGraph: tools/CMakeFiles/HgrToGraph.dir/hgr_to_graph_converter.cc.o
tools/HgrToGraph: tools/CMakeFiles/HgrToGraph.dir/build.make
tools/HgrToGraph: tools/CMakeFiles/HgrToGraph.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable HgrToGraph"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HgrToGraph.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/HgrToGraph.dir/build: tools/HgrToGraph

.PHONY : tools/CMakeFiles/HgrToGraph.dir/build

tools/CMakeFiles/HgrToGraph.dir/clean:
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tools && $(CMAKE_COMMAND) -P CMakeFiles/HgrToGraph.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/HgrToGraph.dir/clean

tools/CMakeFiles/HgrToGraph.dir/depend:
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/tools /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tools /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tools/CMakeFiles/HgrToGraph.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/HgrToGraph.dir/depend

