running
configureCallingMethod: aModule
	
	| class |
	aModule declareImport: #MyObject from: #Kernel.
	aModule bindTo: MLModuleRegistry global.
	class := aModule declareClass: self classCallingExtend.
	aModule compileMethod: 'initialize receiverObject:=ClassToExtend new' inClass: class.
	aModule compileMethod: 'foo receiverObject perform: #bar' inClass: class.
	module2 compileMethod: 'pouet receiverObject class perform: #bar' inClass: class.
	


	
	