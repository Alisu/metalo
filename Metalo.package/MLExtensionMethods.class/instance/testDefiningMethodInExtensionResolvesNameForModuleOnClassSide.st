tests
testDefiningMethodInExtensionResolvesNameForModuleOnClassSide
	
	| class |
	class := (module2 classNamed: self classCallingExtendName).
	module2 compileMethod: 'pouet receiverObject class bar' inClass: class.
	module2
		createExtensionMethod: 'bar ^42'
		forClassNamed: self classToExtendName isMeta: true.
	class new pouet.
	self testModuleDefiningImportedAnswerDNU