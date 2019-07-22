message performing
perform: aSymbol withArguments: anArray
	
	| env method |
	env := thisContext sender receiver class environment.
	method := ExtensionOverClassLookUpStrategy new
		lookupSelector: aSymbol
		forClass: self class
		withEnv: env.
	method
		ifNotNil: [ method valueWithReceiver: self arguments: anArray ]
		ifNil: [ self error: 'DNU ' , aSymbol ]