# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /home/wolf/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/182.4129.51/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/wolf/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/182.4129.51/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wolf/CLionProjects/PrintCaddy

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wolf/CLionProjects/PrintCaddy/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/PrintCaddy.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/PrintCaddy.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PrintCaddy.dir/flags.make

CMakeFiles/PrintCaddy.dir/DeviceDiscover.cpp.o: CMakeFiles/PrintCaddy.dir/flags.make
CMakeFiles/PrintCaddy.dir/DeviceDiscover.cpp.o: ../DeviceDiscover.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wolf/CLionProjects/PrintCaddy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/PrintCaddy.dir/DeviceDiscover.cpp.o"
	/usr/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PrintCaddy.dir/DeviceDiscover.cpp.o -c /home/wolf/CLionProjects/PrintCaddy/DeviceDiscover.cpp

CMakeFiles/PrintCaddy.dir/DeviceDiscover.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PrintCaddy.dir/DeviceDiscover.cpp.i"
	/usr/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wolf/CLionProjects/PrintCaddy/DeviceDiscover.cpp > CMakeFiles/PrintCaddy.dir/DeviceDiscover.cpp.i

CMakeFiles/PrintCaddy.dir/DeviceDiscover.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PrintCaddy.dir/DeviceDiscover.cpp.s"
	/usr/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wolf/CLionProjects/PrintCaddy/DeviceDiscover.cpp -o CMakeFiles/PrintCaddy.dir/DeviceDiscover.cpp.s

# Object files for target PrintCaddy
PrintCaddy_OBJECTS = \
"CMakeFiles/PrintCaddy.dir/DeviceDiscover.cpp.o"

# External object files for target PrintCaddy
PrintCaddy_EXTERNAL_OBJECTS =

PrintCaddy: CMakeFiles/PrintCaddy.dir/DeviceDiscover.cpp.o
PrintCaddy: CMakeFiles/PrintCaddy.dir/build.make
PrintCaddy: CMakeFiles/PrintCaddy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wolf/CLionProjects/PrintCaddy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable PrintCaddy"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PrintCaddy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PrintCaddy.dir/build: PrintCaddy

.PHONY : CMakeFiles/PrintCaddy.dir/build

CMakeFiles/PrintCaddy.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PrintCaddy.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PrintCaddy.dir/clean

CMakeFiles/PrintCaddy.dir/depend:
	cd /home/wolf/CLionProjects/PrintCaddy/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wolf/CLionProjects/PrintCaddy /home/wolf/CLionProjects/PrintCaddy /home/wolf/CLionProjects/PrintCaddy/cmake-build-debug /home/wolf/CLionProjects/PrintCaddy/cmake-build-debug /home/wolf/CLionProjects/PrintCaddy/cmake-build-debug/CMakeFiles/PrintCaddy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PrintCaddy.dir/depend

