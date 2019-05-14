tests
testRemoveImportedTraitShouldBecomeUndeclared

	module declareClass: (CDClassDefinitionParser parse: self classDefinitionUsesTAssertable).
	module declareImport: self importTraitName from: #Kernel.
	module removeImport: #TAssertable.
	
	self assert: (module undeclaredNames includes: #TAssertable).
