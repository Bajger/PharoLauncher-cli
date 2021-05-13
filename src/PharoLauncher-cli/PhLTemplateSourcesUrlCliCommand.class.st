Class {
	#name : #PhLTemplateSourcesUrlCliCommand,
	#superclass : #PhLTemplateCliCommand,
	#category : #'PharoLauncher-cli'
}

{ #category : #'command line - converting' }
PhLTemplateSourcesUrlCliCommand class >> asCliCommand [

	^ self newLauncherCommand: #sourcesUrl
]
