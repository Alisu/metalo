running
configureCallingMethod: aModule
	
	| class |
	class := aModule declareClass: self classCallingExtend.
	aModule compileMethod: 'initialize receiverObject:=ClassToExtend new' inClass: class.
	aModule compileMethod: 'foo receiverObject bar' inClass: class.
	


	
	