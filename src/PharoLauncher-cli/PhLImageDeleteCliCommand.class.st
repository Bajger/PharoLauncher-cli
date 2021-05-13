Class {
	#name : #PhLImageDeleteCliCommand,
	#superclass : #PhLImageCliCommand,
	#category : #'PharoLauncher-cli'
}

{ #category : #'command line' }
PhLImageDeleteCliCommand class >> asCliCommand [

	^ self newLauncherCommand: #delete
]
