# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.3/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/0x18e/personal/programming/SDL_Projects/chess

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/0x18e/personal/programming/SDL_Projects/chess/build

# Include any dependencies generated for this target.
include CMakeFiles/NewtonianDynamics.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/NewtonianDynamics.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/NewtonianDynamics.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/NewtonianDynamics.dir/flags.make

CMakeFiles/NewtonianDynamics.dir/src/CBasePlayer.cpp.o: CMakeFiles/NewtonianDynamics.dir/flags.make
CMakeFiles/NewtonianDynamics.dir/src/CBasePlayer.cpp.o: /Users/0x18e/personal/programming/SDL_Projects/chess/src/CBasePlayer.cpp
CMakeFiles/NewtonianDynamics.dir/src/CBasePlayer.cpp.o: CMakeFiles/NewtonianDynamics.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/0x18e/personal/programming/SDL_Projects/chess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/NewtonianDynamics.dir/src/CBasePlayer.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/NewtonianDynamics.dir/src/CBasePlayer.cpp.o -MF CMakeFiles/NewtonianDynamics.dir/src/CBasePlayer.cpp.o.d -o CMakeFiles/NewtonianDynamics.dir/src/CBasePlayer.cpp.o -c /Users/0x18e/personal/programming/SDL_Projects/chess/src/CBasePlayer.cpp

CMakeFiles/NewtonianDynamics.dir/src/CBasePlayer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/NewtonianDynamics.dir/src/CBasePlayer.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/0x18e/personal/programming/SDL_Projects/chess/src/CBasePlayer.cpp > CMakeFiles/NewtonianDynamics.dir/src/CBasePlayer.cpp.i

CMakeFiles/NewtonianDynamics.dir/src/CBasePlayer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/NewtonianDynamics.dir/src/CBasePlayer.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/0x18e/personal/programming/SDL_Projects/chess/src/CBasePlayer.cpp -o CMakeFiles/NewtonianDynamics.dir/src/CBasePlayer.cpp.s

CMakeFiles/NewtonianDynamics.dir/src/CEngine.cpp.o: CMakeFiles/NewtonianDynamics.dir/flags.make
CMakeFiles/NewtonianDynamics.dir/src/CEngine.cpp.o: /Users/0x18e/personal/programming/SDL_Projects/chess/src/CEngine.cpp
CMakeFiles/NewtonianDynamics.dir/src/CEngine.cpp.o: CMakeFiles/NewtonianDynamics.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/0x18e/personal/programming/SDL_Projects/chess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/NewtonianDynamics.dir/src/CEngine.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/NewtonianDynamics.dir/src/CEngine.cpp.o -MF CMakeFiles/NewtonianDynamics.dir/src/CEngine.cpp.o.d -o CMakeFiles/NewtonianDynamics.dir/src/CEngine.cpp.o -c /Users/0x18e/personal/programming/SDL_Projects/chess/src/CEngine.cpp

CMakeFiles/NewtonianDynamics.dir/src/CEngine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/NewtonianDynamics.dir/src/CEngine.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/0x18e/personal/programming/SDL_Projects/chess/src/CEngine.cpp > CMakeFiles/NewtonianDynamics.dir/src/CEngine.cpp.i

CMakeFiles/NewtonianDynamics.dir/src/CEngine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/NewtonianDynamics.dir/src/CEngine.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/0x18e/personal/programming/SDL_Projects/chess/src/CEngine.cpp -o CMakeFiles/NewtonianDynamics.dir/src/CEngine.cpp.s

