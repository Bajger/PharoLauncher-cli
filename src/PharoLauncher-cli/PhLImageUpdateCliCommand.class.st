Class {
	#name : #PhLImageUpdateCliCommand,
	#superclass : #PhLImageCliCommand,
	#category : #'PharoLauncher-cli'
}

{ #category : #'command line' }
PhLImageUpdateCliCommand class >> asCliCommand [

	^ self newLauncherCommand: #update
]
