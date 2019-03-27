tests
testNonTestClassApplyNextStrategyLogClass
	
	virtualizer virtualizedModule declareImport: #Class from: #Kernel.
	virtualizer createVirtualizationLayer: (self systemTestClassStrategy nextStrategy: self logStrategy).
	
	self	assert:(virtualizer virtualizationLayer classNamed:#Class ifAbsent: [  ]) superclass equals: (Smalltalk at: self logclassName)