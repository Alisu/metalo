as yet unclassified
testCanAccessExistingClassesFromClassEnvironment

	moduleToTest declareClassNamed: #B.
 	self assert: ((moduleToTest classNamed: #A) environment includesKey: #B).