CMakeFiles/NewtonianDynamics.dir/src/CEntity.cpp.o: CMakeFiles/NewtonianDynamics.dir/flags.make
CMakeFiles/NewtonianDynamics.dir/src/CEntity.cpp.o: /Users/0x18e/personal/programming/SDL_Projects/chess/src/CEntity.cpp
CMakeFiles/NewtonianDynamics.dir/src/CEntity.cpp.o: CMakeFiles/NewtonianDynamics.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/0x18e/personal/programming/SDL_Projects/chess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/NewtonianDynamics.dir/src/CEntity.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/NewtonianDynamics.dir/src/CEntity.cpp.o -MF CMakeFiles/NewtonianDynamics.dir/src/CEntity.cpp.o.d -o CMakeFiles/NewtonianDynamics.dir/src/CEntity.cpp.o -c /Users/0x18e/personal/programming/SDL_Projects/chess/src/CEntity.cpp

CMakeFiles/NewtonianDynamics.dir/src/CEntity.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/NewtonianDynamics.dir/src/CEntity.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/0x18e/personal/programming/SDL_Projects/chess/src/CEntity.cpp > CMakeFiles/NewtonianDynamics.dir/src/CEntity.cpp.i

CMakeFiles/NewtonianDynamics.dir/src/CEntity.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/NewtonianDynamics.dir/src/CEntity.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/0x18e/personal/programming/SDL_Projects/chess/src/CEntity.cpp -o CMakeFiles/NewtonianDynamics.dir/src/CEntity.cpp.s

CMakeFiles/NewtonianDynamics.dir/src/CLogic.cpp.o: CMakeFiles/NewtonianDynamics.dir/flags.make
CMakeFiles/NewtonianDynamics.dir/src/CLogic.cpp.o: /Users/0x18e/personal/programming/SDL_Projects/chess/src/CLogic.cpp
CMakeFiles/NewtonianDynamics.dir/src/CLogic.cpp.o: CMakeFiles/NewtonianDynamics.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/0x18e/personal/programming/SDL_Projects/chess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/NewtonianDynamics.dir/src/CLogic.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/NewtonianDynamics.dir/src/CLogic.cpp.o -MF CMakeFiles/NewtonianDynamics.dir/src/CLogic.cpp.o.d -o CMakeFiles/NewtonianDynamics.dir/src/CLogic.cpp.o -c /Users/0x18e/personal/programming/SDL_Projects/chess/src/CLogic.cpp

CMakeFiles/NewtonianDynamics.dir/src/CLogic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/NewtonianDynamics.dir/src/CLogic.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/0x18e/personal/programming/SDL_Projects/chess/src/CLogic.cpp > CMakeFiles/NewtonianDynamics.dir/src/CLogic.cpp.i

CMakeFiles/NewtonianDynamics.dir/src/CLogic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/NewtonianDynamics.dir/src/CLogic.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/0x18e/personal/programming/SDL_Projects/chess/src/CLogic.cpp -o CMakeFiles/NewtonianDynamics.dir/src/CLogic.cpp.s

CMakeFiles/NewtonianDynamics.dir/src/CParticle.cpp.o: CMakeFiles/NewtonianDynamics.dir/flags.make
CMakeFiles/NewtonianDynamics.dir/src/CParticle.cpp.o: /Users/0x18e/personal/programming/SDL_Projects/chess/src/CParticle.cpp
CMakeFiles/NewtonianDynamics.dir/src/CParticle.cpp.o: CMakeFiles/NewtonianDynamics.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/0x18e/personal/programming/SDL_Projects/chess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/NewtonianDynamics.dir/src/CParticle.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/NewtonianDynamics.dir/src/CParticle.cpp.o -MF CMakeFiles/NewtonianDynamics.dir/src/CParticle.cpp.o.d -o CMakeFiles/NewtonianDynamics.dir/src/CParticle.cpp.o -c /Users/0x18e/personal/programming/SDL_Projects/chess/src/CParticle.cpp

CMakeFiles/NewtonianDynamics.dir/src/CParticle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/NewtonianDynamics.dir/src/CParticle.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/0x18e/personal/programming/SDL_Projects/chess/src/CParticle.cpp > CMakeFiles/NewtonianDynamics.dir/src/CParticle.cpp.i

