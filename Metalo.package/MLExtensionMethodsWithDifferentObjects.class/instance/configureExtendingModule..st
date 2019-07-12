running
configureExtendingModule: aModule
	
	
	aModule declareImport: self classToExtendName from: module1 name.
	"aModule bindTo: MLModuleRegistry global."
	
	self configureCallingMethod: aModule
	
	