tests
testTwoModulesDefiningSameExtensionName

	module2
		createExtensionMethod: 'bar: anInteger ^anInteger'
		forClassNamed: self classToExtendName.
	self assert: ((module2 classNamed: self classCallingExtendName) new fooWithArgs) equals: 1.
	
	module3
		createExtensionMethod: 'bar: anInteger ^ anInteger + 1'
		forClassNamed: self classToExtendName.
	self assert: ((module3 classNamed: self classCallingExtendName) new fooWithArgs) equals: 2.
	
	self testModuleDefiningImportedAnswerDNU