class
classDefinitionTab
	
	^ NotebookPage
		title: 'Class definition'
		provider: [ 
			self newText
				text: (self selectedClass ifNotNil: #definitionNew);
				acceptBlock: [ :someText | self acceptClassDefinition: someText ];
				yourself ]