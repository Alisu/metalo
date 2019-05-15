comparing
= anotherImport
	^ self importedName = anotherImport importedName
		and: [ self aliasName = anotherImport importedName
				and: [ self moduleName = anotherImport moduleName ] ]