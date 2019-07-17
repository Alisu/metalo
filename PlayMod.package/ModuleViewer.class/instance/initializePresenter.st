initialization
initializePresenter
	self modules displayBlock: [ :aModule | aModule name ].
	self refreshModuleList.
	self refreshDefinitionTabs.
	
	moduleContentsNotebook 
		whenSelectedPageChangedDo: [:page | self buildDefinitionNotebook: page].
	
	modules
		whenSelectionChangedDo: [ :selection | [ :module | self selectModule: module ] cull: selection selectedItem ].
	
	importList
		importContextMenu: self buildImportContextMenu;
		whenImportChanged: [ :import | import ifNotNil: [ importList resetSelection. self refreshDefinitionTabs ] ].
	
	classList
		classContextMenu: self buildClassContextMenu;
		methodContextMenu: self buildMethodContextMenu;
		whenSelectedClassChangedDo: [ :class | class ifNotNil: [ self refreshDefinitionTabs ] ];
		whenSelectedMethodChangedDo: [ :method | method ifNotNil: [ self refreshDefinitionTabs ] ].
	
	undeclaredList 
		classContextMenu: self buildUndeclaredContextMenu.