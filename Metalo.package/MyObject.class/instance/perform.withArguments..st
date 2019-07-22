message performing
perform: aSymbol withArguments: anArray
	
	| environment method |
	environment := thisContext sender receiver class environment.
	method := self lookupStrategy
		lookupSelector: aSymbol
		forClass: self class
		withEnv: environment.
	method
		ifNotNil: [ method valueWithReceiver: self arguments: anArray ]
		ifNil: [ self error: 'DNU ' , aSymbol ]