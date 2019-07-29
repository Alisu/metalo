as yet unclassified
addExtensionMethod: aSymbol withSource: aSourceCode forClassNamed: aClassName isMeta: isMeta 
	
	| extension |
	extension := self createExtensionMethod: aSymbol withSource: aSourceCode forClassNamed: aClassName isMeta: isMeta.
	