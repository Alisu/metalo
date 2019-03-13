as yet unclassified
testCanAccessExistingClassesFromClassEnvironment

	moduleToTest declareClassNamed: #B.

 	self assert: ((moduleToTest definedClassNamed: #A) environment includesKey: #B).
	"Verify that B is in classBinding"
	self assert: ((moduleToTest definedClassNamed: #A) environment includesName: #B).
