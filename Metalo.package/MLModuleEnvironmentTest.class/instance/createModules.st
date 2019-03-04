as yet unclassified
createModules
	moduleToTest := MLModule newNamed: #TestModule.
	MLModuleRegistry global at: moduleToTest name put: moduleToTest.
	moduleImportFrom := MLModule newNamed: #ImportModule.
	MLModuleRegistry global
		at: moduleImportFrom name
		put: moduleImportFrom