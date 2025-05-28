// ======================================================================
// \title  SolarPower.hpp
// \author agilsoul
// \brief  hpp file for SolarPower component implementation class
// ======================================================================

#ifndef POVModule_SolarPower_HPP
#define POVModule_SolarPower_HPP

#include "Components/SolarPower/SolarPowerComponentAc.hpp"

namespace POVModule {

  class SolarPower :
    public SolarPowerComponentBase
  {

    public:

      // ----------------------------------------------------------------------
      // Component construction and destruction
      // ----------------------------------------------------------------------

      //! Construct SolarPower object
      SolarPower(
          const char* const compName //!< The component name
      );

      //! Destroy SolarPower object
      ~SolarPower();

    PRIVATE:

      // ----------------------------------------------------------------------
      // Handler implementations for user-defined typed input ports
      // ----------------------------------------------------------------------

      //! Handler implementation for powerLevelRequest
      //!
      //! Port for receiving the command to send power level
      void powerLevelRequest_handler(
          FwIndexType portNum //!< The port number
      ) override;

  };

}

#endif
