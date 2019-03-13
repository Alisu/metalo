as yet unclassified
testAccessNonExistingClassInEnvironmentThrowsError
	self
		should: [ ((moduleToTest definedClassNamed: #A) environment at: #B)= nil ]
