#include "window.h"
#include <stdlib.h>
#include <GL/glut.h>


void displayMe() {
  glClear(GL_COLOR_BUFFER_BIT);
  /*
  glBegin(GL_POLYGON);
    glColor3f(1, 0, 0); glVertex3f(0.5, 0.0, 0.5);
    glColor3f(0, 1, 0); glVertex3f(0.5, 0.0, 0.0);
    glColor3f(0, 0, 1); glVertex3f(0.0, 0.5, 0.0);
  glEnd();
  */
  const float xmax = 0.50;
  const float ymax = 0.50;

  const float dx = 2. * xmax / Ngrid;

  for (int i = 0 ; i < Ngrid ; i++) {
    for (int j = 0 ; j < Ngrid ; j++) {
      glColor3f(rand() % 2, rand() % 2, rand() % 2); glRectf(-xmax + dx * i, -ymax + dx * j, -xmax + dx * (i + 1), -ymax + dx * (j + 1));
    }
  }

  // Flush drawing command buffer to make drawing happen ASAP
  glFlush();
}

void createInitWindow(const int N) {
  Ngrid = N;
  glutInitWindowSize(1080, 960);
  glutInitWindowPosition(0, 0);
  glutCreateWindow("Hello World!");

  glutDisplayFunc(displayMe);
}
