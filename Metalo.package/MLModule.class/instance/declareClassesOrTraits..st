class creation
declareClassesOrTraits: aCollection
	
	aCollection
		do: [ :each | 
			each isTrait
				ifTrue: [ self declareTrait: each asClassDefinitionNode ]
				ifFalse: [ self declareClass: each asClassDefinitionNode ] ]