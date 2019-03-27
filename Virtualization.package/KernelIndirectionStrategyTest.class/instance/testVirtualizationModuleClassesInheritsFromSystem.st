tests
testVirtualizationModuleClassesInheritsFromSystem

	virtualizer createVirtualizationLayer: self kernelIndirectionStrategy .
	
	self assert: (virtualizer virtualizationLayer classNamed: (self undefinedSuperclass) ifAbsent: [  ]) superclass equals: (Smalltalk at: (self undefinedSuperclass)).