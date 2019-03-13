test-undeclareds
testRedefineUndeclaredSuperclassBindingChangesSuperclass
	"We create a class #Object.
	Creating a class defines the name #Object in the module.
	This overrides the undeclared"
	module declareClassNamed: self undeclaredName.
	
	self assert: module undeclaredNames isEmpty.
	self assert: (module definedClassNamed: self definedClassName) superclass equals: (module definedClassNamed: self undeclaredName)