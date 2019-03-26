tests
test2BoundImportBoundImportedName

	module declareClass: (CDClassDefinitionParser parse: 'ClassKernel subclass: #Class').
	module declareImport: #Class from: #Kernel as: #ClassKernel.
	module bindTo: module defaultNameResolver.
	
	self assert: [ ((module at: #Class) superclass) = (Smalltalk classNamed: #Class)].

	