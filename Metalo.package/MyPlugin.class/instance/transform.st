api
transform
	
	ast nodesDo: [ :each |
		(each isMessage)
			ifTrue: [each receiver myPerform: each selector withArguments: each arguments ]].
	^ast doSemanticAnalysis; yourself