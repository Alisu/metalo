initialization
classListTab
	
	^ NotebookPage
		title: 'Classes'
		provider: (classList := self instantiate: ClassMethodModuleBrowser)