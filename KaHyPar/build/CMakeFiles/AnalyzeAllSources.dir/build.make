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

# Utility rule file for AnalyzeAllSources.

# Include the progress variables for this target.
include CMakeFiles/AnalyzeAllSources.dir/progress.make

CMakeFiles/AnalyzeAllSources:
	perl /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/codestyle/analyze-source.pl -aw

AnalyzeAllSources: CMakeFiles/AnalyzeAllSources
AnalyzeAllSources: CMakeFiles/AnalyzeAllSources.dir/build.make

.PHONY : AnalyzeAllSources

# Rule to build all files generated by this target.
CMakeFiles/AnalyzeAllSources.dir/build: AnalyzeAllSources

.PHONY : CMakeFiles/AnalyzeAllSources.dir/build

CMakeFiles/AnalyzeAllSources.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/AnalyzeAllSources.dir/cmake_clean.cmake
.PHONY : CMakeFiles/AnalyzeAllSources.dir/clean

CMakeFiles/AnalyzeAllSources.dir/depend:
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/CMakeFiles/AnalyzeAllSources.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/AnalyzeAllSources.dir/depend

