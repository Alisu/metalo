tests
testDefiningMethodWithArgumentsInExtensionResolvesNameForModule

	module2
		addExtensionMethod:#bar: withSource:'bar: anInteger ^anInteger'
		forClassNamed: self classToExtendName.
	(module2 classNamed: self classCallingExtendName) new fooWithArgs.
	self testModuleDefiningImportedAnswerDNU