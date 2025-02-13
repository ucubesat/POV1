module POVModule {
    @ Test component for a USB camera
    passive component USBCamera {

        ###############################################################################
        # General Ports
        ###############################################################################

        @ Port for receiving the image request
        sync input port imageRequest: Command

        @ Port for sending the buffer back to the requestor
        output port imageFileNameSend: FileNameSend

        ###############################################################################
        # Events
        ###############################################################################

        @ Image taken
        event ImageTaken severity activity low format "Image taken."

        @ Camera detection successful event
        event CameraDetected severity activity low format "Camera detected!" 

        @ Camera detection failed event
        event CameraNotDetected severity warning high format "Failed to detect a valid camera."

        @ Image write successful event
        event ImageWritten severity activity low format "Image file written."

        @ Image write failed event
        event ImageWriteFailed severity warning high format "Failed to save write image to file."

        ###############################################################################
        # Telemetry
        ###############################################################################

        @ Number of images taken
        telemetry NumImagesTaken: U32 update on change

        ###############################################################################
        # Standard AC Ports: Required for Channels, Events, Commands, and Parameters  #
        ###############################################################################
        @ Port for requesting the current time
        time get port timeCaller

        @ Port for sending command registrations
        command reg port cmdRegOut

        @ Port for receiving commands
        command recv port cmdIn

        @ Port for sending command responses
        command resp port cmdResponseOut

        @ Port for sending textual representation of events
        text event port logTextOut

        @ Port for sending events to downlink
        event port logOut

        @ Port for sending telemetry channels to downlink
        telemetry port tlmOut

        @ Port to return the value of a parameter
        param get port prmGetOut

        @Port to set the value of a parameter
        param set port prmSetOut

    }
}