class creation
declareUndefinedClassNamed: aClassName
	
	self assertVariableNotDeclared: aClassName.
	self assertNameNotImported: aClassName.
	self assertNameNotLocallyDeclared: aClassName.
	
	^ self basicCreateUndefinedClassNamed: aClassName inEnvironment: (MLUndefinedClassInstallationEnvironment new
		environment: self;
		yourself).