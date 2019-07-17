as yet unclassified
declareImportExtension: aBehaviorName from: aModuleName 
		
	| import |
	import := MLImport name: aBehaviorName from: aModuleName as: aBehaviorName receiver: self.
	import checkRedundancyOn: self ifRedundant: [ :existingImport | ^ existingImport ].
	import checkConflictsOn: self.
	
	self declareBinding: import binding atName: import aliasName.
	
	self flag: #MissingCheck."We should check that an extension doesn't already exist"
	self extensions at: aBehaviorName put: import binding.
	imports add: import.
	^ import