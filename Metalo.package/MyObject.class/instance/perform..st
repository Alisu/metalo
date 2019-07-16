message performing
perform: aSymbol 

	| environment selector method |
	environment := thisContext sender receiver class environment.
	selector:= Selector new: aSymbol inEnv: environment.
	method := MyObject lookupSeletor: selector forClass: self class.
	method ifNotNil:[	^ self perform: method selector withArguments: (Array new: 0) ]
		ifNil:[self error: 'DNU' selector symbol]