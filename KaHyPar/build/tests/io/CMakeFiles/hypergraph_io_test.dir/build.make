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
include tests/io/CMakeFiles/hypergraph_io_test.dir/depend.make

# Include the progress variables for this target.
include tests/io/CMakeFiles/hypergraph_io_test.dir/progress.make

# Include the compile flags for this target's objects.
include tests/io/CMakeFiles/hypergraph_io_test.dir/flags.make

tests/io/CMakeFiles/hypergraph_io_test.dir/hypergraph_io_test.cc.o: tests/io/CMakeFiles/hypergraph_io_test.dir/flags.make
tests/io/CMakeFiles/hypergraph_io_test.dir/hypergraph_io_test.cc.o: ../tests/io/hypergraph_io_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/io/CMakeFiles/hypergraph_io_test.dir/hypergraph_io_test.cc.o"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/io && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hypergraph_io_test.dir/hypergraph_io_test.cc.o -c /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/tests/io/hypergraph_io_test.cc

tests/io/CMakeFiles/hypergraph_io_test.dir/hypergraph_io_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hypergraph_io_test.dir/hypergraph_io_test.cc.i"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/io && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/tests/io/hypergraph_io_test.cc > CMakeFiles/hypergraph_io_test.dir/hypergraph_io_test.cc.i

tests/io/CMakeFiles/hypergraph_io_test.dir/hypergraph_io_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hypergraph_io_test.dir/hypergraph_io_test.cc.s"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/io && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/tests/io/hypergraph_io_test.cc -o CMakeFiles/hypergraph_io_test.dir/hypergraph_io_test.cc.s

# Object files for target hypergraph_io_test
hypergraph_io_test_OBJECTS = \
"CMakeFiles/hypergraph_io_test.dir/hypergraph_io_test.cc.o"

# External object files for target hypergraph_io_test
hypergraph_io_test_EXTERNAL_OBJECTS =

tests/io/hypergraph_io_test: tests/io/CMakeFiles/hypergraph_io_test.dir/hypergraph_io_test.cc.o
tests/io/hypergraph_io_test: tests/io/CMakeFiles/hypergraph_io_test.dir/build.make
tests/io/hypergraph_io_test: external_tools/googletest/googlemock/gtest/libgtest.a
tests/io/hypergraph_io_test: external_tools/googletest/googlemock/gtest/libgtest_main.a
tests/io/hypergraph_io_test: external_tools/googletest/googlemock/gtest/libgtest.a
tests/io/hypergraph_io_test: tests/io/CMakeFiles/hypergraph_io_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable hypergraph_io_test"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/io && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hypergraph_io_test.dir/link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Running hypergraph_io_test"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/io && /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/io/hypergraph_io_test

# Rule to build all files generated by this target.
tests/io/CMakeFiles/hypergraph_io_test.dir/build: tests/io/hypergraph_io_test

.PHONY : tests/io/CMakeFiles/hypergraph_io_test.dir/build

tests/io/CMakeFiles/hypergraph_io_test.dir/clean:
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/io && $(CMAKE_COMMAND) -P CMakeFiles/hypergraph_io_test.dir/cmake_clean.cmake
.PHONY : tests/io/CMakeFiles/hypergraph_io_test.dir/clean

tests/io/CMakeFiles/hypergraph_io_test.dir/depend:
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/tests/io /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/io /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/io/CMakeFiles/hypergraph_io_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/io/CMakeFiles/hypergraph_io_test.dir/depend

