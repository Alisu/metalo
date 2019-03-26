tests
testBoundImportBoundImportedName

	module declareClass: (CDClassDefinitionParser parse: 'Class subclass: #Blah').
	module declareImport: #ProtoObject from: #Kernel as: #Class.
	module bindTo: module defaultNameResolver.
	

	self assert: [ ((module at: #Blah) superclass) = (Smalltalk classNamed: #ProtoObject)].

	