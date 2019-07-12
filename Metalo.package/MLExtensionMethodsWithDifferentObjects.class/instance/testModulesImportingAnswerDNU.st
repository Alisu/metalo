tests
testModulesImportingAnswerDNU

	self should: [((module2 classNamed: self classCallingExtendName) new) foo ] raise: Error.
	self should: [((module3 classNamed: self classCallingExtendName) new) foo ] raise: Error.