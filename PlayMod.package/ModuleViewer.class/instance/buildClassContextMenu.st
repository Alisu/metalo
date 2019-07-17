initialization
buildClassContextMenu
	^ self newMenu
				addItem: [ :item | 
					item
						name: 'Remove';
						action: [ self selectedClass environment removeClassNamed: self selectedClass name.
							self refreshClasses.] ];
				addItem: [ :item | 
					item
						name: 'Inspect';
						action: [ self selectedClass inspect] ].