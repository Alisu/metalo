tests
testDeclareClassWithSameNameThanAlreadyImportedNameCanBind
	module declareClassNamed: self importedName.
	module bindTo: module defaultNameResolver.
	
	self assert: [ module hasImport: #Object from: #Kernel]
	