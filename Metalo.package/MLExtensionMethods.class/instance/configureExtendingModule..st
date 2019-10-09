running
configureExtendingModule: aModule
	
	aModule declareImport: self classToExtendName from: module1 name as: self classToExtendName.
	
	self configureCallingMethod: aModule.
	
	