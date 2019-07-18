method
methodDefinitionTab
	^ NotebookPage
		title: 'Method definition'
		provider: [ 
			self newText
				"aboutToStyle: true;"
				text: (self selectedMethod ifNotNil: #sourceCode);
				acceptBlock: [ :someText | self acceptMethodText: someText ];
				yourself ]