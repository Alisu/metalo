tests
testDefineClassWhenTraitWasExpectedShouldDefineClass

	|classDefinition|

	classDefinition := 'nil subclass: #TBlah
							instanceVariableNames: ''''
							classVariableNames: ''''
							poolDictionaries: ''''
							package: ''Unclassified'''.

	module declareClass: (CDClassDefinitionParser parse: self classDefinitionUsesTBlah).

	module declareClass: (CDClassDefinitionParser parse: classDefinition).	


	
	