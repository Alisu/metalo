tests
testSelectModuleUpdatesUndeclareds

	browser selectModule: module.
	
	self
		assert: browser undeclaredList items asSet
		equals: module undeclaredNames asSet