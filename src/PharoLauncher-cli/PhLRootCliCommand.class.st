"
I represent Pharo Launcher root command line command - entry point for invoking PharoLauncher from cmd line. 
I use CLAP for interacting with command line (inherit behavior from ClapApplication).
"
Class {
	#name : #PhLRootCliCommand,
	#superclass : #ClapApplication,
	#category : #'PharoLauncher-cli'
}

{ #category : #'command line - converting' }
PhLRootCliCommand class >> asCliCommand [

	self subclassResponsibility 
]

{ #category : #'command line' }
PhLRootCliCommand class >> launcherCommand [
	"Root command for Pharo Launcher"

	<commandline>
	^ (ClapCommand id: #launcher)
		description: 'Pharo Launcher - root command';
		add: ClapFlag forHelp;
		addAll: self launcherSubcommands;
		meaning: [ :args |
			args at: #helpFlag ifPresent: [ :help |
				help value; exitSuccess ].
			args validateAll ];
		yourself 
]

{ #category : #'command line - subcommands' }
PhLRootCliCommand class >> launcherSubcommands [

	^ self subclasses collect: #asCliCommand
]

{ #category : #'as yet unclassified' }
PhLRootCliCommand >> execute [ 

	"Do nothing for now"
	^ 'foo'
]
