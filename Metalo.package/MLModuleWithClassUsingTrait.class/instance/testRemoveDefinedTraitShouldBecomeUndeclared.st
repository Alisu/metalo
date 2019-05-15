tests
testRemoveDefinedTraitShouldBecomeUndeclared
	
	| traitDefinition trait users |
	traitDefinition := 'Trait named: TBlah'.
	trait:=module declareTrait: (CDClassDefinitionParser parse: traitDefinition).
	module declareClass: (CDClassDefinitionParser parse: self classDefinitionUsesTBlah).
	users:= trait users.
	module removeTraitNamed: #TBlah.
	
	self assert: (module undeclaredNames includes: #TBlah).
	self assert: (module at:#TBlah) users equals: users.
