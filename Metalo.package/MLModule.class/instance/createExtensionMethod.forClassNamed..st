as yet unclassified
createExtensionMethod: aSourceCode forClassNamed: aClassName 
	
	| extensionClass method |
	extensionClass := self extensions
		detect: [ :exten | exten name = aClassName ]
		ifNone: [ self createExtensionClassNamed: aClassName ].
	method := self compileMethod: aSourceCode inClass: extensionClass.
	^extensionClass