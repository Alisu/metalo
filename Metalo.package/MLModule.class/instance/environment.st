accessing
environment
	
	^ (classBindings associations, undeclaredBindings associations , importsEnvironment associations) asDictionary