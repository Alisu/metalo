accessing
initializePresenter

	listModel
		whenSelectionChangedDo:
			[ self selectedClass
				ifNotNil: [ 
					methodModel
						items: (self selectedClass  methods sort: [ :a :b | a selector < b selector ]).
					methodModel unselectAll ] ]
				
