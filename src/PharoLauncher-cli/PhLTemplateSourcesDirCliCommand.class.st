Class {
	#name : #PhLTemplateSourcesDirCliCommand,
	#superclass : #PhLTemplateCliCommand,
	#category : #'PharoLauncher-cli'
}

{ #category : #'command line - converting' }
PhLTemplateSourcesDirCliCommand class >> asCliCommand [

	^ self newLauncherCommand: #sourcesDir
]
