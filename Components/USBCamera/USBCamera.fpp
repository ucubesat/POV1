module POVModule {
    @ Test component for a USB camera
    passive component USBCamera {

        ###############################################################################
        # General Ports
        ###############################################################################

        @ Port for receiving the image request
        sync input port imageRequest: ImageReqest

        @ Buffer request port
        output port allocate: Fw.BufferGet

        @ Buffer deallocate port
        output port deallocate: Fw.BufferSend

        @ Port for sending the buffer back to the requestor
        output port imageSend: ImageSend

        ###############################################################################
        # Events
        ###############################################################################

        @ Image taken
        event ImageTaken severity activity low id 0 format "Image taken"

        @ Camera detection successful event
        event CameraDetected severity activity low id 1 format "Camera detected!" 

        @ Camera detection failed event
        event CameraNotDetected severity warning high id 2 format "Failed to detect a valid camera."

        @ Allocation failed event
        event MemoryAllocationFailed severity warning high id 3 format "Failed to allocate buffer"

        @ Buffer set failed event
        event BufferSetFailed (
                error: string size 100 @< Error from buffer set
        ) severity warning high id 4 format "Failed to set buffer with error {}"

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