CMakeFiles/NewtonianDynamics.dir/src/CParticle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/NewtonianDynamics.dir/src/CParticle.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/0x18e/personal/programming/SDL_Projects/chess/src/CParticle.cpp -o CMakeFiles/NewtonianDynamics.dir/src/CParticle.cpp.s

CMakeFiles/NewtonianDynamics.dir/src/CRenderer.cpp.o: CMakeFiles/NewtonianDynamics.dir/flags.make
CMakeFiles/NewtonianDynamics.dir/src/CRenderer.cpp.o: /Users/0x18e/personal/programming/SDL_Projects/chess/src/CRenderer.cpp
CMakeFiles/NewtonianDynamics.dir/src/CRenderer.cpp.o: CMakeFiles/NewtonianDynamics.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/0x18e/personal/programming/SDL_Projects/chess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/NewtonianDynamics.dir/src/CRenderer.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/NewtonianDynamics.dir/src/CRenderer.cpp.o -MF CMakeFiles/NewtonianDynamics.dir/src/CRenderer.cpp.o.d -o CMakeFiles/NewtonianDynamics.dir/src/CRenderer.cpp.o -c /Users/0x18e/personal/programming/SDL_Projects/chess/src/CRenderer.cpp

CMakeFiles/NewtonianDynamics.dir/src/CRenderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/NewtonianDynamics.dir/src/CRenderer.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/0x18e/personal/programming/SDL_Projects/chess/src/CRenderer.cpp > CMakeFiles/NewtonianDynamics.dir/src/CRenderer.cpp.i

CMakeFiles/NewtonianDynamics.dir/src/CRenderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/NewtonianDynamics.dir/src/CRenderer.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/0x18e/personal/programming/SDL_Projects/chess/src/CRenderer.cpp -o CMakeFiles/NewtonianDynamics.dir/src/CRenderer.cpp.s

CMakeFiles/NewtonianDynamics.dir/src/CSDLManager.cpp.o: CMakeFiles/NewtonianDynamics.dir/flags.make
CMakeFiles/NewtonianDynamics.dir/src/CSDLManager.cpp.o: /Users/0x18e/personal/programming/SDL_Projects/chess/src/CSDLManager.cpp
CMakeFiles/NewtonianDynamics.dir/src/CSDLManager.cpp.o: CMakeFiles/NewtonianDynamics.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/0x18e/personal/programming/SDL_Projects/chess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/NewtonianDynamics.dir/src/CSDLManager.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/NewtonianDynamics.dir/src/CSDLManager.cpp.o -MF CMakeFiles/NewtonianDynamics.dir/src/CSDLManager.cpp.o.d -o CMakeFiles/NewtonianDynamics.dir/src/CSDLManager.cpp.o -c /Users/0x18e/personal/programming/SDL_Projects/chess/src/CSDLManager.cpp

CMakeFiles/NewtonianDynamics.dir/src/CSDLManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/NewtonianDynamics.dir/src/CSDLManager.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/0x18e/personal/programming/SDL_Projects/chess/src/CSDLManager.cpp > CMakeFiles/NewtonianDynamics.dir/src/CSDLManager.cpp.i

CMakeFiles/NewtonianDynamics.dir/src/CSDLManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/NewtonianDynamics.dir/src/CSDLManager.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/0x18e/personal/programming/SDL_Projects/chess/src/CSDLManager.cpp -o CMakeFiles/NewtonianDynamics.dir/src/CSDLManager.cpp.s

