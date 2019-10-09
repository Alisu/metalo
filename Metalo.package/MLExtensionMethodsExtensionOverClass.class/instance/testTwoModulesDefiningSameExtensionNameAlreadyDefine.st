tests
testTwoModulesDefiningSameExtensionNameAlreadyDefine

	module1
		compileMethod: 'bar: anInteger ^anInteger - 1'
		inClass: (module1 classNamed: self classToExtendName).
	self assert: ((module1 classNamed: self classCallingExtendName) newExtensionOverClass fooWithArgs) equals: 0.

	module2
		createExtensionMethod: 'bar: anInteger ^anInteger'
		forClassNamed: self classToExtendName.
	self assert: ((module2 classNamed: self classCallingExtendName) newExtensionOverClass fooWithArgs) equals: 1.
	
	module3
		createExtensionMethod: 'bar: anInteger ^ anInteger + 1'
		forClassNamed: self classToExtendName.
	self assert: ((module3 classNamed: self classCallingExtendName) newExtensionOverClass fooWithArgs) equals: 2.
	
	self testModuleDefiningImportedAnswerDNU