# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/markos/Downloads/3kms-plugin-sample-MV

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/markos/Downloads/3kms-plugin-sample-MV/build

# Include any dependencies generated for this target.
include src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/depend.make

# Include the progress variables for this target.
include src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/progress.make

# Include the compile flags for this target's objects.
include src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/flags.make

src/gst-plugins/kms-enumtypes.c: ../src/gst-plugins/kmssamplefilter.h
src/gst-plugins/kms-enumtypes.c: src/gst-plugins/kms-enumtypes.c.template
src/gst-plugins/kms-enumtypes.c: src/gst-plugins/kms-enumtypes.h
	$(CMAKE_COMMAND) -E cmake_progress_report /home/markos/Downloads/3kms-plugin-sample-MV/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating kms-enumtypes.c"
	cd /home/markos/Downloads/3kms-plugin-sample-MV/src/gst-plugins && /usr/bin/glib-mkenums --template /home/markos/Downloads/3kms-plugin-sample-MV/build/src/gst-plugins/kms-enumtypes.c.template kmssamplefilter.h > /home/markos/Downloads/3kms-plugin-sample-MV/build/src/gst-plugins/kms-enumtypes.c

src/gst-plugins/kms-enumtypes.h.template: ../CMake/MakeGLibEnumTemplates.cmake
	$(CMAKE_COMMAND) -E cmake_progress_report /home/markos/Downloads/3kms-plugin-sample-MV/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating kms-enumtypes.h.template, kms-enumtypes.c.template"
	cd /home/markos/Downloads/3kms-plugin-sample-MV/build/src/gst-plugins && /usr/bin/cmake -Dctemplate=/home/markos/Downloads/3kms-plugin-sample-MV/build/src/gst-plugins/kms-enumtypes.c.template -Dhtemplate=/home/markos/Downloads/3kms-plugin-sample-MV/build/src/gst-plugins/kms-enumtypes.h.template -Dname=kms-enumtypes -Dincludeguard=KMS "-Dheaders=kmssamplefilter.h" -P /home/markos/Downloads/3kms-plugin-sample-MV/CMake/MakeGLibEnumTemplates.cmake

src/gst-plugins/kms-enumtypes.c.template: src/gst-plugins/kms-enumtypes.h.template

src/gst-plugins/kms-enumtypes.h: ../src/gst-plugins/kmssamplefilter.h
src/gst-plugins/kms-enumtypes.h: src/gst-plugins/kms-enumtypes.h.template
	$(CMAKE_COMMAND) -E cmake_progress_report /home/markos/Downloads/3kms-plugin-sample-MV/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating kms-enumtypes.h"
	cd /home/markos/Downloads/3kms-plugin-sample-MV/src/gst-plugins && /usr/bin/glib-mkenums --template /home/markos/Downloads/3kms-plugin-sample-MV/build/src/gst-plugins/kms-enumtypes.h.template kmssamplefilter.h > /home/markos/Downloads/3kms-plugin-sample-MV/build/src/gst-plugins/kms-enumtypes.h

src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/samplefilter.c.o: src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/flags.make
src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/samplefilter.c.o: ../src/gst-plugins/samplefilter.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/markos/Downloads/3kms-plugin-sample-MV/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/samplefilter.c.o"
	cd /home/markos/Downloads/3kms-plugin-sample-MV/build/src/gst-plugins && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/kmssampleplugin_js_mvplugins.dir/samplefilter.c.o   -c /home/markos/Downloads/3kms-plugin-sample-MV/src/gst-plugins/samplefilter.c

src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/samplefilter.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kmssampleplugin_js_mvplugins.dir/samplefilter.c.i"
	cd /home/markos/Downloads/3kms-plugin-sample-MV/build/src/gst-plugins && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/markos/Downloads/3kms-plugin-sample-MV/src/gst-plugins/samplefilter.c > CMakeFiles/kmssampleplugin_js_mvplugins.dir/samplefilter.c.i

src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/samplefilter.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kmssampleplugin_js_mvplugins.dir/samplefilter.c.s"
	cd /home/markos/Downloads/3kms-plugin-sample-MV/build/src/gst-plugins && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/markos/Downloads/3kms-plugin-sample-MV/src/gst-plugins/samplefilter.c -o CMakeFiles/kmssampleplugin_js_mvplugins.dir/samplefilter.c.s

src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/samplefilter.c.o.requires:
.PHONY : src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/samplefilter.c.o.requires

src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/samplefilter.c.o.provides: src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/samplefilter.c.o.requires
	$(MAKE) -f src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/build.make src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/samplefilter.c.o.provides.build
.PHONY : src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/samplefilter.c.o.provides

src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/samplefilter.c.o.provides.build: src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/samplefilter.c.o

src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kmssamplefilter.cpp.o: src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/flags.make
src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kmssamplefilter.cpp.o: ../src/gst-plugins/kmssamplefilter.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/markos/Downloads/3kms-plugin-sample-MV/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kmssamplefilter.cpp.o"
	cd /home/markos/Downloads/3kms-plugin-sample-MV/build/src/gst-plugins && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/kmssampleplugin_js_mvplugins.dir/kmssamplefilter.cpp.o -c /home/markos/Downloads/3kms-plugin-sample-MV/src/gst-plugins/kmssamplefilter.cpp

src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kmssamplefilter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kmssampleplugin_js_mvplugins.dir/kmssamplefilter.cpp.i"
	cd /home/markos/Downloads/3kms-plugin-sample-MV/build/src/gst-plugins && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/markos/Downloads/3kms-plugin-sample-MV/src/gst-plugins/kmssamplefilter.cpp > CMakeFiles/kmssampleplugin_js_mvplugins.dir/kmssamplefilter.cpp.i

