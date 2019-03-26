variables
defineVariableNamed: aString withValue: aValue

	| binding |
	binding := variableBindings at:aString.
	^binding value: aValue.