as yet unclassified
lookupSeletor: aSelector forClass: aClass
	| lookupClass |
	lookupClass := aClass.
	[ lookupClass == nil ]
		whileFalse: [ lookupClass methodDict
				at: aSelector
				ifPresent: [ :method | ^ method ]
				ifAbsent: [ lookupClass methodDict at: (aSelector symbol)
					ifPresent: [ :method | ^ method ] ].
			lookupClass := lookupClass superclass ].
	^ nil