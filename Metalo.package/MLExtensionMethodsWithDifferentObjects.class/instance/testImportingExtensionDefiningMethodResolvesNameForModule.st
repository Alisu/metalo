tests
testImportingExtensionDefiningMethodResolvesNameForModule

	self testDefineMethodInModuleResolvePerform.
	module3 importExtension: #ClassToExtend from: module2 name.
 	((module3 classNamed: self classCallingExtendName) new) foo.
	self testModuleDefiningImportedAnswerDNU.