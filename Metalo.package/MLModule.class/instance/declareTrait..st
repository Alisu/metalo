class creation
declareTrait: aTraitDefinition
	| newTrait |
	self assertVariableNotDeclared: aTraitDefinition className.
	self assertNameNotImported: aTraitDefinition className.
	newTrait := self
		basicCreateTrait: aTraitDefinition
		inEnvironment:
			(MLDefinedClassInstallationEnvironment new
				environment: self;
				yourself).
	self undeclaredBindings
		at: aTraitDefinition className
		ifPresent: [ :oldTrait | 
			newTrait users: oldTrait users.
			newTrait isStateful
				ifTrue: [ newTrait users do: [ :aUser | MLClassInstaller remake: aUser instanceSide] ]
				ifFalse: [ newTrait users do: [ :aUser | aUser rebuildMethodDictionary ] ].
			self undeclaredBindings removeKey: aTraitDefinition className ].
	^ newTrait