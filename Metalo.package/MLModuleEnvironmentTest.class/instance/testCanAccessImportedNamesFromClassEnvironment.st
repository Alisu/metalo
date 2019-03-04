as yet unclassified
testCanAccessImportedNamesFromClassEnvironment
	moduleToTest declareImport: #B from: moduleImportFrom.
	self
		assert: ((moduleToTest classNamed: #A) environment includesKey: #B)