tests
testDefiningMethodInExtensionResolvesNameForModule
	
	module2
		createExtensionMethod: 'bar ^42'
		forClassNamed: self classToExtendName.
		1halt.
	(module2 classNamed: self classCallingExtendName) new foo.
	self testModuleDefiningImportedAnswerDNU