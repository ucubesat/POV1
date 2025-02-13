module POVModule {
    
    @ Port for sending an empty command
    port Command(
    )

    @ Port for sending a filename
    port FileNameSend(
        fileName: string size 100 @< Filename being sent
    )
}