# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /workspace/opensource_AAAI22/rzone

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspace/opensource_AAAI22/rzone

# Include any dependencies generated for this target.
include MCTPS/CMakeFiles/MCTPS.dir/depend.make

# Include the progress variables for this target.
include MCTPS/CMakeFiles/MCTPS.dir/progress.make

# Include the compile flags for this target's objects.
include MCTPS/CMakeFiles/MCTPS.dir/flags.make

MCTPS/CMakeFiles/MCTPS.dir/BaseGtpEngine.cpp.o: MCTPS/CMakeFiles/MCTPS.dir/flags.make
MCTPS/CMakeFiles/MCTPS.dir/BaseGtpEngine.cpp.o: MCTPS/BaseGtpEngine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspace/opensource_AAAI22/rzone/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object MCTPS/CMakeFiles/MCTPS.dir/BaseGtpEngine.cpp.o"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MCTPS.dir/BaseGtpEngine.cpp.o -c /workspace/opensource_AAAI22/rzone/MCTPS/BaseGtpEngine.cpp

MCTPS/CMakeFiles/MCTPS.dir/BaseGtpEngine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MCTPS.dir/BaseGtpEngine.cpp.i"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspace/opensource_AAAI22/rzone/MCTPS/BaseGtpEngine.cpp > CMakeFiles/MCTPS.dir/BaseGtpEngine.cpp.i

MCTPS/CMakeFiles/MCTPS.dir/BaseGtpEngine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MCTPS.dir/BaseGtpEngine.cpp.s"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspace/opensource_AAAI22/rzone/MCTPS/BaseGtpEngine.cpp -o CMakeFiles/MCTPS.dir/BaseGtpEngine.cpp.s

MCTPS/CMakeFiles/MCTPS.dir/BaseGtpEngine.cpp.o.requires:

.PHONY : MCTPS/CMakeFiles/MCTPS.dir/BaseGtpEngine.cpp.o.requires

MCTPS/CMakeFiles/MCTPS.dir/BaseGtpEngine.cpp.o.provides: MCTPS/CMakeFiles/MCTPS.dir/BaseGtpEngine.cpp.o.requires
	$(MAKE) -f MCTPS/CMakeFiles/MCTPS.dir/build.make MCTPS/CMakeFiles/MCTPS.dir/BaseGtpEngine.cpp.o.provides.build
.PHONY : MCTPS/CMakeFiles/MCTPS.dir/BaseGtpEngine.cpp.o.provides

MCTPS/CMakeFiles/MCTPS.dir/BaseGtpEngine.cpp.o.provides.build: MCTPS/CMakeFiles/MCTPS.dir/BaseGtpEngine.cpp.o


MCTPS/CMakeFiles/MCTPS.dir/Configure.cpp.o: MCTPS/CMakeFiles/MCTPS.dir/flags.make
MCTPS/CMakeFiles/MCTPS.dir/Configure.cpp.o: MCTPS/Configure.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspace/opensource_AAAI22/rzone/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object MCTPS/CMakeFiles/MCTPS.dir/Configure.cpp.o"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MCTPS.dir/Configure.cpp.o -c /workspace/opensource_AAAI22/rzone/MCTPS/Configure.cpp

MCTPS/CMakeFiles/MCTPS.dir/Configure.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MCTPS.dir/Configure.cpp.i"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspace/opensource_AAAI22/rzone/MCTPS/Configure.cpp > CMakeFiles/MCTPS.dir/Configure.cpp.i

MCTPS/CMakeFiles/MCTPS.dir/Configure.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MCTPS.dir/Configure.cpp.s"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspace/opensource_AAAI22/rzone/MCTPS/Configure.cpp -o CMakeFiles/MCTPS.dir/Configure.cpp.s

MCTPS/CMakeFiles/MCTPS.dir/Configure.cpp.o.requires:

.PHONY : MCTPS/CMakeFiles/MCTPS.dir/Configure.cpp.o.requires

