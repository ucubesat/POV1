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
        output port imageRequest: ImageReqest
        
        @ Port for receiving the image buffer from the Camera
        output port imageSend: Fw.BufferSend

        @ Buffer request port
        output port deallocate: Fw.BufferSend

        @ Port for receiving image data
        async input port imageReceive: ImageSend

        ###############################################################################
        # Events
        ###############################################################################

        @ Image taken
        event ImageRequested severity activity low format "Image Request Sent"

        @ Image received
        event ImageReceived severity activity low format "Image buffer received"

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