as yet unclassified
createExtensionMethod: aSourceCode forClassNamed: aClassName isMeta: isMeta
	
	| extensionClass |
	extensionClass := self extensions
		detect: [ :exten | exten name = aClassName ]
		ifNone: [ self createExtensionClassNamed: aClassName ].
	isMeta
	ifTrue:[self compileMethod: aSourceCode inClass: (extensionClass class)]
	ifFalse:[self compileMethod: aSourceCode inClass: extensionClass.].
	^extensionClass