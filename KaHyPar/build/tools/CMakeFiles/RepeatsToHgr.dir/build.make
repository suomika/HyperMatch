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
include tools/CMakeFiles/RepeatsToHgr.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/RepeatsToHgr.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/RepeatsToHgr.dir/flags.make

tools/CMakeFiles/RepeatsToHgr.dir/repeats_to_hgr_converter.cc.o: tools/CMakeFiles/RepeatsToHgr.dir/flags.make
tools/CMakeFiles/RepeatsToHgr.dir/repeats_to_hgr_converter.cc.o: ../tools/repeats_to_hgr_converter.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/CMakeFiles/RepeatsToHgr.dir/repeats_to_hgr_converter.cc.o"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RepeatsToHgr.dir/repeats_to_hgr_converter.cc.o -c /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/tools/repeats_to_hgr_converter.cc

tools/CMakeFiles/RepeatsToHgr.dir/repeats_to_hgr_converter.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RepeatsToHgr.dir/repeats_to_hgr_converter.cc.i"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/tools/repeats_to_hgr_converter.cc > CMakeFiles/RepeatsToHgr.dir/repeats_to_hgr_converter.cc.i

tools/CMakeFiles/RepeatsToHgr.dir/repeats_to_hgr_converter.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RepeatsToHgr.dir/repeats_to_hgr_converter.cc.s"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/tools/repeats_to_hgr_converter.cc -o CMakeFiles/RepeatsToHgr.dir/repeats_to_hgr_converter.cc.s

# Object files for target RepeatsToHgr
RepeatsToHgr_OBJECTS = \
"CMakeFiles/RepeatsToHgr.dir/repeats_to_hgr_converter.cc.o"

# External object files for target RepeatsToHgr
RepeatsToHgr_EXTERNAL_OBJECTS =

tools/RepeatsToHgr: tools/CMakeFiles/RepeatsToHgr.dir/repeats_to_hgr_converter.cc.o
tools/RepeatsToHgr: tools/CMakeFiles/RepeatsToHgr.dir/build.make
tools/RepeatsToHgr: tools/CMakeFiles/RepeatsToHgr.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable RepeatsToHgr"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RepeatsToHgr.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/RepeatsToHgr.dir/build: tools/RepeatsToHgr

.PHONY : tools/CMakeFiles/RepeatsToHgr.dir/build

tools/CMakeFiles/RepeatsToHgr.dir/clean:
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tools && $(CMAKE_COMMAND) -P CMakeFiles/RepeatsToHgr.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/RepeatsToHgr.dir/clean

tools/CMakeFiles/RepeatsToHgr.dir/depend:
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/tools /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tools /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tools/CMakeFiles/RepeatsToHgr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/RepeatsToHgr.dir/depend
