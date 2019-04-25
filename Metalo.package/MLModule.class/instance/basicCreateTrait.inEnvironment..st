as yet unclassified
basicCreateTrait: aCDTraitDefinitionNode inEnvironment: anInstallingEnvironment

	^ self
		basicCreateTrait: aCDTraitDefinitionNode
		metaSuperclass: Trait
		inEnvironment: anInstallingEnvironment
			
		