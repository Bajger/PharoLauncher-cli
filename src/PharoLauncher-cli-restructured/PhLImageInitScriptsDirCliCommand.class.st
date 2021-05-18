Class {
	#name : #PhLImageInitScriptsDirCliCommand,
	#superclass : #PhLImageCliCommand,
	#category : #'PharoLauncher-cli-restructured-PharoLauncher-cli-restructured'
}

{ #category : #'command line' }
PhLImageInitScriptsDirCliCommand class >> asCliCommand [

	^ self newLauncherCommand: #initScriptDir
]
