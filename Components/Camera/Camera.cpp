// ======================================================================
// \title  Camera.cpp
// \author agilsoul
// \brief  cpp file for Camera component implementation class
// ======================================================================

#include "Components/Camera/Camera.hpp"
#include "FpConfig.hpp"

namespace POVModule {

  // ----------------------------------------------------------------------
  // Component construction and destruction
  // ----------------------------------------------------------------------

  Camera ::
    Camera(const char* const compName) :
      CameraComponentBase(compName)
  {

  }

  Camera ::
    ~Camera()
  {

  }

  // ----------------------------------------------------------------------
  // Handler implementations for user-defined typed input ports
  // ----------------------------------------------------------------------

  void Camera ::
    imageRequest_handler(FwIndexType portNum)
  {
    // Request buffer
    U32 size = this->imageSize;
    Fw::Buffer imgBuffer = this->allocate_out(0, size);

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

  // ----------------------------------------------------------------------
  // Handler implementations for commands
  // ----------------------------------------------------------------------

  void Camera ::
    TEST_CMD_cmdHandler(
        FwOpcodeType opCode,
        U32 cmdSeq
    )
  {
    // TODO
    this->cmdResponse_out(opCode, cmdSeq, Fw::CmdResponse::OK);
  }

}
