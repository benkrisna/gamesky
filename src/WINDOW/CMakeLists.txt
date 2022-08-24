add_library(WINDOW window.cpp)

target_include_directories(WINDOW 
                          INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}
                          ${OPENGL_INCLUDE_DIRS}
                          ${GLUT_INCLUDE_DIRS}
                          )

find_package(OpenGL REQUIRED)
find_package(GLUT REQUIRED)

target_link_libraries(WINDOW ${OPENGL_LIBRARIES} ${GLUT_LIBRARY})
