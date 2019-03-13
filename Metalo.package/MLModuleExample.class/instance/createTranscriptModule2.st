examples
createTranscriptModule2

	module := MLModule newNamed: #'TestInstallModule'.
	MLModuleRegistry global
		at:  module name put: module.

	module declareImport: #PackageManifest from: #Kernel.
	module declareImport: #Mutex from: #Kernel.
	module declareImport: #Character from: #'Kernel'.
	module declareImport: #String from: #'Collections-Sequenceable'.
	module declareImport: #Model from: #'System-Model'.
	module declareImport: #Smalltalk from: #'System-Support'.
	module declareImport: #Object from: #'Kernel'.

	module declareVariableNamed: #Transcript.

	MLRPackageLoader new
		rpackageName: #'Transcript-Core';
		module: module;
		load.