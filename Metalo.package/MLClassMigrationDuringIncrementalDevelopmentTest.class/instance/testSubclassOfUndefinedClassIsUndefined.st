tests
testSubclassOfUndefinedClassIsUndefined

	module declareClassNamed: #Object subclassOfClassNamed: #DoNotKnowThisClass.
	
	self assert: (module definedClassNamed: #Object) isUndefined