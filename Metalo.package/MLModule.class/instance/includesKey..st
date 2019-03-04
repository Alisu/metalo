private-class-installer-API
includesKey: aString 
	(classBindings includesKey: aString)
		ifTrue: [ ^ true ].
	(variableBindings includesKey: aString)
		ifTrue: [ ^ true ].
	(importsEnvironment includesKey: aString)
		ifTrue: [ ^ true ].
	"If it is not defined locally, nor in the imports, we define it as an undeclared"
	^ undeclaredBindings includesKey: aString