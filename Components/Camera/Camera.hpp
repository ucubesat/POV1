// ======================================================================
// \title  Camera.hpp
// \author agilsoul
// \brief  hpp file for Camera component implementation class
// ======================================================================

#ifndef POVModule_Camera_HPP
#define POVModule_Camera_HPP

#include "Components/Camera/CameraComponentAc.hpp"

namespace POVModule {

  class Camera :
    public CameraComponentBase
  {

    public:

      // ----------------------------------------------------------------------
      // Component construction and destruction
      // ----------------------------------------------------------------------

      //! Construct Camera object
      Camera(
          const char* const compName //!< The component name
      );

      //! Destroy Camera object
      ~Camera();

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

      // ----------------------------------------------------------------------
      // Handler implementations for commands
      // ----------------------------------------------------------------------

      //! Handler implementation for command TEST_CMD
      void TEST_CMD_cmdHandler(
          FwOpcodeType opCode, //!< The opcode
          U32 cmdSeq //!< The command sequence number
      ) override;
      
    PRIVATE:
      U32 imageSize = 1024;
      U32 imageResolution = 32;
      U32 numImagesTaken = 0;

  };

}

#endif
