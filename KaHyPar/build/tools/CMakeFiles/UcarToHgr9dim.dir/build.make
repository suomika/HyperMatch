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
include tools/CMakeFiles/UcarToHgr9dim.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/UcarToHgr9dim.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/UcarToHgr9dim.dir/flags.make

tools/CMakeFiles/UcarToHgr9dim.dir/ucar_to_hgr_converter_9dim.cc.o: tools/CMakeFiles/UcarToHgr9dim.dir/flags.make
tools/CMakeFiles/UcarToHgr9dim.dir/ucar_to_hgr_converter_9dim.cc.o: ../tools/ucar_to_hgr_converter_9dim.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/CMakeFiles/UcarToHgr9dim.dir/ucar_to_hgr_converter_9dim.cc.o"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/UcarToHgr9dim.dir/ucar_to_hgr_converter_9dim.cc.o -c /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/tools/ucar_to_hgr_converter_9dim.cc

tools/CMakeFiles/UcarToHgr9dim.dir/ucar_to_hgr_converter_9dim.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/UcarToHgr9dim.dir/ucar_to_hgr_converter_9dim.cc.i"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/tools/ucar_to_hgr_converter_9dim.cc > CMakeFiles/UcarToHgr9dim.dir/ucar_to_hgr_converter_9dim.cc.i

tools/CMakeFiles/UcarToHgr9dim.dir/ucar_to_hgr_converter_9dim.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/UcarToHgr9dim.dir/ucar_to_hgr_converter_9dim.cc.s"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/tools/ucar_to_hgr_converter_9dim.cc -o CMakeFiles/UcarToHgr9dim.dir/ucar_to_hgr_converter_9dim.cc.s

# Object files for target UcarToHgr9dim
UcarToHgr9dim_OBJECTS = \
"CMakeFiles/UcarToHgr9dim.dir/ucar_to_hgr_converter_9dim.cc.o"

# External object files for target UcarToHgr9dim
UcarToHgr9dim_EXTERNAL_OBJECTS =

tools/UcarToHgr9dim: tools/CMakeFiles/UcarToHgr9dim.dir/ucar_to_hgr_converter_9dim.cc.o
tools/UcarToHgr9dim: tools/CMakeFiles/UcarToHgr9dim.dir/build.make
tools/UcarToHgr9dim: tools/CMakeFiles/UcarToHgr9dim.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable UcarToHgr9dim"
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/UcarToHgr9dim.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/UcarToHgr9dim.dir/build: tools/UcarToHgr9dim

.PHONY : tools/CMakeFiles/UcarToHgr9dim.dir/build

tools/CMakeFiles/UcarToHgr9dim.dir/clean:
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tools && $(CMAKE_COMMAND) -P CMakeFiles/UcarToHgr9dim.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/UcarToHgr9dim.dir/clean

tools/CMakeFiles/UcarToHgr9dim.dir/depend:
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/tools /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tools /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/tools/CMakeFiles/UcarToHgr9dim.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/UcarToHgr9dim.dir/depend

