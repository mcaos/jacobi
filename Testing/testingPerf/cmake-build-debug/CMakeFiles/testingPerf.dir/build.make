# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_SOURCE_DIR = /home/caos/Master/SPM/SPM_Jacobi/testingPerf

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/caos/Master/SPM/SPM_Jacobi/testingPerf/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/testingPerf.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testingPerf.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testingPerf.dir/flags.make

CMakeFiles/testingPerf.dir/main.cpp.o: CMakeFiles/testingPerf.dir/flags.make
CMakeFiles/testingPerf.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/caos/Master/SPM/SPM_Jacobi/testingPerf/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/testingPerf.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testingPerf.dir/main.cpp.o -c /home/caos/Master/SPM/SPM_Jacobi/testingPerf/main.cpp

CMakeFiles/testingPerf.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testingPerf.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/caos/Master/SPM/SPM_Jacobi/testingPerf/main.cpp > CMakeFiles/testingPerf.dir/main.cpp.i

CMakeFiles/testingPerf.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testingPerf.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/caos/Master/SPM/SPM_Jacobi/testingPerf/main.cpp -o CMakeFiles/testingPerf.dir/main.cpp.s

CMakeFiles/testingPerf.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/testingPerf.dir/main.cpp.o.requires

CMakeFiles/testingPerf.dir/main.cpp.o.provides: CMakeFiles/testingPerf.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/testingPerf.dir/build.make CMakeFiles/testingPerf.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/testingPerf.dir/main.cpp.o.provides

CMakeFiles/testingPerf.dir/main.cpp.o.provides.build: CMakeFiles/testingPerf.dir/main.cpp.o


# Object files for target testingPerf
testingPerf_OBJECTS = \
"CMakeFiles/testingPerf.dir/main.cpp.o"

# External object files for target testingPerf
testingPerf_EXTERNAL_OBJECTS =

testingPerf: CMakeFiles/testingPerf.dir/main.cpp.o
testingPerf: CMakeFiles/testingPerf.dir/build.make
testingPerf: CMakeFiles/testingPerf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/caos/Master/SPM/SPM_Jacobi/testingPerf/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testingPerf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testingPerf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testingPerf.dir/build: testingPerf

.PHONY : CMakeFiles/testingPerf.dir/build

CMakeFiles/testingPerf.dir/requires: CMakeFiles/testingPerf.dir/main.cpp.o.requires

.PHONY : CMakeFiles/testingPerf.dir/requires

CMakeFiles/testingPerf.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testingPerf.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testingPerf.dir/clean

CMakeFiles/testingPerf.dir/depend:
	cd /home/caos/Master/SPM/SPM_Jacobi/testingPerf/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/caos/Master/SPM/SPM_Jacobi/testingPerf /home/caos/Master/SPM/SPM_Jacobi/testingPerf /home/caos/Master/SPM/SPM_Jacobi/testingPerf/cmake-build-debug /home/caos/Master/SPM/SPM_Jacobi/testingPerf/cmake-build-debug /home/caos/Master/SPM/SPM_Jacobi/testingPerf/cmake-build-debug/CMakeFiles/testingPerf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testingPerf.dir/depend
