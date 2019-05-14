tests
testClassUsesImportedBoundTrait


	module declareImport: self importTraitName from: #Kernel.
	module bindTo: MLModuleRegistry global.
	
	module declareClass: (CDClassDefinitionParser parse: self classDefinitionUsesTAssertable).
	
	self assert: ((module definedClassNamed: 'TestUseTrait') methodDictionary keys) equals: ((module at: self importTraitName) methodDictionary keys)
	