MCTPS/CMakeFiles/MCTPS.dir/Configure.cpp.o.provides: MCTPS/CMakeFiles/MCTPS.dir/Configure.cpp.o.requires
	$(MAKE) -f MCTPS/CMakeFiles/MCTPS.dir/build.make MCTPS/CMakeFiles/MCTPS.dir/Configure.cpp.o.provides.build
.PHONY : MCTPS/CMakeFiles/MCTPS.dir/Configure.cpp.o.provides

MCTPS/CMakeFiles/MCTPS.dir/Configure.cpp.o.provides.build: MCTPS/CMakeFiles/MCTPS.dir/Configure.cpp.o


MCTPS/CMakeFiles/MCTPS.dir/ConfigureLoader.cpp.o: MCTPS/CMakeFiles/MCTPS.dir/flags.make
MCTPS/CMakeFiles/MCTPS.dir/ConfigureLoader.cpp.o: MCTPS/ConfigureLoader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspace/opensource_AAAI22/rzone/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object MCTPS/CMakeFiles/MCTPS.dir/ConfigureLoader.cpp.o"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MCTPS.dir/ConfigureLoader.cpp.o -c /workspace/opensource_AAAI22/rzone/MCTPS/ConfigureLoader.cpp

MCTPS/CMakeFiles/MCTPS.dir/ConfigureLoader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MCTPS.dir/ConfigureLoader.cpp.i"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspace/opensource_AAAI22/rzone/MCTPS/ConfigureLoader.cpp > CMakeFiles/MCTPS.dir/ConfigureLoader.cpp.i

MCTPS/CMakeFiles/MCTPS.dir/ConfigureLoader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MCTPS.dir/ConfigureLoader.cpp.s"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspace/opensource_AAAI22/rzone/MCTPS/ConfigureLoader.cpp -o CMakeFiles/MCTPS.dir/ConfigureLoader.cpp.s

MCTPS/CMakeFiles/MCTPS.dir/ConfigureLoader.cpp.o.requires:

.PHONY : MCTPS/CMakeFiles/MCTPS.dir/ConfigureLoader.cpp.o.requires

MCTPS/CMakeFiles/MCTPS.dir/ConfigureLoader.cpp.o.provides: MCTPS/CMakeFiles/MCTPS.dir/ConfigureLoader.cpp.o.requires
	$(MAKE) -f MCTPS/CMakeFiles/MCTPS.dir/build.make MCTPS/CMakeFiles/MCTPS.dir/ConfigureLoader.cpp.o.provides.build
.PHONY : MCTPS/CMakeFiles/MCTPS.dir/ConfigureLoader.cpp.o.provides

MCTPS/CMakeFiles/MCTPS.dir/ConfigureLoader.cpp.o.provides.build: MCTPS/CMakeFiles/MCTPS.dir/ConfigureLoader.cpp.o


MCTPS/CMakeFiles/MCTPS.dir/Invoker.cpp.o: MCTPS/CMakeFiles/MCTPS.dir/flags.make
MCTPS/CMakeFiles/MCTPS.dir/Invoker.cpp.o: MCTPS/Invoker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspace/opensource_AAAI22/rzone/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object MCTPS/CMakeFiles/MCTPS.dir/Invoker.cpp.o"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MCTPS.dir/Invoker.cpp.o -c /workspace/opensource_AAAI22/rzone/MCTPS/Invoker.cpp

MCTPS/CMakeFiles/MCTPS.dir/Invoker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MCTPS.dir/Invoker.cpp.i"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspace/opensource_AAAI22/rzone/MCTPS/Invoker.cpp > CMakeFiles/MCTPS.dir/Invoker.cpp.i

MCTPS/CMakeFiles/MCTPS.dir/Invoker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MCTPS.dir/Invoker.cpp.s"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspace/opensource_AAAI22/rzone/MCTPS/Invoker.cpp -o CMakeFiles/MCTPS.dir/Invoker.cpp.s

