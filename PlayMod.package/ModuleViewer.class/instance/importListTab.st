initialization
importListTab
	
	^ NotebookPage
		title: 'Imports'
		provider: (importList := self instantiate: ImportViewer)