# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_SOURCE_DIR = /home/austin/Documents/AMAV/TerpCopter2018/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/austin/Documents/AMAV/TerpCopter2018/build

# Include any dependencies generated for this target.
include vision/CMakeFiles/camera.dir/depend.make

# Include the progress variables for this target.
include vision/CMakeFiles/camera.dir/progress.make

# Include the compile flags for this target's objects.
include vision/CMakeFiles/camera.dir/flags.make

vision/CMakeFiles/camera.dir/camera.cpp.o: vision/CMakeFiles/camera.dir/flags.make
vision/CMakeFiles/camera.dir/camera.cpp.o: /home/austin/Documents/AMAV/TerpCopter2018/src/vision/camera.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/austin/Documents/AMAV/TerpCopter2018/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object vision/CMakeFiles/camera.dir/camera.cpp.o"
	cd /home/austin/Documents/AMAV/TerpCopter2018/build/vision && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/camera.dir/camera.cpp.o -c /home/austin/Documents/AMAV/TerpCopter2018/src/vision/camera.cpp

vision/CMakeFiles/camera.dir/camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/camera.dir/camera.cpp.i"
	cd /home/austin/Documents/AMAV/TerpCopter2018/build/vision && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/austin/Documents/AMAV/TerpCopter2018/src/vision/camera.cpp > CMakeFiles/camera.dir/camera.cpp.i

vision/CMakeFiles/camera.dir/camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/camera.dir/camera.cpp.s"
	cd /home/austin/Documents/AMAV/TerpCopter2018/build/vision && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/austin/Documents/AMAV/TerpCopter2018/src/vision/camera.cpp -o CMakeFiles/camera.dir/camera.cpp.s

vision/CMakeFiles/camera.dir/camera.cpp.o.requires:
.PHONY : vision/CMakeFiles/camera.dir/camera.cpp.o.requires

vision/CMakeFiles/camera.dir/camera.cpp.o.provides: vision/CMakeFiles/camera.dir/camera.cpp.o.requires
	$(MAKE) -f vision/CMakeFiles/camera.dir/build.make vision/CMakeFiles/camera.dir/camera.cpp.o.provides.build
.PHONY : vision/CMakeFiles/camera.dir/camera.cpp.o.provides

vision/CMakeFiles/camera.dir/camera.cpp.o.provides.build: vision/CMakeFiles/camera.dir/camera.cpp.o

# Object files for target camera
camera_OBJECTS = \
"CMakeFiles/camera.dir/camera.cpp.o"

# External object files for target camera
camera_EXTERNAL_OBJECTS =

/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/vision/camera: vision/CMakeFiles/camera.dir/camera.cpp.o
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/vision/camera: vision/CMakeFiles/camera.dir/build.make
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/vision/camera: /opt/ros/indigo/lib/libroscpp.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/vision/camera: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/vision/camera: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/vision/camera: /opt/ros/indigo/lib/librosconsole.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/vision/camera: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/vision/camera: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/vision/camera: /usr/lib/liblog4cxx.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/vision/camera: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/vision/camera: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/vision/camera: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/vision/camera: /opt/ros/indigo/lib/librostime.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/vision/camera: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/vision/camera: /opt/ros/indigo/lib/libcpp_common.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/vision/camera: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/vision/camera: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/vision/camera: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/vision/camera: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/vision/camera: vision/CMakeFiles/camera.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/austin/Documents/AMAV/TerpCopter2018/devel/lib/vision/camera"
	cd /home/austin/Documents/AMAV/TerpCopter2018/build/vision && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/camera.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
vision/CMakeFiles/camera.dir/build: /home/austin/Documents/AMAV/TerpCopter2018/devel/lib/vision/camera
.PHONY : vision/CMakeFiles/camera.dir/build

vision/CMakeFiles/camera.dir/requires: vision/CMakeFiles/camera.dir/camera.cpp.o.requires
.PHONY : vision/CMakeFiles/camera.dir/requires

vision/CMakeFiles/camera.dir/clean:
	cd /home/austin/Documents/AMAV/TerpCopter2018/build/vision && $(CMAKE_COMMAND) -P CMakeFiles/camera.dir/cmake_clean.cmake
.PHONY : vision/CMakeFiles/camera.dir/clean

vision/CMakeFiles/camera.dir/depend:
	cd /home/austin/Documents/AMAV/TerpCopter2018/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/austin/Documents/AMAV/TerpCopter2018/src /home/austin/Documents/AMAV/TerpCopter2018/src/vision /home/austin/Documents/AMAV/TerpCopter2018/build /home/austin/Documents/AMAV/TerpCopter2018/build/vision /home/austin/Documents/AMAV/TerpCopter2018/build/vision/CMakeFiles/camera.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : vision/CMakeFiles/camera.dir/depend