MCTPS/CMakeFiles/MCTPS.dir/Invoker.cpp.o.requires:

.PHONY : MCTPS/CMakeFiles/MCTPS.dir/Invoker.cpp.o.requires

MCTPS/CMakeFiles/MCTPS.dir/Invoker.cpp.o.provides: MCTPS/CMakeFiles/MCTPS.dir/Invoker.cpp.o.requires
	$(MAKE) -f MCTPS/CMakeFiles/MCTPS.dir/build.make MCTPS/CMakeFiles/MCTPS.dir/Invoker.cpp.o.provides.build
.PHONY : MCTPS/CMakeFiles/MCTPS.dir/Invoker.cpp.o.provides

MCTPS/CMakeFiles/MCTPS.dir/Invoker.cpp.o.provides.build: MCTPS/CMakeFiles/MCTPS.dir/Invoker.cpp.o


MCTPS/CMakeFiles/MCTPS.dir/ProgramOption.cpp.o: MCTPS/CMakeFiles/MCTPS.dir/flags.make
MCTPS/CMakeFiles/MCTPS.dir/ProgramOption.cpp.o: MCTPS/ProgramOption.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspace/opensource_AAAI22/rzone/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object MCTPS/CMakeFiles/MCTPS.dir/ProgramOption.cpp.o"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MCTPS.dir/ProgramOption.cpp.o -c /workspace/opensource_AAAI22/rzone/MCTPS/ProgramOption.cpp

MCTPS/CMakeFiles/MCTPS.dir/ProgramOption.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MCTPS.dir/ProgramOption.cpp.i"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspace/opensource_AAAI22/rzone/MCTPS/ProgramOption.cpp > CMakeFiles/MCTPS.dir/ProgramOption.cpp.i

MCTPS/CMakeFiles/MCTPS.dir/ProgramOption.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MCTPS.dir/ProgramOption.cpp.s"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspace/opensource_AAAI22/rzone/MCTPS/ProgramOption.cpp -o CMakeFiles/MCTPS.dir/ProgramOption.cpp.s

MCTPS/CMakeFiles/MCTPS.dir/ProgramOption.cpp.o.requires:

.PHONY : MCTPS/CMakeFiles/MCTPS.dir/ProgramOption.cpp.o.requires

MCTPS/CMakeFiles/MCTPS.dir/ProgramOption.cpp.o.provides: MCTPS/CMakeFiles/MCTPS.dir/ProgramOption.cpp.o.requires
	$(MAKE) -f MCTPS/CMakeFiles/MCTPS.dir/build.make MCTPS/CMakeFiles/MCTPS.dir/ProgramOption.cpp.o.provides.build
.PHONY : MCTPS/CMakeFiles/MCTPS.dir/ProgramOption.cpp.o.provides

MCTPS/CMakeFiles/MCTPS.dir/ProgramOption.cpp.o.provides.build: MCTPS/CMakeFiles/MCTPS.dir/ProgramOption.cpp.o


MCTPS/CMakeFiles/MCTPS.dir/Random.cpp.o: MCTPS/CMakeFiles/MCTPS.dir/flags.make
MCTPS/CMakeFiles/MCTPS.dir/Random.cpp.o: MCTPS/Random.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspace/opensource_AAAI22/rzone/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object MCTPS/CMakeFiles/MCTPS.dir/Random.cpp.o"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MCTPS.dir/Random.cpp.o -c /workspace/opensource_AAAI22/rzone/MCTPS/Random.cpp

MCTPS/CMakeFiles/MCTPS.dir/Random.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MCTPS.dir/Random.cpp.i"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspace/opensource_AAAI22/rzone/MCTPS/Random.cpp > CMakeFiles/MCTPS.dir/Random.cpp.i

MCTPS/CMakeFiles/MCTPS.dir/Random.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MCTPS.dir/Random.cpp.s"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspace/opensource_AAAI22/rzone/MCTPS/Random.cpp -o CMakeFiles/MCTPS.dir/Random.cpp.s

