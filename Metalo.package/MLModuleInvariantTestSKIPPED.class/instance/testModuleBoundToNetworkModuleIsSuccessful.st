tests-binding
testModuleBoundToNetworkModuleIsSuccessful

	| registry socketTest result |
	registry := MLModuleRegistry default.
	registry registerModule: networkModule.
	testModule := MLModuleDefinition networkTests createModuleBoundTo: registry.
	
	socketTest := testModule definedClassNamed: #SocketTest.
	result := socketTest run: #testClientConnect.
	
	self assert: result hasPassed