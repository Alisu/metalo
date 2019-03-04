examples
runExample2

	self setupGlobalRegistry.
	self createTranscriptModule2.
	"self testTranscriptModule."
	
	^ MLModuleRegistry global at: #'TestInstallModule'