printing
printDeclaration
	^'MLModuleRegistry global at: #',self name,' put: (',self class name,' newNamed: #',self name,')'.


	