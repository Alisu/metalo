running
setUp

	super setUp.

	definedClassToExtend := module1 declareClassNamed: self classToExtendName subclassOfClassNamed: #Object.
	
	self configureCallingMethod: module1.
	self configureExtendingModule: module2.
	self configureExtendingModule: module3.
	
	