CMakeFiles/NewtonianDynamics.dir/src/CSoundManager.cpp.o: CMakeFiles/NewtonianDynamics.dir/flags.make
CMakeFiles/NewtonianDynamics.dir/src/CSoundManager.cpp.o: /Users/0x18e/personal/programming/SDL_Projects/chess/src/CSoundManager.cpp
CMakeFiles/NewtonianDynamics.dir/src/CSoundManager.cpp.o: CMakeFiles/NewtonianDynamics.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/0x18e/personal/programming/SDL_Projects/chess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/NewtonianDynamics.dir/src/CSoundManager.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/NewtonianDynamics.dir/src/CSoundManager.cpp.o -MF CMakeFiles/NewtonianDynamics.dir/src/CSoundManager.cpp.o.d -o CMakeFiles/NewtonianDynamics.dir/src/CSoundManager.cpp.o -c /Users/0x18e/personal/programming/SDL_Projects/chess/src/CSoundManager.cpp

CMakeFiles/NewtonianDynamics.dir/src/CSoundManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/NewtonianDynamics.dir/src/CSoundManager.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/0x18e/personal/programming/SDL_Projects/chess/src/CSoundManager.cpp > CMakeFiles/NewtonianDynamics.dir/src/CSoundManager.cpp.i

CMakeFiles/NewtonianDynamics.dir/src/CSoundManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/NewtonianDynamics.dir/src/CSoundManager.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/0x18e/personal/programming/SDL_Projects/chess/src/CSoundManager.cpp -o CMakeFiles/NewtonianDynamics.dir/src/CSoundManager.cpp.s

CMakeFiles/NewtonianDynamics.dir/src/CTexture.cpp.o: CMakeFiles/NewtonianDynamics.dir/flags.make
CMakeFiles/NewtonianDynamics.dir/src/CTexture.cpp.o: /Users/0x18e/personal/programming/SDL_Projects/chess/src/CTexture.cpp
CMakeFiles/NewtonianDynamics.dir/src/CTexture.cpp.o: CMakeFiles/NewtonianDynamics.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/0x18e/personal/programming/SDL_Projects/chess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/NewtonianDynamics.dir/src/CTexture.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/NewtonianDynamics.dir/src/CTexture.cpp.o -MF CMakeFiles/NewtonianDynamics.dir/src/CTexture.cpp.o.d -o CMakeFiles/NewtonianDynamics.dir/src/CTexture.cpp.o -c /Users/0x18e/personal/programming/SDL_Projects/chess/src/CTexture.cpp

CMakeFiles/NewtonianDynamics.dir/src/CTexture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/NewtonianDynamics.dir/src/CTexture.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/0x18e/personal/programming/SDL_Projects/chess/src/CTexture.cpp > CMakeFiles/NewtonianDynamics.dir/src/CTexture.cpp.i

CMakeFiles/NewtonianDynamics.dir/src/CTexture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/NewtonianDynamics.dir/src/CTexture.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/0x18e/personal/programming/SDL_Projects/chess/src/CTexture.cpp -o CMakeFiles/NewtonianDynamics.dir/src/CTexture.cpp.s

CMakeFiles/NewtonianDynamics.dir/src/CWindowHandler.cpp.o: CMakeFiles/NewtonianDynamics.dir/flags.make
CMakeFiles/NewtonianDynamics.dir/src/CWindowHandler.cpp.o: /Users/0x18e/personal/programming/SDL_Projects/chess/src/CWindowHandler.cpp
CMakeFiles/NewtonianDynamics.dir/src/CWindowHandler.cpp.o: CMakeFiles/NewtonianDynamics.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/0x18e/personal/programming/SDL_Projects/chess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/NewtonianDynamics.dir/src/CWindowHandler.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/NewtonianDynamics.dir/src/CWindowHandler.cpp.o -MF CMakeFiles/NewtonianDynamics.dir/src/CWindowHandler.cpp.o.d -o CMakeFiles/NewtonianDynamics.dir/src/CWindowHandler.cpp.o -c /Users/0x18e/personal/programming/SDL_Projects/chess/src/CWindowHandler.cpp

CMakeFiles/NewtonianDynamics.dir/src/CWindowHandler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/NewtonianDynamics.dir/src/CWindowHandler.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/0x18e/personal/programming/SDL_Projects/chess/src/CWindowHandler.cpp > CMakeFiles/NewtonianDynamics.dir/src/CWindowHandler.cpp.i

