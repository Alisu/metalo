tests
testDeclareTrait

	|traitDefinition|

	traitDefinition := 'Trait named: TBlah'.
	
	module declareTrait: (CDClassDefinitionParser parse: traitDefinition).
	
	self assert: (module definesName: 'TBlah').
	self assert: ((module definedClassNamed: 'TBlah') isTrait).
	self assert: ((module definedClassNamed: 'TBlah') isDefined)
	