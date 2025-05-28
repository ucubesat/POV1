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
    imageFileNameReceive_handler(
        FwIndexType portNum,
        const Fw::StringBase& fileName
    )
  {
    // Emit event that image data was received
    this->log_ACTIVITY_LO_ImageFileNameReceived(fileName);
  }

  void Driver ::
    powerLevelReceive_handler(
        FwIndexType portNum,
        U32 level
    )
  {
    // TODO
  }

  void Driver ::
    rateGroupIn_handler(
        FwIndexType portNum,
        U32 context
    )
  {
    
    if (counter % 4 == 0)
    {
      // Send image request command to camera
      this->imageRequest_out(0);
      // Emit event that image request was sent
      this->log_ACTIVITY_LO_ImageRequested();
    }
    counter++;
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
    // // Send image request command to camera
    // this->imageRequest_out(0);
    // // Emit event that image request was sent
    // this->log_ACTIVITY_LO_ImageRequested();

    // this->cmdResponse_out(opCode, cmdSeq, Fw::CmdResponse::OK);
  }

}
