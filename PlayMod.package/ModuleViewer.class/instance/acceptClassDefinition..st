class
acceptClassDefinition: aText
	
	| aDefinition |
	aDefinition := CDClassDefinitionParser parse: aText asString.
	aDefinition isClassDefinition
	ifTrue:[self selectedModule declareClass: aDefinition.]
	ifFalse:[self selectedModule declareTrait: aDefinition.].
	
	self refreshClasses.