CMakeFiles/NewtonianDynamics.dir/src/CWindowHandler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/NewtonianDynamics.dir/src/CWindowHandler.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/0x18e/personal/programming/SDL_Projects/chess/src/CWindowHandler.cpp -o CMakeFiles/NewtonianDynamics.dir/src/CWindowHandler.cpp.s

CMakeFiles/NewtonianDynamics.dir/src/Clock.cpp.o: CMakeFiles/NewtonianDynamics.dir/flags.make
CMakeFiles/NewtonianDynamics.dir/src/Clock.cpp.o: /Users/0x18e/personal/programming/SDL_Projects/chess/src/Clock.cpp
CMakeFiles/NewtonianDynamics.dir/src/Clock.cpp.o: CMakeFiles/NewtonianDynamics.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/0x18e/personal/programming/SDL_Projects/chess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/NewtonianDynamics.dir/src/Clock.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/NewtonianDynamics.dir/src/Clock.cpp.o -MF CMakeFiles/NewtonianDynamics.dir/src/Clock.cpp.o.d -o CMakeFiles/NewtonianDynamics.dir/src/Clock.cpp.o -c /Users/0x18e/personal/programming/SDL_Projects/chess/src/Clock.cpp

CMakeFiles/NewtonianDynamics.dir/src/Clock.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/NewtonianDynamics.dir/src/Clock.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/0x18e/personal/programming/SDL_Projects/chess/src/Clock.cpp > CMakeFiles/NewtonianDynamics.dir/src/Clock.cpp.i

CMakeFiles/NewtonianDynamics.dir/src/Clock.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/NewtonianDynamics.dir/src/Clock.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/0x18e/personal/programming/SDL_Projects/chess/src/Clock.cpp -o CMakeFiles/NewtonianDynamics.dir/src/Clock.cpp.s

CMakeFiles/NewtonianDynamics.dir/src/Utilities.cpp.o: CMakeFiles/NewtonianDynamics.dir/flags.make
CMakeFiles/NewtonianDynamics.dir/src/Utilities.cpp.o: /Users/0x18e/personal/programming/SDL_Projects/chess/src/Utilities.cpp
CMakeFiles/NewtonianDynamics.dir/src/Utilities.cpp.o: CMakeFiles/NewtonianDynamics.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/0x18e/personal/programming/SDL_Projects/chess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/NewtonianDynamics.dir/src/Utilities.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/NewtonianDynamics.dir/src/Utilities.cpp.o -MF CMakeFiles/NewtonianDynamics.dir/src/Utilities.cpp.o.d -o CMakeFiles/NewtonianDynamics.dir/src/Utilities.cpp.o -c /Users/0x18e/personal/programming/SDL_Projects/chess/src/Utilities.cpp

CMakeFiles/NewtonianDynamics.dir/src/Utilities.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/NewtonianDynamics.dir/src/Utilities.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/0x18e/personal/programming/SDL_Projects/chess/src/Utilities.cpp > CMakeFiles/NewtonianDynamics.dir/src/Utilities.cpp.i

CMakeFiles/NewtonianDynamics.dir/src/Utilities.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/NewtonianDynamics.dir/src/Utilities.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/0x18e/personal/programming/SDL_Projects/chess/src/Utilities.cpp -o CMakeFiles/NewtonianDynamics.dir/src/Utilities.cpp.s

