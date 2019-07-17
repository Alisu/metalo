initialization
buildImportContextMenu
	^ self newMenu
				addItem: [ :item | 
					item
						name: 'Remove';
						action: [ self selectedModule removeImport: self selectedImport aliasName.
										self refreshImports.] ];
				addItem: [ :item | 
					item
						name: 'Inspect';
						action: [ self selectedImport inspect] ].