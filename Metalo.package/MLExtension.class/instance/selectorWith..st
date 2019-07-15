as yet unclassified
selectorWith: aSymbol 
	^self selectors detect: [ :e | e symbol = aSymbol ]