# Install script for directory: /home/agilsoul/FPrime-Projects/POV-1/libs/opencv/opencv-4.x

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/opencv4" TYPE FILE RENAME "flatbuffers-LICENSE.txt" FILES "/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/opencv-4.x/3rdparty/flatbuffers/LICENSE.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/opencv4" TYPE FILE RENAME "opencl-headers-LICENSE.txt" FILES "/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/opencv-4.x/3rdparty/include/opencl/LICENSE.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/opencv4" TYPE FILE RENAME "ade-LICENSE" FILES "/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/3rdparty/ade/ade-0.1.2e/LICENSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE FILES "/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/cvconfig.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE FILES "/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/opencv2/opencv_modules.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv4/OpenCVModules.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv4/OpenCVModules.cmake"
         "/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/CMakeFiles/Export/51ea738ee2ea68756d9122094dacc2a4/OpenCVModules.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv4/OpenCVModules-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv4/OpenCVModules.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv4" TYPE FILE FILES "/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/CMakeFiles/Export/51ea738ee2ea68756d9122094dacc2a4/OpenCVModules.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv4" TYPE FILE FILES "/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/CMakeFiles/Export/51ea738ee2ea68756d9122094dacc2a4/OpenCVModules-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv4" TYPE FILE FILES
    "/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/unix-install/OpenCVConfig-version.cmake"
    "/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/unix-install/OpenCVConfig.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "scripts" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES "/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/CMakeFiles/install/setup_vars_opencv4.sh")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4" TYPE FILE FILES
    "/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/opencv-4.x/platforms/scripts/valgrind.supp"
    "/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/opencv-4.x/platforms/scripts/valgrind_3rdparty.supp"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/3rdparty/openjpeg/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/3rdparty/protobuf/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/3rdparty/carotene/hal/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/3rdparty/ittnotify/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/include/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/.firstpass/calib3d/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/.firstpass/core/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/.firstpass/dnn/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/.firstpass/features2d/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/.firstpass/flann/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/.firstpass/gapi/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/.firstpass/highgui/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/.firstpass/imgcodecs/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/.firstpass/imgproc/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/.firstpass/java/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/.firstpass/js/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/.firstpass/ml/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/.firstpass/objc/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/.firstpass/objdetect/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/.firstpass/photo/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/.firstpass/python/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/.firstpass/stitching/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/.firstpass/ts/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/.firstpass/video/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/.firstpass/videoio/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/.firstpass/world/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/core/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/flann/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/imgproc/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/ml/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/photo/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/python_tests/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/dnn/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/features2d/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/imgcodecs/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/videoio/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/calib3d/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/highgui/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/objdetect/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/stitching/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/ts/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/video/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/gapi/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/java_bindings_generator/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/js_bindings_generator/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/objc_bindings_generator/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/python_bindings_generator/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/modules/java/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/doc/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/data/cmake_install.cmake")
  include("/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/apps/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/agilsoul/FPrime-Projects/POV-1/libs/opencv/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
