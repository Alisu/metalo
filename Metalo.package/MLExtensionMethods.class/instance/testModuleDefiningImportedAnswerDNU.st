tests
testModuleDefiningImportedAnswerDNU

	self should: [((module1 classNamed: self classCallingExtendName) new) foo ] raise: Error.