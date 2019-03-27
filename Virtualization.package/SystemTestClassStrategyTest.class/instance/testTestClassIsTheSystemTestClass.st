tests
testTestClassIsTheSystemTestClass
	
	virtualizer virtualizedModule
		declareImport: #TestCase from: #Kernel.
	virtualizer createVirtualizationLayer: self systemTestClassStrategy.
	
	self	assert: (virtualizer virtualizedModule at: self classtestName) equals: (Smalltalk at: self classtestName)