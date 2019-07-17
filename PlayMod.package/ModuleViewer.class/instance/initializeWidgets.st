initialization
initializeWidgets

	menu := self buildToolBarMenu.
	modules := self newList.
	modules contextMenu: self buildModuleContextMenu.
	
	moduleContentsNotebook := self newNotebook.
	moduleContentsNotebook
		addPage: self classListTab;
		addPage: self importListTab;
		addPage: self variableListTab;
		addPage: self undeclaredListTab.
	
	definitionsNotebook := self newNotebook.
	definitionsNotebook
		addPage: self moduleDefinitionTab.

	
	self focusOrder
		add: modules;
		add: importList;
		add: classList;
		add: undeclaredList;
		add: definitionsNotebook.
