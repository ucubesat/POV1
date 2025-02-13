// ======================================================================
// \title  USBCamera.hpp
// \author agilsoul
// \brief  hpp file for USBCamera component implementation class
// ======================================================================

#ifndef POVModule_USBCamera_HPP
#define POVModule_USBCamera_HPP

#include "Components/USBCamera/USBCameraComponentAc.hpp"
#include <opencv2/opencv.hpp>
#include <string>

namespace POVModule {

  class USBCamera :
    public USBCameraComponentBase
  {

    public:

      // ----------------------------------------------------------------------
      // Component construction and destruction
      // ----------------------------------------------------------------------

      //! Construct USBCamera object
      USBCamera(
          const char* const compName //!< The component name
      );

      //! Destroy USBCamera object
      ~USBCamera();

    PRIVATE:

      // ----------------------------------------------------------------------
      // Handler implementations for user-defined typed input ports
      // ----------------------------------------------------------------------

      //! Handler implementation for imageRequest
      //!
      //! Port for receiving the image request
      void imageRequest_handler(
          FwIndexType portNum //!< The port number
      ) override;

    PRIVATE:

      U32 numImagesTaken = 0;

      cv::VideoCapture camera;
      cv::Mat frame;

      std::string IMAGE_FILE_NAME = "captured_imageUSBCamera.jpg";
  };

}

#endif
