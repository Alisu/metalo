tests
testImportAliasNameShouldRemoveUndeclared

	module declareUndefinedClassNamed: #Class.
	module declareImport: #LogClass from: #Kernel as: #Class.

	self assert: [ module undeclaredBindings isEmpty].

	