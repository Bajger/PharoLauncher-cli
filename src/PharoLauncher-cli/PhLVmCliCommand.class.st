Class {
	#name : #PhLVmCliCommand,
	#superclass : #PhLRootCliCommand,
	#category : #'PharoLauncher-cli'
}

{ #category : #'command line - converting' }
PhLVmCliCommand class >> asCliCommand [

	^ self vmCommand
]

{ #category : #'command line' }
PhLVmCliCommand class >> vmCommand [
	"VM subcommand"

	^ (ClapCommand id: #vm)
		description: 'VM sub-command';
		add: ClapFlag forHelp;
		yourself 
]
