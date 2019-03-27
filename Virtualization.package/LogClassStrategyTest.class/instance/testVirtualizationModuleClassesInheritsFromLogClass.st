tests
testVirtualizationModuleClassesInheritsFromLogClass
	
	virtualizer createVirtualizationLayer: self logStrategy.
	self assert:(virtualizer virtualizationLayer classNamed: (self undefinedSuperclass) ifAbsent: [  ]) superclass equals: (Smalltalk at: (self logclassName ))