tests
testNonTestClassApplyNextStrategyKernelIndirection
	
	virtualizer virtualizedModule
	declareImport: #Class from: #Kernel.
	"it's the default value but we make sure"
	self systemTestClassStrategy nextStrategy: self kernelIndirectionStrategy.
	virtualizer createVirtualizationLayer: self systemTestClassStrategy.
	
	self	assert:(virtualizer virtualizationLayer classNamed:#Class ifAbsent: [  ]) superclass equals: (Smalltalk at: #Class)