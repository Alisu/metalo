running
setUp: aStrategy

	super setUp.
	MyObject lookupStrategy: aStrategy.
	definedClassToExtend := module1 declareClassNamed: self classToExtendName subclassOfClassNamed: #MyObject.
	
	self configureCallingMethod: module1.
	self configureExtendingModule: module2.
	self configureExtendingModule: module3.
	
	