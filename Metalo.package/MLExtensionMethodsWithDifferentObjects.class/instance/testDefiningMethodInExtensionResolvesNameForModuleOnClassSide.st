tests
testDefiningMethodInExtensionResolvesNameForModuleOnClassSide
	
	self flag:#TODO.
	module2
		createExtensionMethod: 'bar ^42'
		forClassNamed: self classToExtendName.
	(module2 classNamed: self classCallingExtendName) new foo.
	self testModuleDefiningImportedAnswerDNU