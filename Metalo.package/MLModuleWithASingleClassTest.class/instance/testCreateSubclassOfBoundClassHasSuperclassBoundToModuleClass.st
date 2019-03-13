tests
testCreateSubclassOfBoundClassHasSuperclassBoundToModuleClass

	module declareClassNamed: #Point subclassOfClassNamed: self definedClassName.
	
	self assert: (module definedClassNamed: #Point) superclass equals: definedClass