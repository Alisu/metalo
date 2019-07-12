as yet unclassified
createFromDefinitionsV2: definitions moduleName: aName
	| module |
	module := MLModule newNamed: aName.

	"trait"
	definitions
		do: [ :aDefinition | 
			aDefinition isTraitDefinition
				ifTrue: [ module declareTrait: aDefinition asRBClassDefinition ] ].
	"trait methods"
	definitions
		do: [ :aDefinition | 
			(aDefinition isMethodDefinition
				and: [ aDefinition isExtensionMethod not ])
				ifTrue: [ | class |
					class := module classNamed: aDefinition className ifAbsent: [  ].
					class
						ifNotNil: [ class isTrait
								ifTrue: [ module
										compileMethod: aDefinition source
										inTrait:
											(aDefinition classIsMeta
												ifFalse: [ class ]
												ifTrue: [ class class ]) ] ] ] ].

	"1st pass if for class and hierarchy"
	definitions
		do: [ :aDefinition | 
			aDefinition isTraitDefinition
				ifFalse: [ aDefinition isClassDefinition
						ifTrue: [ module declareClass: aDefinition asRBClassDefinition ] ] ].

	"2rd pass is for method, if the class still doesn't exist it's an extension method we call a resolver"
	definitions
		do: [ :aDefinition | 
			(aDefinition isMethodDefinition
				and: [ aDefinition isExtensionMethod not ])
				ifTrue: [ | class |
					class := module
						classNamed: aDefinition className
						ifAbsent: [ module declareClassNamed: aDefinition className ].
					module
						compileMethod: aDefinition source
						inClass:
							(aDefinition classIsMeta
								ifFalse: [ class ]
								ifTrue: [ class class ]) ] ].
	MLModuleRegistry global at: module name put: module.
	^ module