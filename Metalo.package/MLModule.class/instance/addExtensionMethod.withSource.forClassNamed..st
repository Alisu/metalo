adding
addExtensionMethod: aSymbol withSource: aSourceCode forClassNamed: aClassName
	
^ self addExtensionMethod: aSymbol withSource: aSourceCode forClassNamed: aClassName isMeta: false 