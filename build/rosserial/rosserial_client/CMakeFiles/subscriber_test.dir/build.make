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
include rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/depend.make

# Include the progress variables for this target.
include rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/progress.make

# Include the compile flags for this target's objects.
include rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/flags.make

rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o: rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/flags.make
rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o: /home/austin/Documents/AMAV/TerpCopter2018/src/rosserial/rosserial_client/test/subscriber_test.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/austin/Documents/AMAV/TerpCopter2018/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o"
	cd /home/austin/Documents/AMAV/TerpCopter2018/build/rosserial/rosserial_client && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o -c /home/austin/Documents/AMAV/TerpCopter2018/src/rosserial/rosserial_client/test/subscriber_test.cpp

rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.i"
	cd /home/austin/Documents/AMAV/TerpCopter2018/build/rosserial/rosserial_client && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/austin/Documents/AMAV/TerpCopter2018/src/rosserial/rosserial_client/test/subscriber_test.cpp > CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.i

rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.s"
	cd /home/austin/Documents/AMAV/TerpCopter2018/build/rosserial/rosserial_client && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/austin/Documents/AMAV/TerpCopter2018/src/rosserial/rosserial_client/test/subscriber_test.cpp -o CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.s

rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o.requires:
.PHONY : rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o.requires

rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o.provides: rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o.requires
	$(MAKE) -f rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/build.make rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o.provides.build
.PHONY : rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o.provides

rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o.provides.build: rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o

# Object files for target subscriber_test
subscriber_test_OBJECTS = \
"CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o"

# External object files for target subscriber_test
subscriber_test_EXTERNAL_OBJECTS =

/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/rosserial_client/subscriber_test: rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/rosserial_client/subscriber_test: rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/build.make
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/rosserial_client/subscriber_test: gtest/libgtest.so
/home/austin/Documents/AMAV/TerpCopter2018/devel/lib/rosserial_client/subscriber_test: rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/austin/Documents/AMAV/TerpCopter2018/devel/lib/rosserial_client/subscriber_test"
	cd /home/austin/Documents/AMAV/TerpCopter2018/build/rosserial/rosserial_client && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/subscriber_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/build: /home/austin/Documents/AMAV/TerpCopter2018/devel/lib/rosserial_client/subscriber_test
.PHONY : rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/build

rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/requires: rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o.requires
.PHONY : rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/requires

rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/clean:
	cd /home/austin/Documents/AMAV/TerpCopter2018/build/rosserial/rosserial_client && $(CMAKE_COMMAND) -P CMakeFiles/subscriber_test.dir/cmake_clean.cmake
.PHONY : rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/clean

rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/depend:
	cd /home/austin/Documents/AMAV/TerpCopter2018/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/austin/Documents/AMAV/TerpCopter2018/src /home/austin/Documents/AMAV/TerpCopter2018/src/rosserial/rosserial_client /home/austin/Documents/AMAV/TerpCopter2018/build /home/austin/Documents/AMAV/TerpCopter2018/build/rosserial/rosserial_client /home/austin/Documents/AMAV/TerpCopter2018/build/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/depend

