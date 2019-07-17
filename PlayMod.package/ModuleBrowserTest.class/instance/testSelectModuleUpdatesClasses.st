tests
testSelectModuleUpdatesClasses

	browser selectModule: module.
	
	self
		assert: browser shownClasses asSet
		equals: module classes asSet