MCTPS/CMakeFiles/MCTPS.dir/Random.cpp.o.requires:

.PHONY : MCTPS/CMakeFiles/MCTPS.dir/Random.cpp.o.requires

MCTPS/CMakeFiles/MCTPS.dir/Random.cpp.o.provides: MCTPS/CMakeFiles/MCTPS.dir/Random.cpp.o.requires
	$(MAKE) -f MCTPS/CMakeFiles/MCTPS.dir/build.make MCTPS/CMakeFiles/MCTPS.dir/Random.cpp.o.provides.build
.PHONY : MCTPS/CMakeFiles/MCTPS.dir/Random.cpp.o.provides

MCTPS/CMakeFiles/MCTPS.dir/Random.cpp.o.provides.build: MCTPS/CMakeFiles/MCTPS.dir/Random.cpp.o


MCTPS/CMakeFiles/MCTPS.dir/strops.cpp.o: MCTPS/CMakeFiles/MCTPS.dir/flags.make
MCTPS/CMakeFiles/MCTPS.dir/strops.cpp.o: MCTPS/strops.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspace/opensource_AAAI22/rzone/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object MCTPS/CMakeFiles/MCTPS.dir/strops.cpp.o"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MCTPS.dir/strops.cpp.o -c /workspace/opensource_AAAI22/rzone/MCTPS/strops.cpp

MCTPS/CMakeFiles/MCTPS.dir/strops.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MCTPS.dir/strops.cpp.i"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspace/opensource_AAAI22/rzone/MCTPS/strops.cpp > CMakeFiles/MCTPS.dir/strops.cpp.i

MCTPS/CMakeFiles/MCTPS.dir/strops.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MCTPS.dir/strops.cpp.s"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspace/opensource_AAAI22/rzone/MCTPS/strops.cpp -o CMakeFiles/MCTPS.dir/strops.cpp.s

MCTPS/CMakeFiles/MCTPS.dir/strops.cpp.o.requires:

.PHONY : MCTPS/CMakeFiles/MCTPS.dir/strops.cpp.o.requires

MCTPS/CMakeFiles/MCTPS.dir/strops.cpp.o.provides: MCTPS/CMakeFiles/MCTPS.dir/strops.cpp.o.requires
	$(MAKE) -f MCTPS/CMakeFiles/MCTPS.dir/build.make MCTPS/CMakeFiles/MCTPS.dir/strops.cpp.o.provides.build
.PHONY : MCTPS/CMakeFiles/MCTPS.dir/strops.cpp.o.provides

MCTPS/CMakeFiles/MCTPS.dir/strops.cpp.o.provides.build: MCTPS/CMakeFiles/MCTPS.dir/strops.cpp.o


MCTPS/CMakeFiles/MCTPS.dir/TimeSystem.cpp.o: MCTPS/CMakeFiles/MCTPS.dir/flags.make
MCTPS/CMakeFiles/MCTPS.dir/TimeSystem.cpp.o: MCTPS/TimeSystem.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspace/opensource_AAAI22/rzone/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object MCTPS/CMakeFiles/MCTPS.dir/TimeSystem.cpp.o"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MCTPS.dir/TimeSystem.cpp.o -c /workspace/opensource_AAAI22/rzone/MCTPS/TimeSystem.cpp

MCTPS/CMakeFiles/MCTPS.dir/TimeSystem.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MCTPS.dir/TimeSystem.cpp.i"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspace/opensource_AAAI22/rzone/MCTPS/TimeSystem.cpp > CMakeFiles/MCTPS.dir/TimeSystem.cpp.i

MCTPS/CMakeFiles/MCTPS.dir/TimeSystem.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MCTPS.dir/TimeSystem.cpp.s"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspace/opensource_AAAI22/rzone/MCTPS/TimeSystem.cpp -o CMakeFiles/MCTPS.dir/TimeSystem.cpp.s

