importing
resolveUsingList: aList
	"We use a linked list, may change in the future"

	"to redo"

	aList
		do: [ :anEnv | 
			"Am i a module or a systemDictionary ?"
			(anEnv = bindingSourceName and: [ anEnv classNamed: nameToImport ])
				ifTrue: [ ^ anEnv bindingOf: nameToImport ]
				ifFalse: [ "Am i a group of modules ? (aka moduleRegistry)"
					(anEnv definesName: nameToImport inModuleNamed: bindingSourceName)
						ifTrue: [ ^ anEnv bindingOf: nameToImport inModuleNamed: bindingSourceName ] ] ].
	"I found nothing in the list, i return an Unbound"
	^ MLUnboundVariable named: nameToImport