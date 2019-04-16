adding
addImport: anImport
	
	anImport checkRedundancyOn: self ifRedundant: [ :existingImport | ^ existingImport ].
	anImport checkConflictsOn: self.
	
	self declareBinding: anImport binding.
	importsEnvironment add: anImport binding.
	imports add: anImport.
	^ anImport