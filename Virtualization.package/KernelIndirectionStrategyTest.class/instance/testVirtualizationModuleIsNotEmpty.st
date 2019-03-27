tests
testVirtualizationModuleIsNotEmpty

	virtualizer createVirtualizationLayer: self kernelIndirectionStrategy.
	self assert: virtualizer virtualizationLayer environment size equals: 1