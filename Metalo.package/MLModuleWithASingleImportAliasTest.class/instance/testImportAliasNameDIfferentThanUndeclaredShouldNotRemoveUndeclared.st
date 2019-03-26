tests
testImportAliasNameDIfferentThanUndeclaredShouldNotRemoveUndeclared

	module declareUndefinedClassNamed: #Class.
	module declareImport: #Class from: #Kernel as: #NotClass.

	self assert: [ module hasUndeclaredBinding: #Class]
	