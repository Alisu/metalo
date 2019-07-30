as yet unclassified
lookupSelector: aSymbol forClass: aClass withEnv: anEnv
	| lookupClass |
	lookupClass := aClass.
	[ lookupClass isNil ]
		whileFalse: [ lookupClass methodDict
				at: aSymbol
				ifPresent: [ :method | ^ method ]
				ifAbsent: [ anEnv
						findExtensionFor: lookupClass
						ifPresent: [ :extensionClass | 
							extensionClass methodDict
								at: aSymbol
								ifPresent: [ :method | ^ method ] ]
						ifAbsent: [  ] ].
			lookupClass := lookupClass superclass ].
	^ nil