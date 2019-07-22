as yet unclassified
lookupSelector: aSymbol forClass: aClass withEnv: anEnv
	| lookupClass |
	"1st normal lookup"
	lookupClass := aClass.
	[ lookupClass isNil ]
		whileFalse:
			[ lookupClass methodDict at: aSymbol ifPresent: [ :method | ^ method ].
			lookupClass := lookupClass superclass ].

	"2nd extension only lookup"
	lookupClass := aClass.
	[ lookupClass == nil ]
		whileFalse: [ anEnv extensions
				at: lookupClass name
				ifPresent: [ :extensionClass | 
					extensionClass methodDict
						at: aSymbol
						ifPresent: [ :method | ^ method ] ].
			lookupClass := lookupClass superclass ].
	^ nil