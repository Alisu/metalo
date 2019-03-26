creation
useBindingToKernel: aModule for: aClassName
	aModule declareClass: (CDClassDefinitionParser parse: aClassName,'Kernel subclass: ' , aClassName).
	aModule declareImport: aClassName from: #Kernel as: aClassName,'Kernel'.