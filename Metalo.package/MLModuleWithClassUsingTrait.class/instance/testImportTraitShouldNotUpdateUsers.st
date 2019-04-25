tests
testImportTraitShouldNotUpdateUsers
	|classDefinition|

	classDefinition := self classDefinitionUsesTAssertable.

	module declareClass: (CDClassDefinitionParser parse: classDefinition).

	module declareImport: self importTraitName from: #Kernel.
	
	self assert: (module undeclaredNames isEmpty).
	self assert: ((module definedClassNamed: 'TestUseTrait') methodDictionary keys) equals: ((module at: self importTraitName) methodDictionary keys)
	
