# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/clion/bin/cmake/bin/cmake

# The command to remove a file.
RM = /opt/clion/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/caos/Master/SPM/SPM_Jacobi/JacobiSeq

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/caos/Master/SPM/SPM_Jacobi/JacobiSeq/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/JacobiSeq.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/JacobiSeq.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/JacobiSeq.dir/flags.make

CMakeFiles/JacobiSeq.dir/main.cpp.o: CMakeFiles/JacobiSeq.dir/flags.make
CMakeFiles/JacobiSeq.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/caos/Master/SPM/SPM_Jacobi/JacobiSeq/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/JacobiSeq.dir/main.cpp.o"
	/usr/lib/hardening-wrapper/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/JacobiSeq.dir/main.cpp.o -c /home/caos/Master/SPM/SPM_Jacobi/JacobiSeq/main.cpp

CMakeFiles/JacobiSeq.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/JacobiSeq.dir/main.cpp.i"
	/usr/lib/hardening-wrapper/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/caos/Master/SPM/SPM_Jacobi/JacobiSeq/main.cpp > CMakeFiles/JacobiSeq.dir/main.cpp.i

CMakeFiles/JacobiSeq.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/JacobiSeq.dir/main.cpp.s"
	/usr/lib/hardening-wrapper/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/caos/Master/SPM/SPM_Jacobi/JacobiSeq/main.cpp -o CMakeFiles/JacobiSeq.dir/main.cpp.s

CMakeFiles/JacobiSeq.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/JacobiSeq.dir/main.cpp.o.requires

CMakeFiles/JacobiSeq.dir/main.cpp.o.provides: CMakeFiles/JacobiSeq.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/JacobiSeq.dir/build.make CMakeFiles/JacobiSeq.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/JacobiSeq.dir/main.cpp.o.provides

CMakeFiles/JacobiSeq.dir/main.cpp.o.provides.build: CMakeFiles/JacobiSeq.dir/main.cpp.o


# Object files for target JacobiSeq
JacobiSeq_OBJECTS = \
"CMakeFiles/JacobiSeq.dir/main.cpp.o"

# External object files for target JacobiSeq
JacobiSeq_EXTERNAL_OBJECTS =

JacobiSeq: CMakeFiles/JacobiSeq.dir/main.cpp.o
JacobiSeq: CMakeFiles/JacobiSeq.dir/build.make
JacobiSeq: CMakeFiles/JacobiSeq.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/caos/Master/SPM/SPM_Jacobi/JacobiSeq/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable JacobiSeq"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/JacobiSeq.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/JacobiSeq.dir/build: JacobiSeq

.PHONY : CMakeFiles/JacobiSeq.dir/build

CMakeFiles/JacobiSeq.dir/requires: CMakeFiles/JacobiSeq.dir/main.cpp.o.requires

.PHONY : CMakeFiles/JacobiSeq.dir/requires

CMakeFiles/JacobiSeq.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/JacobiSeq.dir/cmake_clean.cmake
.PHONY : CMakeFiles/JacobiSeq.dir/clean

CMakeFiles/JacobiSeq.dir/depend:
	cd /home/caos/Master/SPM/SPM_Jacobi/JacobiSeq/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/caos/Master/SPM/SPM_Jacobi/JacobiSeq /home/caos/Master/SPM/SPM_Jacobi/JacobiSeq /home/caos/Master/SPM/SPM_Jacobi/JacobiSeq/cmake-build-debug /home/caos/Master/SPM/SPM_Jacobi/JacobiSeq/cmake-build-debug /home/caos/Master/SPM/SPM_Jacobi/JacobiSeq/cmake-build-debug/CMakeFiles/JacobiSeq.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/JacobiSeq.dir/depend

