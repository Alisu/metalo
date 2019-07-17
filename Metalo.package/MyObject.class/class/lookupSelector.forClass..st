as yet unclassified
lookupSelector: aSelector forClass: aClass
	| lookupClass |
	lookupClass := aClass.
	[ lookupClass == nil ]
		whileFalse: [ (lookupClass methodDict
				myAt: aSelector)
				ifNotNil: [ :method | ^ method ]
				ifNil: [ lookupClass methodDict at: (aSelector symbol)
					ifPresent: [ :method | ^ method ] ].
			lookupClass := lookupClass superclass ].
	^ nil