MCTPS/CMakeFiles/MCTPS.dir/TimeSystem.cpp.o.requires:

.PHONY : MCTPS/CMakeFiles/MCTPS.dir/TimeSystem.cpp.o.requires

MCTPS/CMakeFiles/MCTPS.dir/TimeSystem.cpp.o.provides: MCTPS/CMakeFiles/MCTPS.dir/TimeSystem.cpp.o.requires
	$(MAKE) -f MCTPS/CMakeFiles/MCTPS.dir/build.make MCTPS/CMakeFiles/MCTPS.dir/TimeSystem.cpp.o.provides.build
.PHONY : MCTPS/CMakeFiles/MCTPS.dir/TimeSystem.cpp.o.provides

MCTPS/CMakeFiles/MCTPS.dir/TimeSystem.cpp.o.provides.build: MCTPS/CMakeFiles/MCTPS.dir/TimeSystem.cpp.o


MCTPS/CMakeFiles/MCTPS.dir/Logger.cpp.o: MCTPS/CMakeFiles/MCTPS.dir/flags.make
MCTPS/CMakeFiles/MCTPS.dir/Logger.cpp.o: MCTPS/Logger.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspace/opensource_AAAI22/rzone/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object MCTPS/CMakeFiles/MCTPS.dir/Logger.cpp.o"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MCTPS.dir/Logger.cpp.o -c /workspace/opensource_AAAI22/rzone/MCTPS/Logger.cpp

MCTPS/CMakeFiles/MCTPS.dir/Logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MCTPS.dir/Logger.cpp.i"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspace/opensource_AAAI22/rzone/MCTPS/Logger.cpp > CMakeFiles/MCTPS.dir/Logger.cpp.i

MCTPS/CMakeFiles/MCTPS.dir/Logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MCTPS.dir/Logger.cpp.s"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspace/opensource_AAAI22/rzone/MCTPS/Logger.cpp -o CMakeFiles/MCTPS.dir/Logger.cpp.s

MCTPS/CMakeFiles/MCTPS.dir/Logger.cpp.o.requires:

.PHONY : MCTPS/CMakeFiles/MCTPS.dir/Logger.cpp.o.requires

MCTPS/CMakeFiles/MCTPS.dir/Logger.cpp.o.provides: MCTPS/CMakeFiles/MCTPS.dir/Logger.cpp.o.requires
	$(MAKE) -f MCTPS/CMakeFiles/MCTPS.dir/build.make MCTPS/CMakeFiles/MCTPS.dir/Logger.cpp.o.provides.build
.PHONY : MCTPS/CMakeFiles/MCTPS.dir/Logger.cpp.o.provides

MCTPS/CMakeFiles/MCTPS.dir/Logger.cpp.o.provides.build: MCTPS/CMakeFiles/MCTPS.dir/Logger.cpp.o


# Object files for target MCTPS
MCTPS_OBJECTS = \
"CMakeFiles/MCTPS.dir/BaseGtpEngine.cpp.o" \
"CMakeFiles/MCTPS.dir/Configure.cpp.o" \
"CMakeFiles/MCTPS.dir/ConfigureLoader.cpp.o" \
"CMakeFiles/MCTPS.dir/Invoker.cpp.o" \
"CMakeFiles/MCTPS.dir/ProgramOption.cpp.o" \
"CMakeFiles/MCTPS.dir/Random.cpp.o" \
"CMakeFiles/MCTPS.dir/strops.cpp.o" \
"CMakeFiles/MCTPS.dir/TimeSystem.cpp.o" \
"CMakeFiles/MCTPS.dir/Logger.cpp.o"

# External object files for target MCTPS
MCTPS_EXTERNAL_OBJECTS =

