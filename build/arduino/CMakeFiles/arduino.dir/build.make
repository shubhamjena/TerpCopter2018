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
include arduino/CMakeFiles/arduino.dir/depend.make

# Include the progress variables for this target.
include arduino/CMakeFiles/arduino.dir/progress.make

# Include the compile flags for this target's objects.
include arduino/CMakeFiles/arduino.dir/flags.make

arduino/CMakeFiles/arduino.dir/arduino.cpp.o: arduino/CMakeFiles/arduino.dir/flags.make
arduino/CMakeFiles/arduino.dir/arduino.cpp.o: /home/austin/Documents/AMAV/TerpCopter2018/src/arduino/arduino.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/austin/Documents/AMAV/TerpCopter2018/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object arduino/CMakeFiles/arduino.dir/arduino.cpp.o"
	cd /home/austin/Documents/AMAV/TerpCopter2018/build/arduino && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/arduino.dir/arduino.cpp.o -c /home/austin/Documents/AMAV/TerpCopter2018/src/arduino/arduino.cpp

arduino/CMakeFiles/arduino.dir/arduino.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/arduino.dir/arduino.cpp.i"
	cd /home/austin/Documents/AMAV/TerpCopter2018/build/arduino && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/austin/Documents/AMAV/TerpCopter2018/src/arduino/arduino.cpp > CMakeFiles/arduino.dir/arduino.cpp.i

arduino/CMakeFiles/arduino.dir/arduino.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/arduino.dir/arduino.cpp.s"
	cd /home/austin/Documents/AMAV/TerpCopter2018/build/arduino && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/austin/Documents/AMAV/TerpCopter2018/src/arduino/arduino.cpp -o CMakeFiles/arduino.dir/arduino.cpp.s

arduino/CMakeFiles/arduino.dir/arduino.cpp.o.requires:
.PHONY : arduino/CMakeFiles/arduino.dir/arduino.cpp.o.requires

arduino/CMakeFiles/arduino.dir/arduino.cpp.o.provides: arduino/CMakeFiles/arduino.dir/arduino.cpp.o.requires
	$(MAKE) -f arduino/CMakeFiles/arduino.dir/build.make arduino/CMakeFiles/arduino.dir/arduino.cpp.o.provides.build
.PHONY : arduino/CMakeFiles/arduino.dir/arduino.cpp.o.provides

arduino/CMakeFiles/arduino.dir/arduino.cpp.o.provides.build: arduino/CMakeFiles/arduino.dir/arduino.cpp.o

# Object files for target arduino
arduino_OBJECTS = \
"CMakeFiles/arduino.dir/arduino.cpp.o"

# External object files for target arduino
arduino_EXTERNAL_OBJECTS =

/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/arduino/arduino: arduino/CMakeFiles/arduino.dir/arduino.cpp.o
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/arduino/arduino: arduino/CMakeFiles/arduino.dir/build.make
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/arduino/arduino: /opt/ros/indigo/lib/libroscpp.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/arduino/arduino: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/arduino/arduino: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/arduino/arduino: /opt/ros/indigo/lib/librosconsole.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/arduino/arduino: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/arduino/arduino: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/arduino/arduino: /usr/lib/liblog4cxx.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/arduino/arduino: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/arduino/arduino: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/arduino/arduino: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/arduino/arduino: /opt/ros/indigo/lib/librostime.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/arduino/arduino: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/arduino/arduino: /opt/ros/indigo/lib/libcpp_common.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/arduino/arduino: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/arduino/arduino: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/arduino/arduino: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/arduino/arduino: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/arduino/arduino: arduino/CMakeFiles/arduino.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/austin/Documents/AMAV/TerpCopter2018/devel/lib/arduino/arduino"
	cd /home/austin/Documents/AMAV/TerpCopter2018/build/arduino && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/arduino.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
arduino/CMakeFiles/arduino.dir/build: /home/austin/Documents/AMAV/TerpCopter2018/devel/lib/arduino/arduino
.PHONY : arduino/CMakeFiles/arduino.dir/build

arduino/CMakeFiles/arduino.dir/requires: arduino/CMakeFiles/arduino.dir/arduino.cpp.o.requires
.PHONY : arduino/CMakeFiles/arduino.dir/requires

arduino/CMakeFiles/arduino.dir/clean:
	cd /home/austin/Documents/AMAV/TerpCopter2018/build/arduino && $(CMAKE_COMMAND) -P CMakeFiles/arduino.dir/cmake_clean.cmake
.PHONY : arduino/CMakeFiles/arduino.dir/clean

arduino/CMakeFiles/arduino.dir/depend:
	cd /home/austin/Documents/AMAV/TerpCopter2018/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/austin/Documents/AMAV/TerpCopter2018/src /home/austin/Documents/AMAV/TerpCopter2018/src/arduino /home/austin/Documents/AMAV/TerpCopter2018/build /home/austin/Documents/AMAV/TerpCopter2018/build/arduino /home/austin/Documents/AMAV/TerpCopter2018/build/arduino/CMakeFiles/arduino.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : arduino/CMakeFiles/arduino.dir/depend

