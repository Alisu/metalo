virtuali
createVirtualizationLayer: aVirtualizationStrategy
	
	virtualizationLayer := MLModule newNamed: virtualizedModule name , 'Undeclared'.
	MLModuleRegistry global at: virtualizationLayer name put: virtualizationLayer.

	aVirtualizationStrategy initializeVirtualizationLayer: virtualizationLayer.

	virtualizedModule imports do: [ :anImport |
		aVirtualizationStrategy resolveName: anImport aliasName inVirtualizer: self ].

	virtualizationLayer bindTo: MLModuleRegistry global.
	virtualizedModule bindTo: virtualizationLayer