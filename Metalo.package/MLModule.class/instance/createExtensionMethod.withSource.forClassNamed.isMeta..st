as yet unclassified
createExtensionMethod: aSymbol withSource: aSourceCode forClassNamed: aClassName isMeta: isMeta
	| extension method selector |
	extension := self extensions
		detect: [ :exten | exten extendedClassName = aClassName ]
		ifNone: [ self addExtensionForClassNamed: aClassName ].
	selector := Selector new: aSymbol inEnv: self.
	method := self compiler
		source: aSourceCode;
		compile.
	isMeta
		ifTrue: [ extension addClassSideMethod: selector -> method ]
		ifFalse: [ extension addMethod: selector -> method ].
	^ extension