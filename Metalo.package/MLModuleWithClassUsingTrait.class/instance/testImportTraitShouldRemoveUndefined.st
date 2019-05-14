tests
testImportTraitShouldRemoveUndefined

	module declareClass: (CDClassDefinitionParser parse: self classDefinitionUsesTAssertable).

	module declareImport: self importTraitName from: #Kernel.
	
	module bindTo: MLModuleRegistry global.
	
	self assert: (module undeclaredNames isEmpty).
