tests
testVirtualizationModuleDoNotContainTestClass

	virtualizer createVirtualizationLayer: self systemTestClassStrategy.
	self assert: virtualizer virtualizationLayer environment size equals: 1