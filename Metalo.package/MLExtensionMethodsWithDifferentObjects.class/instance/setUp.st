running
setUp

	super setUp.
1halt.
	definedClassToExtend := module1 declareClassNamed: self classToExtendName.
	
	self configureCallingMethod: module1.
	self configureExtendingModule: module2.
	self configureExtendingModule: module3.
	
	