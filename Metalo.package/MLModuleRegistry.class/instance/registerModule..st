registration
registerModule: aModule
	
	(moduleEnvironment includesKey: aModule name)
		ifTrue: [ self error: 'Module named "', aModule name, '" already defined' ].

	self at: aModule name put: aModule