imports
hasImportAliasNamed: aString 
	
	^ self imports anySatisfy: [ :import | import aliasName = aString ]