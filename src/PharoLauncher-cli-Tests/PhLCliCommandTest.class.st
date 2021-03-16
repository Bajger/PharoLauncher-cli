Class {
	#name : #PhLCliCommandTest,
	#superclass : #ClapPharoCommandsTest,
	#category : #'PharoLauncher-cli-Tests'
}

{ #category : #tests }
PhLCliCommandTest >> testExecute [
	context := PhLCliCommand launcherCommand activateWith: #('launcher').
	
	self assertSuccess.
"	self
		assert: self outputString
		equals: 'some content here' , self lineEnding
		
"
]
