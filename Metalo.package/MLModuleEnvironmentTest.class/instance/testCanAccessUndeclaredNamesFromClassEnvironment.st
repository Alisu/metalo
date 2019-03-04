as yet unclassified
testCanAccessUndeclaredNamesFromClassEnvironment

	moduleToTest declareUndefinedClassNamed: #B.
	
 	self assert: ((moduleToTest classNamed: #A) environment includesKey: #B).
