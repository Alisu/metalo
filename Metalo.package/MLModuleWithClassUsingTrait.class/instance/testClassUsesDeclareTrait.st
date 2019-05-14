tests
testClassUsesDeclareTrait

	|traitDefinition|

	traitDefinition := 'Trait named: TBlah'.
	
	module declareTrait: (CDClassDefinitionParser parse: traitDefinition).
	
	module declareClass: (CDClassDefinitionParser parse: self classDefinitionUsesTBlah).
	
	self assert: (module definesName: 'TestUseTrait').
	
	self assert: ((module definedClassNamed: 'TestUseTrait') methodDictionary keys) equals: ((module at: #TBlah) methodDictionary keys)
	