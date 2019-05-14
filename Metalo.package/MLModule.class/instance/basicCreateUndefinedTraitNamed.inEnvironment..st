as yet unclassified
basicCreateUndefinedTraitNamed: aTraitName inEnvironment: anInstallingEnvironment
	| res |
	res := CDClassDefinitionParser
		parse: 'Trait named: ' , aTraitName.

	^ self
		basicCreateTrait: res
		metaSuperclass: UndefinedTrait
		inEnvironment: anInstallingEnvironment