CMakeFiles/NewtonianDynamics.dir/src/debug_level.cpp.o: CMakeFiles/NewtonianDynamics.dir/flags.make
CMakeFiles/NewtonianDynamics.dir/src/debug_level.cpp.o: /Users/0x18e/personal/programming/SDL_Projects/chess/src/debug_level.cpp
CMakeFiles/NewtonianDynamics.dir/src/debug_level.cpp.o: CMakeFiles/NewtonianDynamics.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/0x18e/personal/programming/SDL_Projects/chess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/NewtonianDynamics.dir/src/debug_level.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/NewtonianDynamics.dir/src/debug_level.cpp.o -MF CMakeFiles/NewtonianDynamics.dir/src/debug_level.cpp.o.d -o CMakeFiles/NewtonianDynamics.dir/src/debug_level.cpp.o -c /Users/0x18e/personal/programming/SDL_Projects/chess/src/debug_level.cpp

CMakeFiles/NewtonianDynamics.dir/src/debug_level.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/NewtonianDynamics.dir/src/debug_level.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/0x18e/personal/programming/SDL_Projects/chess/src/debug_level.cpp > CMakeFiles/NewtonianDynamics.dir/src/debug_level.cpp.i

CMakeFiles/NewtonianDynamics.dir/src/debug_level.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/NewtonianDynamics.dir/src/debug_level.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/0x18e/personal/programming/SDL_Projects/chess/src/debug_level.cpp -o CMakeFiles/NewtonianDynamics.dir/src/debug_level.cpp.s

CMakeFiles/NewtonianDynamics.dir/src/main.cpp.o: CMakeFiles/NewtonianDynamics.dir/flags.make
CMakeFiles/NewtonianDynamics.dir/src/main.cpp.o: /Users/0x18e/personal/programming/SDL_Projects/chess/src/main.cpp
CMakeFiles/NewtonianDynamics.dir/src/main.cpp.o: CMakeFiles/NewtonianDynamics.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/0x18e/personal/programming/SDL_Projects/chess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/NewtonianDynamics.dir/src/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/NewtonianDynamics.dir/src/main.cpp.o -MF CMakeFiles/NewtonianDynamics.dir/src/main.cpp.o.d -o CMakeFiles/NewtonianDynamics.dir/src/main.cpp.o -c /Users/0x18e/personal/programming/SDL_Projects/chess/src/main.cpp

CMakeFiles/NewtonianDynamics.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/NewtonianDynamics.dir/src/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/0x18e/personal/programming/SDL_Projects/chess/src/main.cpp > CMakeFiles/NewtonianDynamics.dir/src/main.cpp.i

CMakeFiles/NewtonianDynamics.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/NewtonianDynamics.dir/src/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/0x18e/personal/programming/SDL_Projects/chess/src/main.cpp -o CMakeFiles/NewtonianDynamics.dir/src/main.cpp.s

# Object files for target NewtonianDynamics
NewtonianDynamics_OBJECTS = \
"CMakeFiles/NewtonianDynamics.dir/src/CBasePlayer.cpp.o" \
"CMakeFiles/NewtonianDynamics.dir/src/CEngine.cpp.o" \
"CMakeFiles/NewtonianDynamics.dir/src/CEntity.cpp.o" \
"CMakeFiles/NewtonianDynamics.dir/src/CLogic.cpp.o" \
"CMakeFiles/NewtonianDynamics.dir/src/CParticle.cpp.o" \
"CMakeFiles/NewtonianDynamics.dir/src/CRenderer.cpp.o" \
"CMakeFiles/NewtonianDynamics.dir/src/CSDLManager.cpp.o" \
"CMakeFiles/NewtonianDynamics.dir/src/CSoundManager.cpp.o" \
"CMakeFiles/NewtonianDynamics.dir/src/CTexture.cpp.o" \
"CMakeFiles/NewtonianDynamics.dir/src/CWindowHandler.cpp.o" \
"CMakeFiles/NewtonianDynamics.dir/src/Clock.cpp.o" \
"CMakeFiles/NewtonianDynamics.dir/src/Utilities.cpp.o" \
"CMakeFiles/NewtonianDynamics.dir/src/debug_level.cpp.o" \
"CMakeFiles/NewtonianDynamics.dir/src/main.cpp.o"

# External object files for target NewtonianDynamics
NewtonianDynamics_EXTERNAL_OBJECTS =

