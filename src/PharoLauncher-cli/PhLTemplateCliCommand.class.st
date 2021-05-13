Class {
	#name : #PhLTemplateCliCommand,
	#superclass : #PhLCliCommand,
	#category : #'PharoLauncher-cli'
}

{ #category : #'command line - converting' }
PhLTemplateCliCommand class >> asCliCommand [

	^ self newLauncherCommand: #template
]
