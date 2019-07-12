as yet unclassified
createFromSnapshot: aSnapshot moduleName: aName
	| module |
	module := MLModule newNamed: aName.

	"1st pass is for class definition and hierarchy"
	aSnapshot definitions
		do: [ :aDefinition | 
			aDefinition isClassDefinition
				ifTrue: [ module declareClass: aDefinition asRBClassDefinition ] ].

	"2nd pass is for method, if the class still doesn't exist it's an extension method we call a resolver"
	aSnapshot definitions
		do: [ :aDefinition | 
			(aDefinition isMethodDefinition)
				ifTrue: [ module
						compileMethod: aDefinition source
						inClass:
							(aDefinition classIsMeta
								ifFalse: [ module
										classNamed: aDefinition className
										ifAbsent: [ module declareClassNamed: aDefinition className subclassOfClassNamed: aDefinition className,'Outer' ] ]
								ifTrue: [ (module
										classNamed: aDefinition className
										ifAbsent: [ module declareClassNamed: aDefinition className subclassOfClassNamed: aDefinition className,'Outer'])
										class ]) ] ].
	MLModuleRegistry global at: module name put: module.
	^ module