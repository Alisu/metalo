tests
testDeclareClassWithSameNameThanAlreadyImportedAliasNameFails

	self should: [ module declareClassNamed: self aliasedName ] raise: Error