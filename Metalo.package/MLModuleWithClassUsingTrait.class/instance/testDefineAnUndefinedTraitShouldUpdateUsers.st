tests
testDefineAnUndefinedTraitShouldUpdateUsers

		|traitDefinition classDefinition|

	classDefinition := self classDefinitionUsesTBlah.

	traitDefinition := 'Trait named: TBlah'.
	
	module declareClass: (CDClassDefinitionParser parse: classDefinition).
	
	self assert: (module at: #TBlah) isUndefined.
	
	module declareTrait: (CDClassDefinitionParser parse: traitDefinition).
	(module at: #TBlah) compile: 'test ^42'.

	self assert: ((module definedClassNamed: 'TestUseTrait') methodDictionary keys) equals: ((module at: #TBlah) methodDictionary keys). 
	

	
	