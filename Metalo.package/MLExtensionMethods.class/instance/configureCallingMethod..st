running
configureCallingMethod: aModule
	
	| class |
	aModule declareImport: #MyObject from: #Kernel.
	aModule bindTo: MLModuleRegistry global.
	class := aModule declareClass: self classCallingExtend.
	aModule compileMethod: 'initialize receiverObject:=ClassToExtend new' inClass: class.
	aModule compileMethod: 'foo receiverObject bar' inClass: class.
	aModule compileMethod: 'fooWithArgs receiverObject bar:1 ' inClass: class.

	


	
	