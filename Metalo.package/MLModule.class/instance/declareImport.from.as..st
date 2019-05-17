imports
declareImport: aName from: aContainerModuleName as: anAliasName
	
	| import |
	import := MLImport name: aName from: aContainerModuleName as: anAliasName receiver: self.
	import checkRedundancyOn: self ifRedundant: [ :existingImport | ^ existingImport ].
	import checkConflictsOn: self.
	
	self declareBinding: import binding atName: import aliasName.
	importsEnvironment at: anAliasName put: import binding.
	imports add: import.
	^ import