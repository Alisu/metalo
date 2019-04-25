as yet unclassified
basicCreateTrait: aCDTraitDefinitionNode metaSuperclass: aClass inEnvironment: classBuilderEnvironment

	|trait|	
	"we shouldn't call compiler here, that create an unwanted compiler dependency"
	aCDTraitDefinitionNode traitDefinition
		ifNotNil: [ :traitDef | 
					self checkForUndefinedInTrait: traitDef.
					trait := (OpalCompiler new
						source: traitDef originalNode formattedCode;
						environment: classBuilderEnvironment;
						evaluate).
					trait isNil
					ifTrue:[trait := TaEmptyComposition new]
					]
		ifNil: [trait := TaEmptyComposition new].
			

	DangerousClassNotifier disableDuring: [
		^ MLClassInstaller new
			installingEnvironment: classBuilderEnvironment;
			make: [ :builder |
				builder
					buildEnvironment: classBuilderEnvironment;
					name: aCDTraitDefinitionNode className;
					superclass: nil;
					metaSuperclass: aClass;
					slots: (aCDTraitDefinitionNode slots collect: [ :e | e asSlot ]);
					sharedVariables: '';
					sharedPools: '';
					category: nil;
					traitComposition: trait;
					classTraitComposition: trait classComposition;
					classSlots: #() .] ]