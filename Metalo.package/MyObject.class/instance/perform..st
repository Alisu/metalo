message performing
perform: aSymbol 
	
	| environment method |
	environment := thisContext sender receiver class environment.
	method := MyObject lookupSelector: aSymbol forClass: self class withEnv: environment.
	method ifNotNil:[	method valueWithReceiver: self arguments: (Array new: 0)]
		ifNil:[self error: 'DNU ', aSymbol]