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
include external_tools/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/depend.make

# Include the progress variables for this target.
include external_tools/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/progress.make

# Include the compile flags for this target's objects.
include external_tools/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/flags.make

external_tools/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: external_tools/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/flags.make
external_tools/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: ../external_tools/googletest/googletest/src/gtest_main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object external_tools/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/external_tools/googletest/googlemock/gtest && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.o -c /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/external_tools/googletest/googletest/src/gtest_main.cc

external_tools/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest_main.dir/src/gtest_main.cc.i"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/external_tools/googletest/googlemock/gtest && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/external_tools/googletest/googletest/src/gtest_main.cc > CMakeFiles/gtest_main.dir/src/gtest_main.cc.i

external_tools/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest_main.dir/src/gtest_main.cc.s"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/external_tools/googletest/googlemock/gtest && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/external_tools/googletest/googletest/src/gtest_main.cc -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.s

# Object files for target gtest_main
gtest_main_OBJECTS = \
"CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"

# External object files for target gtest_main
gtest_main_EXTERNAL_OBJECTS =

external_tools/googletest/googlemock/gtest/libgtest_main.a: external_tools/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o
external_tools/googletest/googlemock/gtest/libgtest_main.a: external_tools/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/build.make
external_tools/googletest/googlemock/gtest/libgtest_main.a: external_tools/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libgtest_main.a"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/external_tools/googletest/googlemock/gtest && $(CMAKE_COMMAND) -P CMakeFiles/gtest_main.dir/cmake_clean_target.cmake
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/external_tools/googletest/googlemock/gtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest_main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external_tools/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/build: external_tools/googletest/googlemock/gtest/libgtest_main.a

.PHONY : external_tools/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/build

external_tools/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/clean:
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/external_tools/googletest/googlemock/gtest && $(CMAKE_COMMAND) -P CMakeFiles/gtest_main.dir/cmake_clean.cmake
.PHONY : external_tools/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/clean

external_tools/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/depend:
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/external_tools/googletest/googletest /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/external_tools/googletest/googlemock/gtest /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/external_tools/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external_tools/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/depend
