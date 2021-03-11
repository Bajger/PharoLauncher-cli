"
I represent Pharo Launcher root command line command - entry point for invoking PharoLauncher from cmd line. 
I use CLAP for interacting with command line.
"
Class {
	#name : #PhLCmdLineCommand,
	#superclass : #ClapApplication,
	#category : #'PharoLauncher-cli'
}

{ #category : #'as yet unclassified' }
PhLCmdLineCommand class >> pharoLauncherCommand [
	"Root command for Pharo Launcher"

	<commandline>
	^ (ClapCommand id: #laucher)
		
		description: 'Pharo Launcher';
		add: ClapFlag forHelp;
		yourself 
]

{ #category : #'as yet unclassified' }
PhLCmdLineCommand >> execute [ 

	"Do nothing for now"
	^ 'foo'
]
