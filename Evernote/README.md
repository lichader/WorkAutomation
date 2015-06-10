# Evernote
What you need to do is:

1. Put the plist file into the directory: "~/Library/LaunchAgents/"
2. Make sure the sh file has "X" permission

Launchctl will automatically load the configuration file when user log in. 

But there is a way to manually load and start it for testing. 

### to load a configuration 
launchctl load %FILE_PATH%

### manually start it
launchctl start %SERVICE_NAME%