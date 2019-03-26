creation
useBindingToKernel: aModule for: aClassName
	(MLModuleRegistry global
		definesName: aClassName
		inModuleNamed: #Kernel)
		ifTrue: [ aModule
				declareClass:
					(CDClassDefinitionParser
						parse: aClassName , 'Kernel subclass: ' , aClassName).
			aModule
				declareImport: aClassName
				from: #Kernel
				as: aClassName , 'Kernel' ]
			ifFalse:[self useLogClass: aModule for: aClassName]