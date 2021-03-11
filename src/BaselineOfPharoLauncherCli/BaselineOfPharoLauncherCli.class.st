Class {
	#name : #BaselineOfPharoLauncherCli,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoLauncherCli
}

{ #category : #baseline }
BaselineOfPharoLauncherCli >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ "Packages" spec package: 'PharoLauncher-cli' ]
		
]
