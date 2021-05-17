Class {
	#name : #PhLTemplateCliCommand,
	#superclass : #PhLCliCommand,
	#category : #'PharoLauncher-cli'
}

{ #category : #'command line - converting' }
PhLTemplateCliCommand class >> asCliCommand [

	^ self newLauncherCommand: #template
]

{ #category : #'command line - description' }
PhLTemplateCliCommand class >> launcherCmdDescription [

	^ 'All sub-commands related to image templates.'
]
