Class {
	#name : #PhLCliCommandTest,
	#superclass : #ClapPharoCommandsTest,
	#category : #'PharoLauncher-cli-Tests'
}

{ #category : #tests }
PhLCliCommandTest >> testExecute [
	context := PhLCliCommand launcherCommand activateWith: #('launcher').
	self assertSuccess.
	self
		assert: self outputString
		equals: 'some content here' , self lineEnding
		

]

{ #category : #tests }
PhLCliCommandTest >> testMatchLauncher [
	"test just match of command line args, without activating command"
	
	self assert: (PhLCliCommand launcherCommand match: #('launcher')) isValid.
	self assert: (PhLCliCommand launcherCommand match: #('launcher' '--help')) isValid.
]
