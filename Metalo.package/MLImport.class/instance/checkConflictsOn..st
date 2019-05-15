conflicts
checkConflictsOn: aMLModule 
	"Checks for possible name conflicts of itself within the given module.
	It also checks if the import is redundant: i.e., if an equals but not identical import already exists."	
	aMLModule assertNameNotLocallyDeclared: self aliasName.
	
	aMLModule imports
		detect: [ :each | each aliasName = self aliasName ]
		ifFound: [ :found |
				self error: ('Cannot import {1} from {2}: {1} is already imported from {3} as {4}'
					format: { self importedName . bindingSourceName . found moduleName . self aliasName}) ].