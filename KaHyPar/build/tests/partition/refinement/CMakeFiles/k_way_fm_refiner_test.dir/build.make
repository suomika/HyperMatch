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
include tests/partition/refinement/CMakeFiles/k_way_fm_refiner_test.dir/depend.make

# Include the progress variables for this target.
include tests/partition/refinement/CMakeFiles/k_way_fm_refiner_test.dir/progress.make

# Include the compile flags for this target's objects.
include tests/partition/refinement/CMakeFiles/k_way_fm_refiner_test.dir/flags.make

tests/partition/refinement/CMakeFiles/k_way_fm_refiner_test.dir/k_way_fm_refiner_test.cc.o: tests/partition/refinement/CMakeFiles/k_way_fm_refiner_test.dir/flags.make
tests/partition/refinement/CMakeFiles/k_way_fm_refiner_test.dir/k_way_fm_refiner_test.cc.o: ../tests/partition/refinement/k_way_fm_refiner_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/partition/refinement/CMakeFiles/k_way_fm_refiner_test.dir/k_way_fm_refiner_test.cc.o"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/partition/refinement && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/k_way_fm_refiner_test.dir/k_way_fm_refiner_test.cc.o -c /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/tests/partition/refinement/k_way_fm_refiner_test.cc

tests/partition/refinement/CMakeFiles/k_way_fm_refiner_test.dir/k_way_fm_refiner_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/k_way_fm_refiner_test.dir/k_way_fm_refiner_test.cc.i"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/partition/refinement && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/tests/partition/refinement/k_way_fm_refiner_test.cc > CMakeFiles/k_way_fm_refiner_test.dir/k_way_fm_refiner_test.cc.i

tests/partition/refinement/CMakeFiles/k_way_fm_refiner_test.dir/k_way_fm_refiner_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/k_way_fm_refiner_test.dir/k_way_fm_refiner_test.cc.s"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/partition/refinement && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/tests/partition/refinement/k_way_fm_refiner_test.cc -o CMakeFiles/k_way_fm_refiner_test.dir/k_way_fm_refiner_test.cc.s

# Object files for target k_way_fm_refiner_test
k_way_fm_refiner_test_OBJECTS = \
"CMakeFiles/k_way_fm_refiner_test.dir/k_way_fm_refiner_test.cc.o"

# External object files for target k_way_fm_refiner_test
k_way_fm_refiner_test_EXTERNAL_OBJECTS =

tests/partition/refinement/k_way_fm_refiner_test: tests/partition/refinement/CMakeFiles/k_way_fm_refiner_test.dir/k_way_fm_refiner_test.cc.o
tests/partition/refinement/k_way_fm_refiner_test: tests/partition/refinement/CMakeFiles/k_way_fm_refiner_test.dir/build.make
tests/partition/refinement/k_way_fm_refiner_test: external_tools/googletest/googlemock/gtest/libgtest.a
tests/partition/refinement/k_way_fm_refiner_test: external_tools/googletest/googlemock/gtest/libgtest_main.a
tests/partition/refinement/k_way_fm_refiner_test: external_tools/googletest/googlemock/gtest/libgtest.a
tests/partition/refinement/k_way_fm_refiner_test: tests/partition/refinement/CMakeFiles/k_way_fm_refiner_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable k_way_fm_refiner_test"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/partition/refinement && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/k_way_fm_refiner_test.dir/link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Running k_way_fm_refiner_test"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/partition/refinement && /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/partition/refinement/k_way_fm_refiner_test

# Rule to build all files generated by this target.
tests/partition/refinement/CMakeFiles/k_way_fm_refiner_test.dir/build: tests/partition/refinement/k_way_fm_refiner_test

.PHONY : tests/partition/refinement/CMakeFiles/k_way_fm_refiner_test.dir/build

tests/partition/refinement/CMakeFiles/k_way_fm_refiner_test.dir/clean:
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/partition/refinement && $(CMAKE_COMMAND) -P CMakeFiles/k_way_fm_refiner_test.dir/cmake_clean.cmake
.PHONY : tests/partition/refinement/CMakeFiles/k_way_fm_refiner_test.dir/clean

tests/partition/refinement/CMakeFiles/k_way_fm_refiner_test.dir/depend:
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/tests/partition/refinement /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/partition/refinement /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tests/partition/refinement/CMakeFiles/k_way_fm_refiner_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/partition/refinement/CMakeFiles/k_way_fm_refiner_test.dir/depend
