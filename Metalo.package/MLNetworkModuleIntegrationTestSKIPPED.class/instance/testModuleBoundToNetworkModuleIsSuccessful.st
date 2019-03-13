tests-binding
testModuleBoundToNetworkModuleIsSuccessful

	| socketTest result |
	registry registerModule: networkModule.
	registry registerModule: self networkMIME.
	self networkMIME bindTo: registry.
	
	testModule := self networkTests bindTo: registry; yourself.
	
	socketTest := testModule definedClassNamed: #SocketTest.
	result := socketTest run: #testClientConnect.
	
	self assert: result hasPassed