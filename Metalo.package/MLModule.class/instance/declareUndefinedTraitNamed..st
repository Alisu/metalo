as yet unclassified
declareUndefinedTraitNamed: aTraitName
	
	self assertVariableNotDeclared: aTraitName.
	self assertNameNotImported: aTraitName.
	self assertNameNotLocallyDeclared: aTraitName.
	
	^ self basicCreateUndefinedTraitNamed: aTraitName inEnvironment: (MLUndefinedClassInstallationEnvironment new
		environment: self;
		yourself).