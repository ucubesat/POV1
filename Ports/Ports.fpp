module POVModule {
    
    @ Port for requesting image data
    port ImageReqest(
    )

    @ Port for sending image data
    port ImageSend(
        imageSize: U32 @< Size of the image in bytes
        resolution: U32 @< Resolution of the image
        ref data: Fw.Buffer @< The image buffer to send
    )
}