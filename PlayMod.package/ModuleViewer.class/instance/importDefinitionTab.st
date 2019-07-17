initialize
importDefinitionTab
	^ NotebookPage
		title: 'Import definition'
		provider: [ 
			self newText
				text: (self selectedImport ifNotNil: #printDeclaration);
				acceptBlock: [ :someText | self acceptImportDefinition: someText ];
				yourself ]