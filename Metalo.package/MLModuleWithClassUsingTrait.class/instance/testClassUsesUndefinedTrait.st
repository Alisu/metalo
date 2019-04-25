tests
testClassUsesUndefinedTrait

	|classDefinition|

	classDefinition := self classDefinitionUsesTBlah.

	module declareClass: (CDClassDefinitionParser parse: classDefinition).
	
	self assert: (module definesName: 'TestUseTrait').
	
	self assert: ((module definedClassNamed: 'TestUseTrait') methodDictionary keys) equals: ((module at: #TBlah) methodDictionary keys)
	