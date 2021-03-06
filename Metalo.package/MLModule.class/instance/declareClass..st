class creation
declareClass: aClassDefinition
	| newClass |
	self assertVariableNotDeclared: aClassDefinition className.
	self assertNameNotImported: aClassDefinition className.
	newClass := self
		basicCreateClass: aClassDefinition
		inEnvironment:
			(MLDefinedClassInstallationEnvironment new
				environment: self;
				yourself).
	"if the newly created class define an undefined, all subclasses of the undeclared should be pointing to the new define class"
	self undeclaredBindings
		at: aClassDefinition className
		ifPresent: [ :oldClass | 
			oldClass superclass removeSubclass: oldClass.
			oldClass subclasses
				do: [ :aUser | 
					MLClassInstaller new
						remake: aUser instanceSide
						inEnv:
							(MLDefinedClassInstallationEnvironment new
								environment: aUser environment;
								yourself) ].
			self undeclaredBindings removeKey: aClassDefinition className ].
	^ newClass