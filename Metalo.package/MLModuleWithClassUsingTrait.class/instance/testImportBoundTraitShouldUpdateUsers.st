tests
testImportBoundTraitShouldUpdateUsers
	|classDefinition|

	classDefinition := self classDefinitionUsesTAssertable.

	module declareClass: (CDClassDefinitionParser parse: classDefinition).

	module declareImport: self importTraitName from: #Kernel.
	
	module bindTo: MLModuleRegistry global.
	
	self assert: (module undeclaredNames isEmpty).
	self assert: (((module definedClassNamed: 'TestUseTrait') methodDictionary keys) includesAll: ((module at: self importTraitName) methodDictionary keys))
	
