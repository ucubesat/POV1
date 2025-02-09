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
      // Convert frame format to unsigned 8 bit chars
      this->frame.convertTo(this->frame, CV_8UC3);
      imwrite("captured_imageUSBCamera.jpg", frame);

      // Request buffer
      // size_t size = this->frame.step[0] * this->frame.rows;
      U32 size = 1024; // Temporary size, ignore it
      this->imgBuffer = this->allocate_out(0, size);

      // Check that buffer is correct size
      if (imgBuffer.getSize() < size)
      {
        // Deallocate the buffer
        this->deallocate_out(0, imgBuffer);
        // Emit warning event that buffer was not allocated properly
        this->log_WARNING_HI_MemoryAllocationFailed();
      }
      else 
      {
        // Emit event that image was taken
        this->log_ACTIVITY_LO_ImageTaken();
        // Log telemetry of images taken
        this->tlmWrite_NumImagesTaken(++numImagesTaken);

        // Flatten image data
        U32 rows = this->frame.rows;
        U32 cols = this->frame.cols;
        this->frame = this->frame.reshape(1);
        // Fill image buffer with data
        imgBuffer.set(this->frame.data, size);
        // Send the image data to the Driver
        this->imageSend_out(FwIndexType(0), size, cols, rows, imgBuffer);
      }
    }

    
  }

}
