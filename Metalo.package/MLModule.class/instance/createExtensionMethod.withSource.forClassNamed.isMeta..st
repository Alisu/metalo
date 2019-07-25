as yet unclassified
createExtensionMethod: aSymbol withSource: aSourceCode forClassNamed: aClassName isMeta: aTrue 
	
	| extension method selector |
	extension := self extensions
		detect: [ :exten | exten className = aClassName ]
		ifNone: [ self addExtensionForClassNamed: aClassName ].
	selector := Selector new: aSymbol inEnv: self.
	extension addSelector: selector.
	method := self compiler
		source: aSourceCode;
		compile.
	extension addMethod: selector->method.
	^extension