actions
createModule
	
	| name |
	name := UIManager default request: 'New Module Name' initialAnswer: 'MyModule'.
	
	moduleRegistry registerModule: (MLModule newNamed: name).
	self refreshModuleList.