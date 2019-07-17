initialization
buildMenu

	^ self newMenuBar addGroup: [ :group | 
			group addItem: [ :item | 
				item
					name: 'File';
					subMenu: (self newMenu
						addItem: [ :subitem | 
							subitem
								name: 'New...';
								action: [ self createModule ] ];
						addItem: [ :subitem | 
							subitem
								name: 'Import package...';
								action: [ self importModule ] ];
						addItem: [ :subitem | 
							subitem
								name: 'Import module...';
								action: [ self importModule ] ]) ] ].