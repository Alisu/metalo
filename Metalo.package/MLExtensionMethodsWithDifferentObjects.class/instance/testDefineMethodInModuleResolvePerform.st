tests
testDefineMethodInModuleResolvePerform

	module2 addExtensionMethod: #bar withSource: 'bar ^42' forClassNamed: self classToExtendName.
 	((module2 classNamed: self classCallingExtendName) new) foo.
	self testModuleDefiningImportedAnswerDNU.