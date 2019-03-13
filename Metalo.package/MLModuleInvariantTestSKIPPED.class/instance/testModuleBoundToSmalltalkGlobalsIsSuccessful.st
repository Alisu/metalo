tests-binding
testModuleBoundToSmalltalkGlobalsIsSuccessful

	| registry socketTest result |
	registry := MLModuleRegistry default.
	registry at: #Network put: Smalltalk globals.
	testModule := MLModuleDefinition networkTests createModuleBoundTo: registry.
	
	socketTest := testModule definedClassNamed: #SocketTest.
	result := socketTest run: #testClientConnect.
	
	self assert: result hasPassed