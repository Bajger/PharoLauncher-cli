Class {
	#name : #PhLTemplateListCliCommand,
	#superclass : #PhLTemplateCliCommand,
	#category : #'PharoLauncher-cli-restructured-PharoLauncher-cli-restructured'
}

{ #category : #'command line - converting' }
PhLTemplateListCliCommand class >> asCliCommand [

	^ self newLauncherCommand: #list
]
