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
include tests/partition/initial_partitioning/CMakeFiles/initial_partitioner_base_test.dir/depend.make

# Include the progress variables for this target.
include tests/partition/initial_partitioning/CMakeFiles/initial_partitioner_base_test.dir/progress.make

# Include the compile flags for this target's objects.
include tests/partition/initial_partitioning/CMakeFiles/initial_partitioner_base_test.dir/flags.make

tests/partition/initial_partitioning/CMakeFiles/initial_partitioner_base_test.dir/initial_partitioner_base_test.cc.o: tests/partition/initial_partitioning/CMakeFiles/initial_partitioner_base_test.dir/flags.make
tests/partition/initial_partitioning/CMakeFiles/initial_partitioner_base_test.dir/initial_partitioner_base_test.cc.o: ../tests/partition/initial_partitioning/initial_partitioner_base_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/partition/initial_partitioning/CMakeFiles/initial_partitioner_base_test.dir/initial_partitioner_base_test.cc.o"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/partition/initial_partitioning && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/initial_partitioner_base_test.dir/initial_partitioner_base_test.cc.o -c /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/tests/partition/initial_partitioning/initial_partitioner_base_test.cc

tests/partition/initial_partitioning/CMakeFiles/initial_partitioner_base_test.dir/initial_partitioner_base_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/initial_partitioner_base_test.dir/initial_partitioner_base_test.cc.i"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/partition/initial_partitioning && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/tests/partition/initial_partitioning/initial_partitioner_base_test.cc > CMakeFiles/initial_partitioner_base_test.dir/initial_partitioner_base_test.cc.i

tests/partition/initial_partitioning/CMakeFiles/initial_partitioner_base_test.dir/initial_partitioner_base_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/initial_partitioner_base_test.dir/initial_partitioner_base_test.cc.s"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/partition/initial_partitioning && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/tests/partition/initial_partitioning/initial_partitioner_base_test.cc -o CMakeFiles/initial_partitioner_base_test.dir/initial_partitioner_base_test.cc.s

# Object files for target initial_partitioner_base_test
initial_partitioner_base_test_OBJECTS = \
"CMakeFiles/initial_partitioner_base_test.dir/initial_partitioner_base_test.cc.o"

# External object files for target initial_partitioner_base_test
initial_partitioner_base_test_EXTERNAL_OBJECTS =

tests/partition/initial_partitioning/initial_partitioner_base_test: tests/partition/initial_partitioning/CMakeFiles/initial_partitioner_base_test.dir/initial_partitioner_base_test.cc.o
tests/partition/initial_partitioning/initial_partitioner_base_test: tests/partition/initial_partitioning/CMakeFiles/initial_partitioner_base_test.dir/build.make
tests/partition/initial_partitioning/initial_partitioner_base_test: external_tools/googletest/googlemock/gtest/libgtest.a
tests/partition/initial_partitioning/initial_partitioner_base_test: external_tools/googletest/googlemock/gtest/libgtest_main.a
tests/partition/initial_partitioning/initial_partitioner_base_test: external_tools/googletest/googlemock/gtest/libgtest.a
tests/partition/initial_partitioning/initial_partitioner_base_test: tests/partition/initial_partitioning/CMakeFiles/initial_partitioner_base_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable initial_partitioner_base_test"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/partition/initial_partitioning && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/initial_partitioner_base_test.dir/link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Running initial_partitioner_base_test"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/partition/initial_partitioning && /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/partition/initial_partitioning/initial_partitioner_base_test

# Rule to build all files generated by this target.
tests/partition/initial_partitioning/CMakeFiles/initial_partitioner_base_test.dir/build: tests/partition/initial_partitioning/initial_partitioner_base_test

.PHONY : tests/partition/initial_partitioning/CMakeFiles/initial_partitioner_base_test.dir/build

tests/partition/initial_partitioning/CMakeFiles/initial_partitioner_base_test.dir/clean:
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/partition/initial_partitioning && $(CMAKE_COMMAND) -P CMakeFiles/initial_partitioner_base_test.dir/cmake_clean.cmake
.PHONY : tests/partition/initial_partitioning/CMakeFiles/initial_partitioner_base_test.dir/clean

tests/partition/initial_partitioning/CMakeFiles/initial_partitioner_base_test.dir/depend:
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/tests/partition/initial_partitioning /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/partition/initial_partitioning /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/partition/initial_partitioning/CMakeFiles/initial_partitioner_base_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/partition/initial_partitioning/CMakeFiles/initial_partitioner_base_test.dir/depend

