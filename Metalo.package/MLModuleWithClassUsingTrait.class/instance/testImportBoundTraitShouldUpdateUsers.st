tests
testImportBoundTraitShouldUpdateUsers

	module declareClass: (CDClassDefinitionParser parse: self classDefinitionUsesTAssertable).

	module declareImport: self importTraitName from: #Kernel.
	
	module bindTo: MLModuleRegistry global.
	
	self assert: (module undeclaredNames isEmpty).
	self assert: ((module definedClassNamed: 'TestUseTrait') methodDictionary keys) equals: ((module at: self importTraitName) methodDictionary keys).
	self assert: ((module at: self importTraitName) users includes: (module definedClassNamed: 'TestUseTrait'))
	
