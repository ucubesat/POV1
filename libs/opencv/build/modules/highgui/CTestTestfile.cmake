# CMake generated Testfile for 
# Source directory: /home/agilsoul/FPrime-Projects/POV-1/libs/opencv/opencv-4.x/modules/highgui
# Build directory: /home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/highgui
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_highgui "/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/bin/opencv_test_highgui" "--gtest_output=xml:opencv_test_highgui.xml")
set_tests_properties(opencv_test_highgui PROPERTIES  LABELS "Main;opencv_highgui;Accuracy" WORKING_DIRECTORY "/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/test-reports/accuracy" _BACKTRACE_TRIPLES "/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/opencv-4.x/cmake/OpenCVUtils.cmake;1799;add_test;/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/opencv-4.x/cmake/OpenCVModule.cmake;1365;ocv_add_test_from_target;/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/opencv-4.x/modules/highgui/CMakeLists.txt;311;ocv_add_accuracy_tests;/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/opencv-4.x/modules/highgui/CMakeLists.txt;0;")
