Class {
	#name : #PhLVmUpdateCliCommand,
	#superclass : #PhLVmCliCommand,
	#category : #'PharoLauncher-cli'
}

{ #category : #'command line - converting' }
PhLVmUpdateCliCommand class >> asCliCommand [

	^ self newLauncherCommand: #update
]
