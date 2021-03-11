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
		do: [ 
			"dependencies"
			self baselineOfClap: spec.
			
			"Packages" 
			spec 
				package: 'PharoLauncher-cli' 
				with: [ spec requires: #('Clap')]
		]
]

{ #category : #baseline }
BaselineOfPharoLauncherCli >> baselineOfClap: spec [
	spec
		baseline: 'Clap'
		with: [ spec
				loads: #('Clap');
				repository: 'github://cdlm/clap-st/src' ]
]
