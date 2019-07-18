as yet unclassified
extensionOverClassLookupSelector: aSymbol forClass: aClass withEnv: anEnv
	| lookupClass |
	lookupClass := aClass.
	[ lookupClass == nil ]
		whileFalse: [ anEnv extensions
				at: lookupClass name
				ifPresent: [ :extensionClass | 
					extensionClass methodDict
						at: aSymbol
						ifPresent: [ :method | ^ method ] ]
				ifAbsent:
					[ lookupClass methodDict at: aSymbol ifPresent: [ :method | ^ method ] ].
			lookupClass := lookupClass superclass ].
	^ nil