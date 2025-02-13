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
    // TODO
  }

}
