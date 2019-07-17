initialization
moduleDefinitionTab
	
	^ NotebookPage
		title: 'Module definition'
		provider: [ 
			self newText
				"aboutToStyle: true;"
				text: (self selectedModule ifNotNil: #printDeclaration);
				acceptBlock: [ :someText | self acceptModuleDefinition: someText ];
				yourself ]