initialization
resolveName: aName inVirtualizer: virtualizer

	(#( TestCase TestResource ) includes: aName)
		ifTrue: [ 
			(virtualizer virtualizedModule importAliasNamed: aName)
				resolveUsing: virtualizer virtualizedModule defaultNameResolver ]
		ifFalse: [ 
			nextStrategy initializeVirtualizationLayer: virtualizer virtualizationLayer.
			nextStrategy resolveName: aName inVirtualizer: virtualizer ].