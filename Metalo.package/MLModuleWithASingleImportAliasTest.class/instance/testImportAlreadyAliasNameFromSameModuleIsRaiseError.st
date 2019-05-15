tests
testImportAlreadyAliasNameFromSameModuleIsRaiseError

	self should: [self declareImport] raise: Error.
	
