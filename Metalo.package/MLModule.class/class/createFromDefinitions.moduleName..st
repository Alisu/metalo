as yet unclassified
createFromDefinitions: definitions moduleName: aName
	| module |
	module := MLModule newNamed: aName.

	"1st pass if for tait and hierarchy"
	definitions
		do: [ :aDefinition | 
			aDefinition isTraitDefinition
				ifTrue: [ module declareTrait: aDefinition asRBClassDefinition ]
				ifFalse: [ aDefinition isClassDefinition
						ifTrue: [ module declareClass: aDefinition asRBClassDefinition ] ] ].

	"2rd pass is for method, if the class still doesn't exist it's an extension method we call a resolver"
	definitions
		do: [ :aDefinition | 
			aDefinition isMethodDefinition ifTrue: [ 
				aDefinition isExtensionMethod not
					ifTrue: [ | class |
					class := module
						classNamed: aDefinition className
						ifAbsent: [ module declareClassNamed: aDefinition className ].
					class isTrait
						ifTrue: [ module
								compileMethod: aDefinition source
								inTrait:
									(aDefinition classIsMeta
										ifFalse: [ class ]
										ifTrue: [ class class ]) ]
						ifFalse: [ module
								compileMethod: aDefinition source
								inClass:
									(aDefinition classIsMeta
										ifFalse: [ class ]
										ifTrue: [ class class ]) ] ]
				ifFalse: [
					Smalltalk globals at: aDefinition className ifPresent: [ :class | | theClass |
						theClass := class.
						aDefinition classIsMeta ifTrue: [ theClass := theClass classSide ].
						theClass compile: aDefinition source classified: aDefinition protocol ] ] ] ].
	module classesAndTraits
		do: [ :aBehavior | 
			(aBehavior canUnderstand: #rebuildMethodDictionary)
				ifTrue: [ aBehavior rebuildMethodDictionary ] ].

	MLModuleRegistry global at: module name put: module.
	^ module