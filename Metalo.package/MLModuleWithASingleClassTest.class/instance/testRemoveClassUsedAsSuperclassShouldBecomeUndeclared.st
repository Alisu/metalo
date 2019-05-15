tests
testRemoveClassUsedAsSuperclassShouldBecomeUndeclared

	| coloredPoint undeclaredSet subclasses|

	undeclaredSet := module undeclaredNames.

	coloredPoint := module declareClassNamed: #ColoredPoint subclassOfClassNamed: self definedClassName.

	subclasses:=(module at: self definedClassName) subclasses.

	self assert: 	module undeclaredNames equals: undeclaredSet.

	module removeClassNamed: self definedClassName.

	self assert: (module undeclaredNames includes: self definedClassName).
	self assert: coloredPoint superclass == module undeclaredBindings associations anyOne value.
	self assert:  coloredPoint isUndefined.
	self assert:  coloredPoint superclass isUndefined.
	"The undeclared superclass should also have the old subclasses"
	self assert: subclasses equals: (module at: self definedClassName) subclasses.

	