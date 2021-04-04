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
				package: 'PharoLauncher-cli' with: [ spec requires: #('Clap')];
				package: 'PharoLauncher-cli-Tests' with: [ spec requires: #('PharoLauncher-cli') ].

			"groups"
			spec
				group: 'default' with: #('Development');
				group: 'Tests' with: 'PharoLauncher-cli-Tests';
				group: 'Deployment' with: 'PharoLauncher-cli';
				group: 'Development' with: #('Deployment' 'Tests')
		]
]

{ #category : #baseline }
BaselineOfPharoLauncherCli >> baselineOfClap: spec [
	spec
		baseline: 'Clap'
		with: [ spec repository: 'github://cdlm/clap-st/src' ]
]