src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kmssamplefilter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kmssampleplugin_js_mvplugins.dir/kmssamplefilter.cpp.s"
	cd /home/markos/Downloads/3kms-plugin-sample-MV/build/src/gst-plugins && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/markos/Downloads/3kms-plugin-sample-MV/src/gst-plugins/kmssamplefilter.cpp -o CMakeFiles/kmssampleplugin_js_mvplugins.dir/kmssamplefilter.cpp.s

src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kmssamplefilter.cpp.o.requires:
.PHONY : src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kmssamplefilter.cpp.o.requires

src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kmssamplefilter.cpp.o.provides: src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kmssamplefilter.cpp.o.requires
	$(MAKE) -f src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/build.make src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kmssamplefilter.cpp.o.provides.build
.PHONY : src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kmssamplefilter.cpp.o.provides

src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kmssamplefilter.cpp.o.provides.build: src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kmssamplefilter.cpp.o

src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kms-enumtypes.c.o: src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/flags.make
src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kms-enumtypes.c.o: src/gst-plugins/kms-enumtypes.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/markos/Downloads/3kms-plugin-sample-MV/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kms-enumtypes.c.o"
	cd /home/markos/Downloads/3kms-plugin-sample-MV/build/src/gst-plugins && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/kmssampleplugin_js_mvplugins.dir/kms-enumtypes.c.o   -c /home/markos/Downloads/3kms-plugin-sample-MV/build/src/gst-plugins/kms-enumtypes.c

src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kms-enumtypes.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kmssampleplugin_js_mvplugins.dir/kms-enumtypes.c.i"
	cd /home/markos/Downloads/3kms-plugin-sample-MV/build/src/gst-plugins && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/markos/Downloads/3kms-plugin-sample-MV/build/src/gst-plugins/kms-enumtypes.c > CMakeFiles/kmssampleplugin_js_mvplugins.dir/kms-enumtypes.c.i

src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kms-enumtypes.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kmssampleplugin_js_mvplugins.dir/kms-enumtypes.c.s"
	cd /home/markos/Downloads/3kms-plugin-sample-MV/build/src/gst-plugins && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/markos/Downloads/3kms-plugin-sample-MV/build/src/gst-plugins/kms-enumtypes.c -o CMakeFiles/kmssampleplugin_js_mvplugins.dir/kms-enumtypes.c.s

src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kms-enumtypes.c.o.requires:
.PHONY : src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kms-enumtypes.c.o.requires

src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kms-enumtypes.c.o.provides: src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kms-enumtypes.c.o.requires
	$(MAKE) -f src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/build.make src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kms-enumtypes.c.o.provides.build
.PHONY : src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kms-enumtypes.c.o.provides

src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kms-enumtypes.c.o.provides.build: src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kms-enumtypes.c.o

# Object files for target kmssampleplugin_js_mvplugins
kmssampleplugin_js_mvplugins_OBJECTS = \
"CMakeFiles/kmssampleplugin_js_mvplugins.dir/samplefilter.c.o" \
"CMakeFiles/kmssampleplugin_js_mvplugins.dir/kmssamplefilter.cpp.o" \
"CMakeFiles/kmssampleplugin_js_mvplugins.dir/kms-enumtypes.c.o"

# External object files for target kmssampleplugin_js_mvplugins
kmssampleplugin_js_mvplugins_EXTERNAL_OBJECTS =

src/gst-plugins/libkmssampleplugin_js_mvplugins.so: src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/samplefilter.c.o
src/gst-plugins/libkmssampleplugin_js_mvplugins.so: src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kmssamplefilter.cpp.o
src/gst-plugins/libkmssampleplugin_js_mvplugins.so: src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kms-enumtypes.c.o
src/gst-plugins/libkmssampleplugin_js_mvplugins.so: src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/build.make
src/gst-plugins/libkmssampleplugin_js_mvplugins.so: src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared module libkmssampleplugin_js_mvplugins.so"
	cd /home/markos/Downloads/3kms-plugin-sample-MV/build/src/gst-plugins && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kmssampleplugin_js_mvplugins.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/build: src/gst-plugins/libkmssampleplugin_js_mvplugins.so
.PHONY : src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/build

src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/requires: src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/samplefilter.c.o.requires
src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/requires: src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kmssamplefilter.cpp.o.requires
src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/requires: src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/kms-enumtypes.c.o.requires
.PHONY : src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/requires

src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/clean:
	cd /home/markos/Downloads/3kms-plugin-sample-MV/build/src/gst-plugins && $(CMAKE_COMMAND) -P CMakeFiles/kmssampleplugin_js_mvplugins.dir/cmake_clean.cmake
.PHONY : src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/clean

src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/depend: src/gst-plugins/kms-enumtypes.c
src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/depend: src/gst-plugins/kms-enumtypes.h.template
src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/depend: src/gst-plugins/kms-enumtypes.c.template
src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/depend: src/gst-plugins/kms-enumtypes.h
	cd /home/markos/Downloads/3kms-plugin-sample-MV/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/markos/Downloads/3kms-plugin-sample-MV /home/markos/Downloads/3kms-plugin-sample-MV/src/gst-plugins /home/markos/Downloads/3kms-plugin-sample-MV/build /home/markos/Downloads/3kms-plugin-sample-MV/build/src/gst-plugins /home/markos/Downloads/3kms-plugin-sample-MV/build/src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/gst-plugins/CMakeFiles/kmssampleplugin_js_mvplugins.dir/depend

