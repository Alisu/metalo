as yet unclassified
testAccessNonExistingClassInEnvironmentThrowsError
	self
		should: [ (moduleToTest classNamed: #A) environment at: #B ]
		raise: Error