Class {
	#name : #PhLImageCliCommand,
	#superclass : #PhLRootCliCommand,
	#category : #'PharoLauncher-cli'
}

{ #category : #'command line - converting' }
PhLImageCliCommand class >> asCliCommand [

	^ self imageCommand
]

{ #category : #'command line' }
PhLImageCliCommand class >> imageCommand [
	"Image subcommand"

	^ (ClapCommand id: #image)
		description: 'image command';
		add: ClapFlag forHelp;
		meaning: [ :args |
			args at: #helpFlag ifPresent: [ :help |
				help value; exitSuccess ].
			args validateAll ];
		yourself
]
