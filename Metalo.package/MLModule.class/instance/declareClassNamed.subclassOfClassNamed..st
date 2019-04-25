class creation
declareClassNamed: aClassName subclassOfClassNamed: aSuperclassName

	| res |	
	self flag:#WeirdClassDefinition.
	aSuperclassName isNil
		ifTrue: [ res := CDClassDefinitionParser
				parse: '' , Object name , ' subclass: ' , aClassName.
			res superclassName: #nil.
			res superclassNameNode: aSuperclassName ]
		ifFalse: [ res := CDClassDefinitionParser
				parse: '' , aSuperclassName , ' subclass: ' , aClassName ].
	^ self declareClass: res