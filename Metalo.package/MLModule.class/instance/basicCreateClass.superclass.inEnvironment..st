class creation
basicCreateClass: aClassDefinition superclass: aSuperclass inEnvironment: classBuilderEnvironment
	"Low level API.
	Mainly used to create undefined classes"

	DangerousClassNotifier disableDuring: [
		^ MLClassInstaller new
			installingEnvironment: classBuilderEnvironment;
			make: [ :builder |
				builder
						"useUndefinedClass;"
						buildEnvironment: classBuilderEnvironment;
						buildFromAST: aClassDefinition;
						superclass: aSuperclass ] ]