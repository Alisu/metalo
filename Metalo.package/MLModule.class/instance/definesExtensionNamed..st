as yet unclassified
definesExtensionNamed: aString 
	^self extensions associationAt: aString ifAbsent:[nil]