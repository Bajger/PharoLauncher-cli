"
I represent Pharo Launcher root command line command - entry point for invoking PharoLauncher from cmd line. 
I use CLAP for interacting with command line (inherit behavior from ClapApplication).
"
Class {
	#name : #PhLCliCommand,
	#superclass : #ClapApplication,
	#category : #'PharoLauncher-cli'
}

{ #category : #'command line - converting' }
PhLCliCommand class >> asCliCommand [

	self subclassResponsibility 
]

{ #category : #'command line' }
PhLCliCommand class >> launcherCommand [
	"Root command for Pharo Launcher"

	<commandline>
	^ (ClapCommand id: #launcher)
		description: self launcherDescription;
		add: ClapFlag forHelp;
		addAll: self launcherSubcommands;
		meaning: [ :args |
			args at: #helpFlag ifPresent: [ :help |
				help value; exitSuccess ].
			args validateAll.
			(self with: args) execute ];
		yourself
]

{ #category : #'command line - description' }
PhLCliCommand class >> launcherDescription [
	^ 'This is command line interface of Pharo Launcher. Create Pharo image from remote site template, lauch Pharo, eventually delete image, update VMs, etc.'
]

{ #category : #'command line - subcommands' }
PhLCliCommand class >> launcherSubcommands [

	^ self subclasses collect: #asCliCommand
]

{ #category : #'as yet unclassified' }
PhLCliCommand >> execute [ 

	self halt: arguments
]
