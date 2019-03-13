as yet unclassified
testCanAccessUndeclaredNamesFromClassEnvironment

	moduleToTest declareUndefinedClassNamed: #B.
 	self assert: ((moduleToTest definedClassNamed: #A) environment includesKey: #B).
	"Verify that B is in undeclaredBinding"
	self assert: ((moduleToTest definedClassNamed: #A) environment undeclaredBindings includesKey: #B ).
