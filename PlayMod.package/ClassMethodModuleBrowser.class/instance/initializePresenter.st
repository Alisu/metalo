accessing
initializePresenter

	classModel
		whenSelectionChangedDo:
			[ self selectedClass
				ifNotNil: [ 
					instanceMethodModel items: (self selectedClass  methods sort: [ :a :b | a selector < b selector ]).
					instanceMethodModel unselectAll.
					classMethodModel items: (self selectedClass classSide methods sort: [ :a :b | a selector < b selector ]).
					classMethodModel unselectAll.				
					 ] ]
				
