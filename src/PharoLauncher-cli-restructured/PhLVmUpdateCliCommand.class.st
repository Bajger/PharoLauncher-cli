Class {
	#name : #PhLVmUpdateCliCommand,
	#superclass : #PhLVmCliCommand,
	#category : #'PharoLauncher-cli-restructured-PharoLauncher-cli-restructured'
}

{ #category : #'command line - converting' }
PhLVmUpdateCliCommand class >> asCliCommand [

	^ self newLauncherCommand: #update
]
