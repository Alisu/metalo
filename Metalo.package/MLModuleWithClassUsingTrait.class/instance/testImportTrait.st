tests
testImportTrait

	module declareImport: self importTraitName from: #Kernel.
	
	self assert: (module imports isNotEmpty).
	self assert: (module hasImportNamed: self importTraitName).
	
	module bindTo: MLModuleRegistry global.
	
	self assert: ((module at: self importTraitName) isTrait).