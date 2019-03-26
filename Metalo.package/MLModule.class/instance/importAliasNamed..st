imports
importAliasNamed: aString 
	
	^ self imports detect: [ :import | import aliasName = aString ]