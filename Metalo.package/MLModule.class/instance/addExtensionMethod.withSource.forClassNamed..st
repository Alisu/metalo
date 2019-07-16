adding
addExtensionMethod: aSymbol withSource: aSourceCode forClassNamed: aClassName
	
	| extension |
	extension := self createExtensionMethod: aSymbol withSource: aSourceCode forClassNamed: aClassName.
	extension installExtensionMethod: (extension selectorWith: aSymbol).