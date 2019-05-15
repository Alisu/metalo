tests
testDefineClassWhenTraitWasExpectedShouldRaiseError

	module declareUndefinedTraitNamed: #TPouet.
	
	self should: (module declareClassNamed: #TPouet) raise: Error.
	

	
	