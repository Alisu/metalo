tests
testRedefineClassWithDifferentFormatReplacesOldClass

	| oldClass newClass |
	
	"Create point class without instance variables"
	oldClass := module declareClass: (CDClassDefinitionParser parse: '',Object name,' subclass: #Point').
	
	
	self assert: oldClass slots size equals: 0.
	
	"Recreate point class with instance variables"
	newClass := module declareClass: (CDClassDefinitionParser parse: '',Object name,' subclass: #Point instanceVariableNames: ''x y''').
	
	self assert: newClass slots size equals: 2.
	
	self assert: oldClass == newClass