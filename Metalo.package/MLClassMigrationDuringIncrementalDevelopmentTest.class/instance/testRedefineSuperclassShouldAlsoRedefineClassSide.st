tests
testRedefineSuperclassShouldAlsoRedefineClassSide

	|res|
	
	res:=(CDClassDefinitionParser parse: 'Object subclass: #Point' ).
		
	module declareClass: res.
	
	self assert: (module hasUndeclaredBinding: #Object).
	self assert: (module definesName: #Point).
	self assert: ((module definedClassNamed:#Point)superclass class == (module definedClassNamed:#Point) class superclass).
	
	"Now we define an object, we suppose that a kernel module exist"
	
	module declareImport: #Object from: #Kernel.
	
	self assert: (module undeclaredNames isEmpty).
	self assert: ((module definedClassNamed:#Point) superclass class == (module definedClassNamed:#Point)class superclass).
		
	"Now we bind it"
	module bindTo: module defaultNameResolver.
	self assert: ((module definedClassNamed:#Point) superclass == (ShSmalltalkGlobalsEnvironment new definedClassNamed:#Object)).
	self assert: ((module definedClassNamed:#Point) superclass class == (module definedClassNamed:#Point)class superclass).

	


	