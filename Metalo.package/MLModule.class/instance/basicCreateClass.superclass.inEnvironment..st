class creation
basicCreateClass: aClassDefinition superclass: aSuperclass inEnvironment: classBuilderEnvironment
	"Low level API.
	Mainly used to create undefined classes"

	aClassDefinition traitDefinition isNil ifFalse: [ Transcript crShow: 'TraitComposition missing for: ', aClassDefinition className ].

	DangerousClassNotifier disableDuring: [
		^ MLClassInstaller new
			installingEnvironment: classBuilderEnvironment;
			make: [ :builder |
				builder
						"useUndefinedClass;"
						buildEnvironment: classBuilderEnvironment;
						buildFromAST: aClassDefinition;
						superclass: aSuperclass ] ]