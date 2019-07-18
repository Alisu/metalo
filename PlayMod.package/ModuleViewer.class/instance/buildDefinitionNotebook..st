as yet unclassified
buildDefinitionNotebook: aPage
	self flag: #BadCode.	"Have the string Imports and Classes as variables somewhere pls"

	"remove all definition except module definition page"
	definitionsNotebook
		removeLastPages: definitionsNotebook pagesNumber - 1.

	"add the correct pages in definition panel according to the page selected"
	aPage title = 'Imports'
		ifTrue: [ definitionsNotebook addPage: self importDefinitionTab ].
	aPage title = 'Classes'
		ifTrue: [ definitionsNotebook
				addPage: self classDefinitionTab;
				addPage: self methodDefinitionTab ].
	aPage title = 'Extensions'
		ifTrue: [ definitionsNotebook
				addPage: self classDefinitionTab;
				addPage: self methodDefinitionTab ].
	self needRebuild: false.
	self buildWithSpec