as yet unclassified
variableListTab
	^ NotebookPage
		title: 'Variables'
		provider: (variableList := self instantiate: WidgetClassList)