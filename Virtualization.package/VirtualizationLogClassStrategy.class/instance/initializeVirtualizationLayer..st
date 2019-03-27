accessing
initializeVirtualizationLayer: aVirtualizationModule
	
	(aVirtualizationModule hasImportAliasNamed: #LogClass)
		ifTrue: [ ^ self ].
	aVirtualizationModule declareImport: #LogClass from: #Kernel.
	aVirtualizationModule
		bindTo: aVirtualizationModule defaultNameResolver