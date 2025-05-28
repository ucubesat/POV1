module POVModule {
    
    @ Port for sending an empty command
    port Command(
    )

    @ Port for sending a filename
    port FileNameSend(
        fileName: string size 100 @< Filename being sent
    )

    @ Port for sending power levels
    port PowerLevel(
        level: U32 @< Power level being sent
    )
}