running
configureExtendingModule: aModule
	
	
	aModule declareImport: self classToExtendName from: module1.
	aModule bindTo: MLModuleRegistry global.
	
	self configureCallingMethod: aModule
	
	