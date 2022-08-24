#include <stdlib.h>
#include <time.h>
#include <string>
#include <GL/glut.h>

#include "window.h"


int main(int argc, char* argv[]) {
  srand(time(NULL));

  // Process input
  const int N = atof(argv[1]); // Number of grid points

  glutInit(&argc, argv);
  glutInitDisplayMode(GLUT_SINGLE);

  createInitWindow(N);

  glutMainLoop();

  return 0;
}
