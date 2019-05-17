as yet unclassified
testBoundImportUpdateMethodsReferencingBinding

	module declareClassNamed: #A.
	module compileMethod: 'forTestingPurpose OrderedCollection new' inClass: (module at: #A).
	
	self assert: (module undeclaredNames includes: #OrderedCollection).
	
	module declareImport: #OrderedCollection from:#Kernel.
	module bindTo: MLModuleRegistry global.
	
	self assert:(((module at: #A) compiledMethodAt: #forTestingPurpose) literalAt:1) value isNotNil.