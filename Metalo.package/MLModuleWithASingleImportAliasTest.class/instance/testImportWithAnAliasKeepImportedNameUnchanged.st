tests
testImportWithAnAliasKeepImportedNameUnchanged
	
	self assert: [ module hasImportNamed: #Object].
	self assert: [ module hasImportAliasNamed: #Pouet].
	