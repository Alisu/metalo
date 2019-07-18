initialization
selectModule: aModule

	importList unselectAll.
	classList unselectAll.
	
	aModule ifNil: [
		importList items: #().
		classList items: #().
		undeclaredList items: #().
		definitionsNotebook text: ''.
		definitionsNotebook behavior: nil. ]
			ifNotNil: [
		importList imports: (self importsIn: aModule).
		classList classes: (self classesIn: aModule).
		undeclaredList items: (self undefinedIn: aModule).
		variableList items: (self variableIn: aModule).
		extensionList classes: (self extensionIn: aModule).
		self refreshDefinitionTabs. ]