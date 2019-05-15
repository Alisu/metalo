classes
removeTraitNamed: aString 
	
	| aBinding users|
	aBinding := classBindings bindingOf: aString.
	aBinding ifNil: [ 
		"The class does not exist."
		NotFound signalFor: aString.
	].
	classBindings removeKey: aBinding name.
	
	aBinding value users ifNotNil: [:traitUsers | users:=traitUsers]
	ifNil:[^nil] .
	
	SystemAnnouncer uniqueInstance suspendAllWhile: [ | undefinedTrait |
		undefinedTrait := self declareUndefinedTraitNamed: aBinding name.
		self flag:#Warning."Shoult not used becomeForward users and method dict not updated"
		aBinding value becomeForward: undefinedTrait.
		aBinding value users: users.].
