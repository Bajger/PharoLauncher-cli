# PharoLauncher-cli
Experimental project (so far) attempting to provide command line interface for Pharo Launcher, without UI.

# CLI interface design, plans
Actual description of CLI interface for Pharo Launcher, plan of how to implement can be found in: [Pharo Launcher CLI description](PharoLauncherCmdLine-description.md). 

# How to load
work-in-progress  
You can load this project into stable Pharo 8.0 (P9 untested) image using following code evaluated in Pharo Playground.
## For development (all packages):  
```
Metacello new
	repository: 'github://Bajger/PharoLauncher-cli:main/src';
	baseline: 'PharoLauncherCli';
	load
```

## For deployment (without tests):  
```
Metacello new
	repository: 'github://Bajger/PharoLauncher-cli:main/src';
	baseline: 'PharoLauncherCli';
	load: #('Deployment')
```

# How to execute
TODO
