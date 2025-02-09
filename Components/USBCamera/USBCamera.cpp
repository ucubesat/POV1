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

  }

  USBCamera ::
    ~USBCamera()
  {

  }

  // ----------------------------------------------------------------------
  // Handler implementations for user-defined typed input ports
  // ----------------------------------------------------------------------

  void USBCamera ::
    imageRequest_handler(FwIndexType portNum)
  {
    // Request buffer
    U32 size = this->imageSize;
    this->imgBuffer = this->allocate_out(0, size);

    // Check that buffer is correct size
    if (imgBuffer.getSize() < size)
    {
      // Deallocate the buffer
      this->deallocate_out(0, imgBuffer);
      // Emit warning event that buffer was not allocated properly
      this->log_WARNING_LO_MemoryAllocationFailed();
    }
    else 
    {
      // Emit event that image was taken
      this->log_ACTIVITY_LO_ImageTaken();
      // Log telemetry of images taken
      this->tlmWrite_NumImagesTaken(++numImagesTaken);
      // Send the image data to the Driver
      this->imageSend_out(0, this->imageSize, this->imageResolution, imgBuffer);
    }
  }

}
