tests
testDeclareClassWithSameNameThanAlreadyImportedNameRun

	module declareClassNamed: self importedName .
	self assert: [ module definesClassNamed: self importedName] 
	