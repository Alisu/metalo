initialization
undeclaredListTab
	
	^ NotebookPage
		title: 'Undeclareds'
		provider: (undeclaredList := self instantiate: WidgetClassList)