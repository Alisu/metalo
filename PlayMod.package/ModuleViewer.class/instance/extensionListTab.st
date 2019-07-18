tabs
extensionListTab
		
		^ NotebookPage
		title: 'Extensions'
		provider: (extensionList := self instantiate: WidgetClassList)