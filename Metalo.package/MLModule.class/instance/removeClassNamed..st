classes
removeClassNamed: aString 
	
	| aBinding subclasses|
	aBinding := classBindings bindingOf: aString.
	subclasses := aBinding value subclasses.
	aBinding ifNil: [ 
		"The class does not exist."
		NotFound signalFor: aString.
	].
	classBindings removeKey: aBinding name.
	
	SystemAnnouncer uniqueInstance suspendAllWhile: [ | undefinedClass |
		undefinedClass := self declareUndefinedClassNamed: aBinding name.
		aBinding value becomeForward: undefinedClass.
		subclasses do: [:aSubclass | aBinding value addSubclass: aSubclass]].
	self checkUndeclaredBinding: aBinding 