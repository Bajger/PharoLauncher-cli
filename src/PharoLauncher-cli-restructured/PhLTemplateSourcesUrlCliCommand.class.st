Class {
	#name : #PhLTemplateSourcesUrlCliCommand,
	#superclass : #PhLTemplateCliCommand,
	#category : #'PharoLauncher-cli-restructured-PharoLauncher-cli-restructured'
}

{ #category : #'command line - converting' }
PhLTemplateSourcesUrlCliCommand class >> asCliCommand [

	^ self newLauncherCommand: #sourcesUrl
]
