Class {
	#name : #PhLTemplateCategoriesCliCommand,
	#superclass : #PhLTemplateCliCommand,
	#category : #'PharoLauncher-cli'
}

{ #category : #'command line - converting' }
PhLTemplateCategoriesCliCommand class >> asCliCommand [

	^ self newLauncherCommand: #categories
]
