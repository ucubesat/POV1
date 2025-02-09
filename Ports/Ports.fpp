module POVModule {
    
    @ Port for requesting image data
    port ImageReqest(
    )

    @ Port for sending image data
    port ImageSend(
        imageSize: U32 @< Size of the image in bytes
        length: U32 @< Length of the image
        width: U32 @< Width of the image
        ref data: Fw.Buffer @< The image buffer to send
    )

    @ Port for confirming that image was taken
    port ImageConfirmation(
        imageSize: U32 @< Size of the image in bytes
        length: U32 @< Length of the image
        width: U32 @< Width of the image
    )
}