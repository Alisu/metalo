message performing
perform: aSymbol 
| envi selector method |
	envi := thisContext sender method methodClass environment.
	selector:= Selector new: aSymbol inEnv: envi.
	method := ExtensionOverClassLookupStrategy new lookupSelector: selector forClass: self class.
	method ifNotNil:[	^ self perform: method selector withArguments: (Array new: 0) ]
		ifNil:[self error: 'DNU ', selector symbol]