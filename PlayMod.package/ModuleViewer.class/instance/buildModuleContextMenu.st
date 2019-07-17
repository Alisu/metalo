initialization
buildModuleContextMenu
	^ self newMenu
		addItem: [ :item | 
			item
				name: 'Remove';
				action: [ moduleRegistry removeKey: self selectedModule name.
					self refreshModuleList ] ];
		addItem: [ :item | 
			item
				name: 'Rename';
				action: [ self selectedModule name: self selectedModule name , '(copy)'.
					self refreshModuleList ] ];
		addItem: [ :item | 
			item
				name: 'Copy';
				action: [ | newModule |
					newModule := self selectedModule
						copyWithName: self selectedModule name , '-copy'.
					moduleRegistry registerModule: newModule.
					self refreshModuleList ] ];
		addItem: [ :item | 
			item
				name: 'Inspect';
				action: [ self selectedModule inspect ] ];
		addItem: [ :item | 
			item
				name: 'Bind imports to registry';
				action: [ self selectedModule bindTo: moduleRegistry ] ]