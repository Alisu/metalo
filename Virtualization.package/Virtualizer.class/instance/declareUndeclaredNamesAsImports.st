declaration
declareUndeclaredNamesAsImports
	
	virtualizedModule undeclaredNames do: [ :anUName |
		anUName first isUppercase ifTrue: [ 
			virtualizedModule declareImport: anUName from: #Kernel ] ].