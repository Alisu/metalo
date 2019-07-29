message performing
perform: aSymbol 
| environment selector method |
	environment := thisContext sender method methodClass environment.
	selector:= Selector new: aSymbol inEnv: environment createdFrom: self class environment.
	method := self lookupStrategy lookupSelector: selector forClass: self class.
	method ifNotNil:[	^ method valueWithReceiver: self arguments: (Array new: 0) ]
		ifNil:[self error: 'DNU ', selector symbol]