
cmake_minimum_required(VERSION 3.20)
project(NewtonianDynamics)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Collect your sources
file(GLOB_RECURSE SOURCES
    "${PROJECT_SOURCE_DIR}/src/*.cpp"
    "${PROJECT_SOURCE_DIR}/src/*.h"
)

# Create the executable
add_executable(NewtonianDynamics ${SOURCES})

# (Optional) Build shared libraries if needed
set(BUILD_SHARED_LIBS ON CACHE BOOL "Build shared libraries" FORCE)

# ------------------------------------------------------------------------
#  FIND SDL2, SDL2_image, and SDL2_mixer installed via Homebrew
# ------------------------------------------------------------------------
# Modern SDL2 CMake packages (on macOS Homebrew) usually provide targets:
#   SDL2::SDL2
#   SDL2::SDL2main
#   SDL2_image::SDL2_image
#   SDL2_mixer::SDL2_mixer
# If this doesn't work, you may need custom FindSDL2.cmake or do a manual search.

find_package(SDL2 REQUIRED)
find_package(SDL2_image REQUIRED)
find_package(SDL2_mixer REQUIRED)

# Link your target against these libraries
target_link_libraries(NewtonianDynamics
    PUBLIC
        SDL2::SDL2
        SDL2::SDL2main
        SDL2_image::SDL2_image
        SDL2_mixer::SDL2_mixer
)

# ------------------------------------------------------------------------
#  Copy resource files to the output directory after build
# ------------------------------------------------------------------------
add_custom_command(TARGET NewtonianDynamics POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_directory
        "${PROJECT_SOURCE_DIR}/sprites"
        "$<TARGET_FILE_DIR:NewtonianDynamics>/sprites"
)

add_custom_command(TARGET NewtonianDynamics POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_directory
        "${PROJECT_SOURCE_DIR}/sound"
        "$<TARGET_FILE_DIR:NewtonianDynamics>/sound"
)


