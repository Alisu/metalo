tests
testDefiningMethodInExtensionResolvesNameForModuleOnClassSide
	
	| class |
	class := (module2 classNamed: self classCallingExtendName).
	module2 addExtensionMethod: #bar withSource: 'bar ^42' forClassNamed: self classToExtendName isMeta: true.
	class new pouet.
	self testModuleDefiningImportedAnswerDNU