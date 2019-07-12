as yet unclassified
checkForUndefinedInTrait: aTraitComposition
	aTraitComposition asCollectionTraitNode
		do: [ :traitNode | 
			| traitName binding |
			traitName := traitNode name.
			binding := self bindingOf: traitName.		
			binding	
				ifNil: [	"if nil means that there is nothing existing with that name"
						 self declareUndefinedTraitNamed: traitName ]
				
				ifNotNil: [ "if not nil the name is defined somewhere we need to check if it's bound"
					binding value
						ifNil:
							[ "If the binding is not nil, and the value is nil it means that we have a non-trait binding, and we need to create an undefined trait for it."
							binding
								value:
									(self
										basicCreateUndefinedTraitNamed: traitName
										inEnvironment:
											(MLNoInstallationEnvironment new
												environment: self;
												yourself));
								value ]
						ifNotNil: [ "Otherwise we assume the binding value is a Trait and we use it"
							self assert: binding value isTrait.
							binding value ] ].]