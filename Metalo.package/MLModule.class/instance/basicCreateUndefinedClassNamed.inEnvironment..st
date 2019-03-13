class creation
basicCreateUndefinedClassNamed: aClassName inEnvironment: anInstallingEnvironment
	| res |
	res := CDClassDefinitionParser
		parse: 'nil subclass: ' , aClassName.
	^ self
		basicCreateClass: res
		superclass: UndefinedClass
		inEnvironment: anInstallingEnvironment