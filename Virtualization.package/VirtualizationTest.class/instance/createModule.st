running
createModule
	
	| module |
	module:=MLModule newNamed: #VirtualizationModuleTest.
	module declareClass: (CDClassDefinitionParser parse: self undefinedSuperclass,' subclass: #Pouet').
	^module.
	
	
	

