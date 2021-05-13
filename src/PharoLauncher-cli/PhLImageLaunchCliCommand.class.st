Class {
	#name : #PhLImageLaunchCliCommand,
	#superclass : #PhLImageCliCommand,
	#category : #'PharoLauncher-cli'
}

{ #category : #'command line' }
PhLImageLaunchCliCommand class >> asCliCommand [

	^ self newLauncherCommand: #launch
]
