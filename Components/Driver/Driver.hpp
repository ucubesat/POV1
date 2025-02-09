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

      //! Handler implementation for imageReceive
      //!
      //! Port for receiving image data
      void imageReceive_handler(
        FwIndexType portNum, //!< The port number
        U32 imageSize, //!< Size of the image in bytes
        U32 length, //!< Length of the image
        U32 width, //!< Width of the image
        Fw::Buffer& data //!< The image buffer to send
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
