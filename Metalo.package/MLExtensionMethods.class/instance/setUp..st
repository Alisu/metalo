running
setUp: aStrategy

	super setUp.
	definedClassToExtend := module1 declareClassNamed: self classToExtendName subclassOfClassNamed: #MyObject.
	
	self configureCallingMethod: module1 withStrategy: aStrategy.
	self configureExtendingModule: module2 withStrategy: aStrategy.
	self configureExtendingModule: module3 withStrategy: aStrategy.
	
	