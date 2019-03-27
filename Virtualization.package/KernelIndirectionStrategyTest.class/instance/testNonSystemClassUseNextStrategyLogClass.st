tests
testNonSystemClassUseNextStrategyLogClass

	virtualizer virtualizedModule declareImport: #DefinitivelyNotAClass from: #Kernel..
	virtualizer createVirtualizationLayer: (self kernelIndirectionStrategy nextStrategy: self logStrategy).
	
	self assert: (virtualizer virtualizationLayer classNamed: #DefinitivelyNotAClass ifAbsent: [  ]) superclass equals: (Smalltalk at: self logclassName).