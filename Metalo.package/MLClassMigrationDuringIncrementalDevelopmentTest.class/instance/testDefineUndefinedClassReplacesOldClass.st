tests
testDefineUndefinedClassReplacesOldClass

	module declareClassNamed: #Object subclassOfClassNamed: #DoNotKnowThisClass.
	
	self assert: (module definedClassNamed: #Object) isUndefined.
	
	module declareClassNamed: #DoNotKnowThisClass.
	
	self deny: (module definedClassNamed: #Object) isUndefined.