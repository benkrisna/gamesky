# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/benkrisna/Projects/game/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/benkrisna/Projects/game/build

# Include any dependencies generated for this target.
include WINDOW/CMakeFiles/WINDOW.dir/depend.make

# Include the progress variables for this target.
include WINDOW/CMakeFiles/WINDOW.dir/progress.make

# Include the compile flags for this target's objects.
include WINDOW/CMakeFiles/WINDOW.dir/flags.make

WINDOW/CMakeFiles/WINDOW.dir/window.cpp.o: WINDOW/CMakeFiles/WINDOW.dir/flags.make
WINDOW/CMakeFiles/WINDOW.dir/window.cpp.o: /home/benkrisna/Projects/game/src/WINDOW/window.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/benkrisna/Projects/game/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object WINDOW/CMakeFiles/WINDOW.dir/window.cpp.o"
	cd /home/benkrisna/Projects/game/build/WINDOW && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WINDOW.dir/window.cpp.o -c /home/benkrisna/Projects/game/src/WINDOW/window.cpp

WINDOW/CMakeFiles/WINDOW.dir/window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WINDOW.dir/window.cpp.i"
	cd /home/benkrisna/Projects/game/build/WINDOW && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/benkrisna/Projects/game/src/WINDOW/window.cpp > CMakeFiles/WINDOW.dir/window.cpp.i

WINDOW/CMakeFiles/WINDOW.dir/window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WINDOW.dir/window.cpp.s"
	cd /home/benkrisna/Projects/game/build/WINDOW && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/benkrisna/Projects/game/src/WINDOW/window.cpp -o CMakeFiles/WINDOW.dir/window.cpp.s

# Object files for target WINDOW
WINDOW_OBJECTS = \
"CMakeFiles/WINDOW.dir/window.cpp.o"

# External object files for target WINDOW
WINDOW_EXTERNAL_OBJECTS =

WINDOW/libWINDOW.a: WINDOW/CMakeFiles/WINDOW.dir/window.cpp.o
WINDOW/libWINDOW.a: WINDOW/CMakeFiles/WINDOW.dir/build.make
WINDOW/libWINDOW.a: WINDOW/CMakeFiles/WINDOW.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/benkrisna/Projects/game/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libWINDOW.a"
	cd /home/benkrisna/Projects/game/build/WINDOW && $(CMAKE_COMMAND) -P CMakeFiles/WINDOW.dir/cmake_clean_target.cmake
	cd /home/benkrisna/Projects/game/build/WINDOW && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/WINDOW.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
WINDOW/CMakeFiles/WINDOW.dir/build: WINDOW/libWINDOW.a

.PHONY : WINDOW/CMakeFiles/WINDOW.dir/build

WINDOW/CMakeFiles/WINDOW.dir/clean:
	cd /home/benkrisna/Projects/game/build/WINDOW && $(CMAKE_COMMAND) -P CMakeFiles/WINDOW.dir/cmake_clean.cmake
.PHONY : WINDOW/CMakeFiles/WINDOW.dir/clean

WINDOW/CMakeFiles/WINDOW.dir/depend:
	cd /home/benkrisna/Projects/game/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/benkrisna/Projects/game/src /home/benkrisna/Projects/game/src/WINDOW /home/benkrisna/Projects/game/build /home/benkrisna/Projects/game/build/WINDOW /home/benkrisna/Projects/game/build/WINDOW/CMakeFiles/WINDOW.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : WINDOW/CMakeFiles/WINDOW.dir/depend
