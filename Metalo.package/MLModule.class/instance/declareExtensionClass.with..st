undeclareds
declareExtensionClass: aString with: aValue
	
	extensions
		at: aString
		ifAbsent: [ extensions add: (MLUndeclaredBinding key: aString value: aValue) ].
	^ extensions bindingOf: aString.