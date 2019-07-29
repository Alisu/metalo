message performing
perform: aSymbol withArguments: anArray
| environment selector method |
	environment := thisContext sender method methodClass environment.
	selector := Selector new: aSymbol inEnv: environment createdFrom:  self class environment.
	method := self lookupStrategy lookupSelector: selector forClass: self class.
	method ifNotNil:[	^ method valueWithReceiver: self arguments: anArray ]
		ifNil:[self error: 'DNU ', selector symbol]