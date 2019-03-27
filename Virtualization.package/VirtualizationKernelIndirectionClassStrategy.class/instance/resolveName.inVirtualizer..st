as yet unclassified
resolveName: aClassName inVirtualizer: aVirtualizer
	
	(MLModuleRegistry global
		definesName: aClassName
		inModuleNamed: #Kernel)
		ifTrue: [ aVirtualizer virtualizationLayer 
				declareClass:
					(CDClassDefinitionParser
						parse: aClassName , 'Kernel subclass: ' , aClassName).
			aVirtualizer virtualizationLayer 
				declareImport: aClassName
				from: #Kernel
				as: aClassName , 'Kernel' ]
		ifFalse:
			[ 
			nextStrategy initializeVirtualizationLayer: aVirtualizer virtualizationLayer.
			nextStrategy resolveName: aClassName inVirtualizer: aVirtualizer ]