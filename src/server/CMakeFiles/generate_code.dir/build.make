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

# Utility rule file for generate_code.

# Include the progress variables for this target.
include src/server/CMakeFiles/generate_code.dir/progress.make

src/server/CMakeFiles/generate_code:
	cd /home/markos/Downloads/3kms-plugin-sample-MV/build/src/server && touch generate_code

generate_code: src/server/CMakeFiles/generate_code
generate_code: src/server/CMakeFiles/generate_code.dir/build.make
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Regenerating source from: "
	/usr/bin/cmake /home/markos/Downloads/3kms-plugin-sample-MV
.PHONY : generate_code

# Rule to build all files generated by this target.
src/server/CMakeFiles/generate_code.dir/build: generate_code
.PHONY : src/server/CMakeFiles/generate_code.dir/build

src/server/CMakeFiles/generate_code.dir/clean:
	cd /home/markos/Downloads/3kms-plugin-sample-MV/build/src/server && $(CMAKE_COMMAND) -P CMakeFiles/generate_code.dir/cmake_clean.cmake
.PHONY : src/server/CMakeFiles/generate_code.dir/clean

src/server/CMakeFiles/generate_code.dir/depend:
	cd /home/markos/Downloads/3kms-plugin-sample-MV/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/markos/Downloads/3kms-plugin-sample-MV /home/markos/Downloads/3kms-plugin-sample-MV/src/server /home/markos/Downloads/3kms-plugin-sample-MV/build /home/markos/Downloads/3kms-plugin-sample-MV/build/src/server /home/markos/Downloads/3kms-plugin-sample-MV/build/src/server/CMakeFiles/generate_code.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/server/CMakeFiles/generate_code.dir/depend
