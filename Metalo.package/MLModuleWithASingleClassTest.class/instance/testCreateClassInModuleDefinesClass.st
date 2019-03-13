tests
testCreateClassInModuleDefinesClass

	self assert: (module definedClassNamed: self definedClassName) isClass