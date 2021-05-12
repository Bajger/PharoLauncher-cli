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

{ #category : #'command line - description' }
PhLCliCommand class >> launcherCmdDescription [
	^ 'This is command line interface of Pharo Launcher. Create Pharo image from remote site template, lauch Pharo, eventually delete image, update VMs, etc.'
]

{ #category : #'command line - flags' }
PhLCliCommand class >> launcherCmdFlags [

	^ #()
]

{ #category : #'command line - arguments' }
PhLCliCommand class >> launcherCmdPositionals [

	^ #()
]

{ #category : #'command line - instance creation' }
PhLCliCommand class >> launcherCommand [
	"Root command for Pharo Launcher"
	<commandline>
	
	^ self newLauncherCommand: #launcher
]

{ #category : #'command line - description' }
PhLCliCommand class >> launcherDescription [
	^ 'This is command line interface of Pharo Launcher. Create Pharo image from remote site template, lauch Pharo, eventually delete image, update VMs, etc.'
]

{ #category : #'command line - subcommands' }
PhLCliCommand class >> launcherSubcommands [

	^ self subclasses collect: #asCliCommand
]

{ #category : #'command line - instance creation' }
PhLCliCommand class >> newLauncherCommand: idOfCommand [ 
	"factory for pharo launcher commands"

	^ (ClapCommand id: idOfCommand)
		description: self launcherCmdDescription;
		add: ClapFlag forHelp;
		addAll: self launcherCmdSubcommands;
		addAll: self launcherCmdFlags;
		addAll: self launcherCmdPositionals;
		meaning: [ :args |
			args at: #helpFlag ifPresent: [ :help |
				help value; exitSuccess ].
			args validateAll.
			(self with: args) execute ];
		yourself
]

{ #category : #'as yet unclassified' }
PhLCliCommand >> execute [ 
	
	^ self exitSuccess.
]
