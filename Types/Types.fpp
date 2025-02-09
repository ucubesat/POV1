module POVModule {
    @ Serializable
    struct ImageData {
        # timestamp: Fw.Time @< Time when image is taken
        imageSize: U32 @< Size of the image in bytes
        resolution: U32 @< Resolution of the image
        imageData: [256] U8 @< Image byte data
    }
}