Release/libMCTPS.a: MCTPS/CMakeFiles/MCTPS.dir/BaseGtpEngine.cpp.o
Release/libMCTPS.a: MCTPS/CMakeFiles/MCTPS.dir/Configure.cpp.o
Release/libMCTPS.a: MCTPS/CMakeFiles/MCTPS.dir/ConfigureLoader.cpp.o
Release/libMCTPS.a: MCTPS/CMakeFiles/MCTPS.dir/Invoker.cpp.o
Release/libMCTPS.a: MCTPS/CMakeFiles/MCTPS.dir/ProgramOption.cpp.o
Release/libMCTPS.a: MCTPS/CMakeFiles/MCTPS.dir/Random.cpp.o
Release/libMCTPS.a: MCTPS/CMakeFiles/MCTPS.dir/strops.cpp.o
Release/libMCTPS.a: MCTPS/CMakeFiles/MCTPS.dir/TimeSystem.cpp.o
Release/libMCTPS.a: MCTPS/CMakeFiles/MCTPS.dir/Logger.cpp.o
Release/libMCTPS.a: MCTPS/CMakeFiles/MCTPS.dir/build.make
Release/libMCTPS.a: MCTPS/CMakeFiles/MCTPS.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspace/opensource_AAAI22/rzone/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX static library ../Release/libMCTPS.a"
	cd /workspace/opensource_AAAI22/rzone/MCTPS && $(CMAKE_COMMAND) -P CMakeFiles/MCTPS.dir/cmake_clean_target.cmake
	cd /workspace/opensource_AAAI22/rzone/MCTPS && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MCTPS.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
MCTPS/CMakeFiles/MCTPS.dir/build: Release/libMCTPS.a

.PHONY : MCTPS/CMakeFiles/MCTPS.dir/build

MCTPS/CMakeFiles/MCTPS.dir/requires: MCTPS/CMakeFiles/MCTPS.dir/BaseGtpEngine.cpp.o.requires
MCTPS/CMakeFiles/MCTPS.dir/requires: MCTPS/CMakeFiles/MCTPS.dir/Configure.cpp.o.requires
MCTPS/CMakeFiles/MCTPS.dir/requires: MCTPS/CMakeFiles/MCTPS.dir/ConfigureLoader.cpp.o.requires
MCTPS/CMakeFiles/MCTPS.dir/requires: MCTPS/CMakeFiles/MCTPS.dir/Invoker.cpp.o.requires
MCTPS/CMakeFiles/MCTPS.dir/requires: MCTPS/CMakeFiles/MCTPS.dir/ProgramOption.cpp.o.requires
MCTPS/CMakeFiles/MCTPS.dir/requires: MCTPS/CMakeFiles/MCTPS.dir/Random.cpp.o.requires
MCTPS/CMakeFiles/MCTPS.dir/requires: MCTPS/CMakeFiles/MCTPS.dir/strops.cpp.o.requires
MCTPS/CMakeFiles/MCTPS.dir/requires: MCTPS/CMakeFiles/MCTPS.dir/TimeSystem.cpp.o.requires
MCTPS/CMakeFiles/MCTPS.dir/requires: MCTPS/CMakeFiles/MCTPS.dir/Logger.cpp.o.requires

.PHONY : MCTPS/CMakeFiles/MCTPS.dir/requires

MCTPS/CMakeFiles/MCTPS.dir/clean:
	cd /workspace/opensource_AAAI22/rzone/MCTPS && $(CMAKE_COMMAND) -P CMakeFiles/MCTPS.dir/cmake_clean.cmake
.PHONY : MCTPS/CMakeFiles/MCTPS.dir/clean

MCTPS/CMakeFiles/MCTPS.dir/depend:
	cd /workspace/opensource_AAAI22/rzone && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspace/opensource_AAAI22/rzone /workspace/opensource_AAAI22/rzone/MCTPS /workspace/opensource_AAAI22/rzone /workspace/opensource_AAAI22/rzone/MCTPS /workspace/opensource_AAAI22/rzone/MCTPS/CMakeFiles/MCTPS.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : MCTPS/CMakeFiles/MCTPS.dir/depend

