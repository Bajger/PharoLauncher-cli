Class {
	#name : #PhLVmListCliCommand,
	#superclass : #PhLVmCliCommand,
	#category : #'PharoLauncher-cli-restructured-PharoLauncher-cli-restructured'
}

{ #category : #'command line - converting' }
PhLVmListCliCommand class >> asCliCommand [

	^ self newLauncherCommand: #list
]
