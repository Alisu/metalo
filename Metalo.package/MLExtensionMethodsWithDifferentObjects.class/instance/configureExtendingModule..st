running
configureExtendingModule: aModule
	
	
	aModule import: self classToExtendName from: module1.
	aModule bindTo: MLModuleRegistry global.
	
	self configureCallingMethod: aModule
	
	