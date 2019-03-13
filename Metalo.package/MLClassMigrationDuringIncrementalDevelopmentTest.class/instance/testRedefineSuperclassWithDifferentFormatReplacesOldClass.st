tests
testRedefineSuperclassWithDifferentFormatReplacesOldClass

	| pointClass res|
	
	res:=(CDClassDefinitionParser parse: '',Object name,' subclass: #Point' ).
		res superclassName:#nil.
		res superclassNameNode:nil.
		
	"Create point class without instance variables"
	module declareClass: res.
	
	"Create point class without instance variables"
	pointClass := module declareClass: (CDClassDefinitionParser parse: '',Object name,' subclass: #Point').
	
	self assert: pointClass allSlots size equals: 0.
	
	"Recreate point class with instance variables"
	res:=(CDClassDefinitionParser parse: '',Object name,' subclass: #Point instanceVariableNames: ''x y''').
		res superclassName:#nil.
		res superclassNameNode:nil.
	module declareClass: res.
	
	self assert: pointClass allSlots size equals: 2.
	