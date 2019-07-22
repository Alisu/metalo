as yet unclassified
lookupSelector: aSelector forClass: aClass
	| lookupClass |
	lookupClass := aClass.
	[ lookupClass == nil ]
		whileFalse: [ lookupClass methodDict
				at: aSelector
				ifPresent: [ :method | ^ method ].
			lookupClass := lookupClass superclass ].
	lookupClass := aClass.
	[ lookupClass == nil ]
		whileFalse: [ (lookupClass methodDict myAt: aSelector)
				ifNotNil: [ :method | ^ method ].
			lookupClass := lookupClass superclass ].
	^ nil