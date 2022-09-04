#include "window.h"
#include <stdlib.h>
#include <GL/glut.h>


void displayMe() {
  float angle = 0.0f;
  glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

  glLoadIdentity();

  gluLookAt( 0.0f, 0.0f, 10.0f,
             0.0f, 0.0f, 0.0f,
             0.0f, 1.0f, 0.0f);

  glRotatef(angle, 0.0f, 1.0f, 0.0f);
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
  
  angle += 0.01f;

  // Flush drawing command buffer to make drawing happen ASAP
  // glFlush();
  glutSwapBuffers();
}

void changeSize(int w, int h) {
  // In cases the height is 0, set it to 1
  if (h == 0) {
    h = 1;
  }

  float ratio = 1.0 * w / h;

  // Set current matrix to be the projection matrix
  glMatrixMode(GL_PROJECTION);

  // Load identity matrix
  glLoadIdentity();
  
  // Setting the viewport to be the whole window
  glViewport(0, 0, w, h);

  gluPerspective(45, ratio, 1, 1000);

  glMatrixMode(GL_MODELVIEW);
}

void createInitWindow(const int N) {
  Ngrid = N;
  glutInitWindowSize(1080, 960);
  glutInitWindowPosition(0, 0);
  glutCreateWindow("Hello World!");

  glutDisplayFunc(displayMe);

  glutReshapeFunc(changeSize);

  glutIdleFunc(displayMe);
}
