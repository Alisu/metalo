tests
testImportImportedNameAndSourceWithDifferentAlias

	module declareImport: self importedName from: self importedModuleName as: 'AnotherName'.
	self assert: (module hasImportAliasNamed: 'AnotherName').
	self assert: module imports size equals: 2.
