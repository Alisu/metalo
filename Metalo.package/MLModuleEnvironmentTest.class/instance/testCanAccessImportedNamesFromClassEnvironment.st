as yet unclassified
testCanAccessImportedNamesFromClassEnvironment
	moduleToTest declareImport: #B from: moduleImportFrom.
	self
		assert: ((moduleToTest definedClassNamed: #A) environment includesKey: #B)