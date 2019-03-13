binding-resolution
at: aName

	(classBindings includesKey: aName)
		ifTrue: [ ^ (classBindings bindingOf: aName) value ].
	variableBindings
		at: aName
		ifPresent: [ :binding | ^ binding ].
	(self hasImportNamed: aName)
		ifTrue: [ ^ (self importedBindingOf: aName) value ].
	((undeclaredBindings includesKey: aName) and:[(undeclaredBindings at: aName) isNotNil])
		ifTrue: [ ^ (self undeclaredBindingOf: aName) value ].
	^ nil.