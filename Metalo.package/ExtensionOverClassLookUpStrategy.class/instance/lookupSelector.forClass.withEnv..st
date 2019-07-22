as yet unclassified
lookupSelector: aSymbol forClass: aClass withEnv: anEnv
| lookupClass |
	lookupClass := aClass.
	[ lookupClass isNil ]
		whileFalse: [ 
			anEnv findExtensionFor: lookupClass
				ifPresent: [ :extensionClass | 
					extensionClass methodDict
						at: aSymbol
						ifPresent: [ :method | ^ method ] ]
				ifAbsent:
					[ lookupClass methodDict at: aSymbol ifPresent: [ :method | ^ method ] ].
			lookupClass := lookupClass superclass ].
	^ nil