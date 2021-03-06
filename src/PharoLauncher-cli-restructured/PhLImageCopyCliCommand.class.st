"
I represent Pharo Image copy sub-command invoked from cmd line of Pharo Launcher. My responsibility is to copy images within Pharo launcher. 

I declare: 
- mandatory positional with existing image name to be copied
- flag for specifying new image name (other than default)

I execute:
- copy the existing image based on specified name to new image with new name
"
Class {
	#name : #PhLImageCopyCliCommand,
	#superclass : #PhLImageCliCommand,
	#category : #'PharoLauncher-cli-restructured'
}

{ #category : #'command line' }
PhLImageCopyCliCommand class >> asCliCommand [

	^ self newLauncherCommand: #copy
]

{ #category : #'command line' }
PhLImageCopyCliCommand class >> launcherCmdDescription [

	^ 'Creates copy of given image with new name.'
]

{ #category : #'command line - arguments' }
PhLImageCopyCliCommand class >> launcherCmdFlags [

	^ {(ClapFlag id: #newImageName)
				description: 'Name of new image created from copy of existing.';
				add: ((ClapPositional id: #newName)
					description: 'New image name.';
					meaning: [ :pos | pos word asSymbol ];
					implicitMeaning: [ :arg :app | app defaultLanguage ])}
]

{ #category : #'command line - arguments' }
PhLImageCopyCliCommand class >> launcherCmdPositionals [

	^ {((ClapPositional id: #existingImageName)
				description: 'Local image name to be copied.';
					meaning: [ :pos | pos  asString ];
					implicitMeaning: [ :arg :app | app  ];
					yourself).
		((ClapPositional id: #newImageName)
				description: 'New image name of a copied image.';
					meaning: [ :pos | pos  asString ];
					implicitMeaning: [ :arg :app | app  ];
					yourself)	
	}
]
