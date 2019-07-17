initialization
buildMethodContextMenu
	^ self newMenu
				addItem: [ :item | 
					item
						name: 'Remove';
						action: [ self flag: #bug. "Call a method with bug flag"
							self  selectedMethod methodClass environment removeSelector: self selectedMethod selector fromClassNamed: self selectedMethod methodClass name.
							self refreshMethods.] ];
				addItem: [ :item | 
					item
						name: 'Inspect';
						action: [ self selectedMethod inspect] ].