# CMake generated Testfile for 
# Source directory: /home/gabewsl/POV1/libs/opencv/opencv-4.x/modules/flann
# Build directory: /home/gabewsl/POV1/libs/opencv/build/modules/flann
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_flann "/home/gabewsl/POV1/libs/opencv/build/bin/opencv_test_flann" "--gtest_output=xml:opencv_test_flann.xml")
set_tests_properties(opencv_test_flann PROPERTIES  LABELS "Main;opencv_flann;Accuracy" WORKING_DIRECTORY "/home/gabewsl/POV1/libs/opencv/build/test-reports/accuracy" _BACKTRACE_TRIPLES "/home/gabewsl/POV1/libs/opencv/opencv-4.x/cmake/OpenCVUtils.cmake;1799;add_test;/home/gabewsl/POV1/libs/opencv/opencv-4.x/cmake/OpenCVModule.cmake;1365;ocv_add_test_from_target;/home/gabewsl/POV1/libs/opencv/opencv-4.x/cmake/OpenCVModule.cmake;1123;ocv_add_accuracy_tests;/home/gabewsl/POV1/libs/opencv/opencv-4.x/modules/flann/CMakeLists.txt;2;ocv_define_module;/home/gabewsl/POV1/libs/opencv/opencv-4.x/modules/flann/CMakeLists.txt;0;")
