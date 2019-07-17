initialization
buildUndeclaredContextMenu
	^ self newMenu
				addItem: [ :item | 
					item
						name: 'Declare as import';
						action: [ self error: 'Feature not implemented'.
							self refreshClasses.] ].
