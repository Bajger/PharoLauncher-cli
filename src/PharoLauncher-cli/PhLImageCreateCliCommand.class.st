Class {
	#name : #PhLImageCreateCliCommand,
	#superclass : #PhLImageCliCommand,
	#category : #'PharoLauncher-cli'
}

{ #category : #'command line' }
PhLImageCreateCliCommand class >> asCliCommand [

	^ self newLauncherCommand: #create
]
