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

# Utility rule file for install.library.

# Include the progress variables for this target.
include lib/CMakeFiles/install.library.dir/progress.make

lib/CMakeFiles/install.library:
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/lib && /usr/local/Cellar/cmake/3.19.1/bin/cmake -DBUILD_TYPE=RELEASE -P /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/cmake_install.cmake

install.library: lib/CMakeFiles/install.library
install.library: lib/CMakeFiles/install.library.dir/build.make

.PHONY : install.library

# Rule to build all files generated by this target.
lib/CMakeFiles/install.library.dir/build: install.library

.PHONY : lib/CMakeFiles/install.library.dir/build

lib/CMakeFiles/install.library.dir/clean:
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/install.library.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/install.library.dir/clean

lib/CMakeFiles/install.library.dir/depend:
	cd /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/lib /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/lib /Users/Mika/desktop/5_Semester/FP/HyperMatch/KaHyPar/build/lib/CMakeFiles/install.library.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/install.library.dir/depend

