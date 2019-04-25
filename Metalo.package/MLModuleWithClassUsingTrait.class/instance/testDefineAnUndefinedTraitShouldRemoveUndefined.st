tests
testDefineAnUndefinedTraitShouldRemoveUndefined

		|traitDefinition classDefinition|

	classDefinition := self classDefinitionUsesTBlah.

	traitDefinition := 'Trait named: TBlah'.
	
	module declareClass: (CDClassDefinitionParser parse: classDefinition).
	
	self assert: (module at: #TBlah) isUndefined.
	
	module declareTrait: (CDClassDefinitionParser parse: traitDefinition).
	
	self assert: module undeclaredBindings isEmpty.
	self assert: (module at: #TBlah) isDefined.
	

	