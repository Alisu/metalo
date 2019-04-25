tests
testDeclareUndefinedTrait
	
	module declareUndefinedTraitNamed: #TPouet .
	
	self assert: (module hasUndeclaredBinding: #TPouet).
	self assert: ((module at: #TPouet) isUndefined)
	