#define CV_CPU_SIMD_FILENAME "/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/opencv-4.x/modules/core/src/matmul.simd.hpp"
#define CV_CPU_DISPATCH_MODE NEON_DOTPROD
#include "opencv2/core/private/cv_cpu_include_simd_declarations.hpp"

#define CV_CPU_DISPATCH_MODES_ALL NEON_DOTPROD, BASELINE

#undef CV_CPU_SIMD_FILENAME
