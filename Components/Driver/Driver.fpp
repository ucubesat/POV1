module POVModule {
    @ The driving component and command dispatcher
    active component Driver {

        ###############################################################################
        # Commands
        ###############################################################################
        async command TAKE_IMAGE

        ###############################################################################
        # General Ports
        ###############################################################################

        @ Port for sending the image request
        output port imageRequest: Command

        @ Port for receiving image file name
        async input port imageFileNameReceive: FileNameSend

        ###############################################################################
        # Events
        ###############################################################################

        @ Image command sent
        event ImageRequested severity activity low format "Image Command Sent."

        @ Image filename received
        event ImageFileNameReceived(
            filename: string size 100 @< Filename received
        ) severity activity low format "Received image filename: {}"

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