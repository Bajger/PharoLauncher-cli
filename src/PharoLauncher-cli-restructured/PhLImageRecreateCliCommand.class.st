"
I represent Pharo Image recreate sub-command invoked from cmd line of Pharo Launcher. My responsibility is to drop existing image and create new based on same image template, from which was image originally created. 

I declare: 
- mandatory positional with existing image name
- optional flag for specifying new image name (other than existing)

I execute:
- recreate existing local image based on specified image name (drop old, create new)
"
Class {
	#name : #PhLImageRecreateCliCommand,
	#superclass : #PhLImageCliCommand,
	#category : #'PharoLauncher-cli-restructured-PharoLauncher-cli-restructured'
}

{ #category : #'command line' }
PhLImageRecreateCliCommand class >> asCliCommand [

	^ self newLauncherCommand: #recreate
]
