tests
testDefineAnUndefinedTraitShouldRemoveUndefined
	
	| traitDefinition |
	traitDefinition := 'Trait named: TBlah'.
	module
		declareClass: (CDClassDefinitionParser parse: self classDefinitionUsesTBlah).
	self assert: (module at: #TBlah) isUndefined.
	module declareTrait: (CDClassDefinitionParser parse: traitDefinition).
	self assert: module undeclaredBindings isEmpty.
	self assert: (module at: #TBlah) isDefined