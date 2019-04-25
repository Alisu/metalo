tests
testClassUsesDeclareTrait

	|traitDefinition classDefinition|

	classDefinition := self classDefinitionUsesTAssertable.

	traitDefinition := 'Trait named: TBlah'.
	
	module declareTrait: (CDClassDefinitionParser parse: traitDefinition).
	
	module declareClass: (CDClassDefinitionParser parse: classDefinition).
	
	self assert: (module definesName: 'TestUseTrait').
	
	self assert: ((module definedClassNamed: 'TestUseTrait') methodDictionary keys) equals: ((module at: #TBlah) methodDictionary keys)
	