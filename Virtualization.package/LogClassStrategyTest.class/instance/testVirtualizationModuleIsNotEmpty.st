tests
testVirtualizationModuleIsNotEmpty
 	
	virtualizer createVirtualizationLayer: self logStrategy.
	
self assert: virtualizer virtualizationLayer environment isNotEmpty.