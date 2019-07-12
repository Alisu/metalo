tests
testModuleDefiningImportedAnswerDNU

	self should: (module1 classNamed: self classCallingExtendName) foo raise: Error.