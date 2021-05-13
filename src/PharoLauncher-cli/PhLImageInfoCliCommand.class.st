Class {
	#name : #PhLImageInfoCliCommand,
	#superclass : #PhLImageCliCommand,
	#category : #'PharoLauncher-cli'
}

{ #category : #'command line' }
PhLImageInfoCliCommand class >> asCliCommand [

	^ self newLauncherCommand: #info
]
