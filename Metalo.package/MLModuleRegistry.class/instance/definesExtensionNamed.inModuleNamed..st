as yet unclassified
definesExtensionNamed: aName inModuleNamed: aModuleName

	(moduleEnvironment includesKey: aModuleName)
		ifFalse: [ ^ false ].
		
	^ (moduleEnvironment at: aModuleName)
		definesExtensionNamed: aName