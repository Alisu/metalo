tests
testClassUsesUndefinedTraitSimpleComposition

	|classDefinition|

	classDefinition := self classDefinitionUsesTAssertable.

	module declareClass: (CDClassDefinitionParser parse: classDefinition).
	
	self assert: (module definesName: 'TestUseTrait').
