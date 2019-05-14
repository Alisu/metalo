imports
removeImport: aName 
	
	"I remove looking for aliasName"
	
	| import |
	import := self imports detect: [ :each | 
		each aliasName = aName ].
	self imports remove: import.
	importsEnvironment removeKey: aName.
	self removeModuleUsersIn: import.
	self checkUndeclaredBinding: import binding 