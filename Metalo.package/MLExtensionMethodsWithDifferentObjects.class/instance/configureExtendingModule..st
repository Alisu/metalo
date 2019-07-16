running
configureExtendingModule: aModule
	
	
	aModule declareImport: self classToExtendName from: module1 name as: self classToExtendName,'ToExtend'.
	"aModule bindTo: MLModuleRegistry global."
	
	self configureCallingMethod: aModule
	
	