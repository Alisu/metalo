imports
removeImport: aName 
	
	"I remove looking for aliasName"
	
	| import |
	import := self imports detect: [ :each | 
		each aliasName = aName ].
	self imports remove: import.
	importsEnvironment removeKey: aName ifAbsent: [ self notify: aName,' was already removed from importsEnvironment' ]. 
	self checkUndeclaredBinding: import binding