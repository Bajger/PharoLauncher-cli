Class {
	#name : #PhLVmListCliCommand,
	#superclass : #PhLVmCliCommand,
	#category : #'PharoLauncher-cli'
}

{ #category : #'command line - converting' }
PhLVmListCliCommand class >> asCliCommand [

	^ self newLauncherCommand: #list
]
