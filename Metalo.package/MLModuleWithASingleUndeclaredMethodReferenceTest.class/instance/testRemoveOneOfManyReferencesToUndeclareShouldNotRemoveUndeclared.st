test-undeclareds
testRemoveOneOfManyReferencesToUndeclareShouldNotRemoveUndeclared


	module compileMethod: 'test2 ^', self undeclaredVariableName inClass: definedClass.
	
	self assert: (module undeclaredNames includes: self undeclaredVariableName).
	
	module removeSelector: self definedMethodSelector fromClassNamed: self definedClassName.
	
	self assert: (module undeclaredNames includes: self undeclaredVariableName).