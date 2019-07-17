tests
testSelectModuleUpdatesImports

	browser selectModule: module.
	
	self
		assert: browser importList items asSet
		equals: module imports asSet