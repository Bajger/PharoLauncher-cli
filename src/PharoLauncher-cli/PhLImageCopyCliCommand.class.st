Class {
	#name : #PhLImageCopyCliCommand,
	#superclass : #PhLImageCliCommand,
	#category : #'PharoLauncher-cli'
}

{ #category : #'command line' }
PhLImageCopyCliCommand class >> asCliCommand [

	^ self newLauncherCommand: #copy
]
