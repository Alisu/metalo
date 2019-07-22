as yet unclassified
createExtensionMethod: aSourceCode forClassNamed: aClassName 
	
	| extensionClass |
	extensionClass := self extensions
		detect: [ :exten | exten name = aClassName ]
		ifNone: [ self createExtensionClassNamed: aClassName ].
	self compileMethod: aSourceCode inClass: extensionClass.
	^extensionClass