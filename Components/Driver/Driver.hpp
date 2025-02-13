// ======================================================================
// \title  Driver.hpp
// \author agilsoul
// \brief  hpp file for Driver component implementation class
// ======================================================================

#ifndef POVModule_Driver_HPP
#define POVModule_Driver_HPP

#include "Components/Driver/DriverComponentAc.hpp"
#include <opencv2/opencv.hpp>

namespace POVModule {

  class Driver :
    public DriverComponentBase
  {

    public:

      // ----------------------------------------------------------------------
      // Component construction and destruction
      // ----------------------------------------------------------------------

      //! Construct Driver object
      Driver(
          const char* const compName //!< The component name
      );

      //! Destroy Driver object
      ~Driver();

    PRIVATE:

      // ----------------------------------------------------------------------
      // Handler implementations for user-defined typed input ports
      // ----------------------------------------------------------------------

      //! Handler implementation for imageFileNameReceive
      //!
      //! Port for receiving image file name
      void imageFileNameReceive_handler(
        FwIndexType portNum, //!< The port number
        const Fw::StringBase& fileName //!< Filename being sent
    ) override;

    PRIVATE:

      // ----------------------------------------------------------------------
      // Handler implementations for commands
      // ----------------------------------------------------------------------

      //! Handler implementation for command TAKE_IMAGE
      void TAKE_IMAGE_cmdHandler(
          FwOpcodeType opCode, //!< The opcode
          U32 cmdSeq //!< The command sequence number
      ) override;

  };

}

#endif
