/*
 * Trial License - for use to evaluate programs for possible purchase as
 * an end-user only.
 *
 * Project.c
 *
 * Code generation for function 'Project'
 *
 */

/* Include files */
#include "Project.h"

/* Function Definitions */
void Project(const int T[2], int K, const int A[6], int X, int h[3])
{
  int i;
  int g;
  int j;
  (void)T;
  (void)K;
  (void)A;
  h[0] = 0;
  h[1] = 0;
  h[2] = 0;
  for (i = 0; i < 2; i++) {
    g = 1;
    for (j = 0; j < 6; j++) {
      if (X == 0) {
        if (g > 2147483646) {
          g = MAX_int32_T;
        } else {
          g++;
        }
      } else {
        g = (g - 1) / 2;
        if ((h[i] < 0) && (g < MIN_int32_T - h[i])) {
          g = MIN_int32_T;
        } else if ((h[i] > 0) && (g > MAX_int32_T - h[i])) {
          g = MAX_int32_T;
        } else {
          g += h[i];
        }

        h[i + 1] = g;
        g = 0;
      }
    }

    g /= 2;
    if ((h[i] < 0) && (g < MIN_int32_T - h[i])) {
      g = MIN_int32_T;
    } else if ((h[i] > 0) && (g > MAX_int32_T - h[i])) {
      g = MAX_int32_T;
    } else {
      g += h[i];
    }

    h[i + 1] = g;
  }
}

/* End of code generation (Project.c) */
