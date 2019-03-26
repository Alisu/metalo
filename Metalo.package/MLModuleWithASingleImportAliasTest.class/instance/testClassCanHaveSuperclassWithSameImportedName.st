tests
testClassCanHaveSuperclassWithSameImportedName
|class|
	module declareClassNamed: self importedName.
	module bindTo: module defaultNameResolver.
	class:=module definedClassNamed: #Object.
	class superclass: (module at: #Pouet).

	self assert: [ class superclass = ( Smalltalk classNamed: #Object )]
	