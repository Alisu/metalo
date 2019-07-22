message performing
perform: aSymbol 
	
	| env method |
	env := thisContext sender receiver class environment.
	method := ExtensionOverClassLookUpStrategy new lookupSelector: aSymbol forClass: self class withEnv: env.
	method ifNotNil:[	method valueWithReceiver: self arguments: (Array new: 0)]
		ifNil:[self error: 'DNU ', aSymbol]