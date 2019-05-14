tests
testImportTraitShouldNotUpdateUsers

	module declareClass: (CDClassDefinitionParser parse: self classDefinitionUsesTAssertable).

	module declareImport: self importTraitName from: #Kernel.
	
	self assert: (module undeclaredNames isEmpty).
	self assert: ((module definedClassNamed: 'TestUseTrait') methodDictionary keys) equals: ((module at: self importTraitName) methodDictionary keys)
	
