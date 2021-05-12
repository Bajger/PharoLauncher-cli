Class {
	#name : #PhLImageCliCommand,
	#superclass : #PhLCliCommand,
	#category : #'PharoLauncher-cli'
}

{ #category : #'command line' }
PhLImageCliCommand class >> asCliCommand [

	^ self newLauncherCommand: #image
]

{ #category : #'command line' }
PhLImageCliCommand class >> launcherCmdDescription [

	^ 'All sub-commands related to management of local Pharo images.'
]
