cmake_minimum_required(VERSION 3.15)

project(MyGame VERSION 1.0)

set(CMAKE_CXX_STANDARD 14)

add_subdirectory(WINDOW)
list(APPEND MYLIBS WINDOW)

add_executable(main main.cpp)

find_package(OpenGL REQUIRED)
find_package(GLUT REQUIRED)

include_directories(${OPENGL_INCLUDE_DIRS} ${GLUT_INCLUDE_DIRS})

target_link_libraries(main ${OPENGL_LIBRARIES} ${GLUT_LIBRARY} ${MYLIBS})
