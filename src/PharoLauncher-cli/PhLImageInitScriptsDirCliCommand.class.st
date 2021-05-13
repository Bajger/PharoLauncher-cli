Class {
	#name : #PhLImageInitScriptsDirCliCommand,
	#superclass : #PhLImageCliCommand,
	#category : #'PharoLauncher-cli'
}

{ #category : #'command line' }
PhLImageInitScriptsDirCliCommand class >> asCliCommand [

	^ self newLauncherCommand: #initScriptDir
]