NewtonianDynamics: CMakeFiles/NewtonianDynamics.dir/src/CBasePlayer.cpp.o
NewtonianDynamics: CMakeFiles/NewtonianDynamics.dir/src/CEngine.cpp.o
NewtonianDynamics: CMakeFiles/NewtonianDynamics.dir/src/CEntity.cpp.o
NewtonianDynamics: CMakeFiles/NewtonianDynamics.dir/src/CLogic.cpp.o
NewtonianDynamics: CMakeFiles/NewtonianDynamics.dir/src/CParticle.cpp.o
NewtonianDynamics: CMakeFiles/NewtonianDynamics.dir/src/CRenderer.cpp.o
NewtonianDynamics: CMakeFiles/NewtonianDynamics.dir/src/CSDLManager.cpp.o
NewtonianDynamics: CMakeFiles/NewtonianDynamics.dir/src/CSoundManager.cpp.o
NewtonianDynamics: CMakeFiles/NewtonianDynamics.dir/src/CTexture.cpp.o
NewtonianDynamics: CMakeFiles/NewtonianDynamics.dir/src/CWindowHandler.cpp.o
NewtonianDynamics: CMakeFiles/NewtonianDynamics.dir/src/Clock.cpp.o
NewtonianDynamics: CMakeFiles/NewtonianDynamics.dir/src/Utilities.cpp.o
NewtonianDynamics: CMakeFiles/NewtonianDynamics.dir/src/debug_level.cpp.o
NewtonianDynamics: CMakeFiles/NewtonianDynamics.dir/src/main.cpp.o
NewtonianDynamics: CMakeFiles/NewtonianDynamics.dir/build.make
NewtonianDynamics: /opt/homebrew/Cellar/sdl2/2.30.11/lib/libSDL2.dylib
NewtonianDynamics: /opt/homebrew/Cellar/sdl2/2.30.11/lib/libSDL2main.a
NewtonianDynamics: /opt/homebrew/Cellar/sdl2_image/2.8.4/lib/libSDL2_image.dylib
NewtonianDynamics: /opt/homebrew/Cellar/sdl2_mixer/2.8.0/lib/libSDL2_mixer.dylib
NewtonianDynamics: CMakeFiles/NewtonianDynamics.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/0x18e/personal/programming/SDL_Projects/chess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX executable NewtonianDynamics"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/NewtonianDynamics.dir/link.txt --verbose=$(VERBOSE)
	/opt/homebrew/Cellar/cmake/3.30.3/bin/cmake -E copy_directory /Users/0x18e/personal/programming/SDL_Projects/chess/sprites /Users/0x18e/personal/programming/SDL_Projects/chess/build/sprites
	/opt/homebrew/Cellar/cmake/3.30.3/bin/cmake -E copy_directory /Users/0x18e/personal/programming/SDL_Projects/chess/sound /Users/0x18e/personal/programming/SDL_Projects/chess/build/sound

# Rule to build all files generated by this target.
CMakeFiles/NewtonianDynamics.dir/build: NewtonianDynamics
.PHONY : CMakeFiles/NewtonianDynamics.dir/build

CMakeFiles/NewtonianDynamics.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/NewtonianDynamics.dir/cmake_clean.cmake
.PHONY : CMakeFiles/NewtonianDynamics.dir/clean

CMakeFiles/NewtonianDynamics.dir/depend:
	cd /Users/0x18e/personal/programming/SDL_Projects/chess/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/0x18e/personal/programming/SDL_Projects/chess /Users/0x18e/personal/programming/SDL_Projects/chess /Users/0x18e/personal/programming/SDL_Projects/chess/build /Users/0x18e/personal/programming/SDL_Projects/chess/build /Users/0x18e/personal/programming/SDL_Projects/chess/build/CMakeFiles/NewtonianDynamics.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/NewtonianDynamics.dir/depend

