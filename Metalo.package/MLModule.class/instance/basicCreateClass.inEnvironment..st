class creation
basicCreateClass: aClassDefinition inEnvironment: anInstallingEnvironment
	| superclass superclassName|
	superclassName := aClassDefinition superclassName.
	superclass := superclassName = #nil ifFalse: [ self checkForUndefinedSuperClass: superclassName].
	aClassDefinition traitDefinition ifNotNil: [:traitDef | self checkForUndefinedInTrait: traitDef].
	
	^ self
		basicCreateClass: aClassDefinition 
		superclass: superclass
		inEnvironment: anInstallingEnvironment