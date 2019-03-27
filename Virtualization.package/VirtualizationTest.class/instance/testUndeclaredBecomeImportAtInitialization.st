tests
testUndeclaredBecomeImportAtInitialization
	
	virtualizer declareUndeclaredNamesAsImports.
	
	self assert: virtualizer virtualizedModule undeclaredBindings isEmpty.
	self assert: virtualizer virtualizedModule imports isNotEmpty.
