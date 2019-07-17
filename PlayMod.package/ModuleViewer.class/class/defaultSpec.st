specs
defaultSpec
	^ SpecColumnLayout composed
		newRow: [ :row | row add: #menu ] height: self toolbarHeight;
		newRow: [ :row | 
			row
				add: #modules width: 200;
				add: #moduleContentsNotebook ];
		newRow: [ :row | row add: #definitionsNotebook ];
		yourself