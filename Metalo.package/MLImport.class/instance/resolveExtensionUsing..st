as yet unclassified
resolveExtensionUsing: moduleRegistry

	importBinding:= (moduleRegistry
		definesExtensionNamed: nameToImport
		inModuleNamed: bindingSourceName).
	^ self binding