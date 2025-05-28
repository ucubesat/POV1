// ======================================================================
// \title  SolarPower.cpp
// \author agilsoul
// \brief  cpp file for SolarPower component implementation class
// ======================================================================

#include "Components/SolarPower/SolarPower.hpp"
#include "FpConfig.hpp"

namespace POVModule {

  // ----------------------------------------------------------------------
  // Component construction and destruction
  // ----------------------------------------------------------------------

  SolarPower ::
    SolarPower(const char* const compName) :
      SolarPowerComponentBase(compName)
  {

  }

  SolarPower ::
    ~SolarPower()
  {

  }

  // ----------------------------------------------------------------------
  // Handler implementations for user-defined typed input ports
  // ----------------------------------------------------------------------

  void SolarPower ::
    powerLevelRequest_handler(FwIndexType portNum)
  {
    // TODO
  }

}
