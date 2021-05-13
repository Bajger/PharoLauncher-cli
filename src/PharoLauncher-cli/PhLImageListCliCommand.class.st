Class {
	#name : #PhLImageListCliCommand,
	#superclass : #PhLImageCliCommand,
	#category : #'PharoLauncher-cli'
}

{ #category : #'command line' }
PhLImageListCliCommand class >> asCliCommand [

	^ self newLauncherCommand: #list
]
