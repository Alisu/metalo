tests
testRemoveTraitWithNoUsersDefinitivelyRemoveIt

	module declareImport: self importTraitName from: #Kernel.
	module removeImport: #TAssertable.
	
	self assert: (module undeclaredNames isEmpty).
