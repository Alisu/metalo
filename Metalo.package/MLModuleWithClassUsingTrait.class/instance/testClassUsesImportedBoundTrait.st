tests
testClassUsesImportedBoundTrait

	|classDefinition|

	classDefinition := self classDefinitionUsesTAssertable.

	module declareImport: self importTraitName from: #Kernel.
	module bindTo: MLModuleRegistry global.
	
	module declareClass: (CDClassDefinitionParser parse: classDefinition).
	
	self assert: (module definesName: 'TestUseTrait').
	
	self assert: (((module definedClassNamed: 'TestUseTrait') methodDictionary keys) includesAll: ((module at: self importTraitName) methodDictionary keys))
	