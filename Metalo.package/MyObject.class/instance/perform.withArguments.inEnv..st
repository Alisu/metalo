message performing
perform: aSymbol withArguments: anArray inEnv: anEnv
	
	| method |
	method := lookupStrategy
		lookupSelector: aSymbol
		forClass: self class
		withEnv: anEnv.
	method
		ifNotNil: [ ^ method valueWithReceiver: self arguments: anArray ]
		ifNil: [ self error: 'DNU ' , aSymbol ]