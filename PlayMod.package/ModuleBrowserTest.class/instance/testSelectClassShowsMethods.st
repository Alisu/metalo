tests
testSelectClassShowsMethods

	browser selectModule: module.
	browser selectClass: class.
	
	self
		assert: browser shownMethods asSet
		equals: class methods asSet