comparing
= anotherImport
	^ self importedName = anotherImport importedName
		and: [ self aliasName = anotherImport aliasName
				and: [ self moduleName = anotherImport moduleName ] ]