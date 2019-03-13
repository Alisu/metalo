tests
testCreateSubclassOfUnboundClassHasUnboundSuperclass

	"Point class exists and inherits from an UndefinedClass"
	self assert: (module definedClassNamed: self definedClassName) superclass isUndefined 