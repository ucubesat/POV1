// ======================================================================
// \title  Driver.cpp
// \author agilsoul
// \brief  cpp file for Driver component implementation class
// ======================================================================

#include "Components/Driver/Driver.hpp"
#include "FpConfig.hpp"

namespace POVModule {

  // ----------------------------------------------------------------------
  // Component construction and destruction
  // ----------------------------------------------------------------------

  Driver ::
    Driver(const char* const compName) :
      DriverComponentBase(compName)
  {
    
  }

  Driver ::
    ~Driver()
  {

  }

  // ----------------------------------------------------------------------
  // Handler implementations for user-defined typed input ports
  // ----------------------------------------------------------------------

  void Driver ::
    imageReceive_handler(
        FwIndexType portNum,
        U32 imageSize,
        U32 resolution,
        const Fw::Buffer& data
    )
  {
    // Emit event that image data was received
    this->log_ACTIVITY_LO_ImageReceived();
    // Deallocate buffer
    // Fw::Buffer* dataAddress;
    // this->deallocate_out(0, *(data));
  }

  // ----------------------------------------------------------------------
  // Handler implementations for commands
  // ----------------------------------------------------------------------

  void Driver ::
    TAKE_IMAGE_cmdHandler(
        FwOpcodeType opCode,
        U32 cmdSeq
    )
  {
    // Send image request command to camera
    this->imageRequest_out(0);
    // Emit event that image request was sent
    this->log_ACTIVITY_LO_ImageRequested();

    this->cmdResponse_out(opCode, cmdSeq, Fw::CmdResponse::OK);
  }

}
