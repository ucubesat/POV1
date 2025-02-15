// ======================================================================
// \title  USBCamera.cpp
// \author agilsoul
// \brief  cpp file for USBCamera component implementation class
// ======================================================================

#include "Components/USBCamera/USBCamera.hpp"
#include "FpConfig.hpp"

namespace POVModule {

  // ----------------------------------------------------------------------
  // Component construction and destruction
  // ----------------------------------------------------------------------

  USBCamera ::
    USBCamera(const char* const compName) :
      USBCameraComponentBase(compName)
  {
    camera = cv::VideoCapture(0);
  }

  USBCamera ::
    ~USBCamera()
  {
    this->camera.release();
  }

  // ----------------------------------------------------------------------
  // Handler implementations for user-defined typed input ports
  // ----------------------------------------------------------------------

  void USBCamera ::
    imageRequest_handler(FwIndexType portNum)
  {
    // Check if camera is detected
    if (!this->camera.isOpened()) 
    {
      this->log_WARNING_HI_CameraNotDetected();
    }
    else
    {
      this->log_ACTIVITY_LO_CameraDetected();

      // Take picture
      this->camera.read(this->frame);

      // Emit event that image was taken
      this->log_ACTIVITY_LO_ImageTaken();

      std::string fileName = this->IMAGE_FILE_NAME + std::to_string(this->numImagesTaken) + ".jpg";

      bool writeResult = imwrite("downlink/" + fileName, frame);
      if (writeResult)
      {
        // Emit event that image was written
        this->log_ACTIVITY_LO_ImageWritten();

        // Log telemetry of images taken
        this->tlmWrite_NumImagesTaken(++numImagesTaken);

        // Send the image data to the Driver
        this->imageFileNameSend_out(FwIndexType(0), Fw::String(fileName.c_str()));
      }
      else
      {
        // Emit warning that image was not written
        this->log_WARNING_HI_ImageWriteFailed();
      }

      // Empty out frame
      this->frame.release();
    }
  }
}
