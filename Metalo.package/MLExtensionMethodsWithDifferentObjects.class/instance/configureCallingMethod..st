running
configureCallingMethod: aModule
	
	| class |
	aModule declareImport: #Object from: #Kernel.
	aModule bindTo: MLModuleRegistry global.
	class := aModule declareClass: self classCallingExtend.
	aModule compileMethod: 'initialize receiverObject:=ClassToExtend new' inClass: class.
	aModule compileMethod: 'foo receiverObject bar' inClass: class.
	


	
	