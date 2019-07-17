initialization
initializePresenter
	listModel
		whenSelectionChangedDo: [ :selection | 
			selection selectedItem
				ifNil: [ textModel text: ''.
					textModel behavior: nil.
					toolbarModel method: nil ]
				ifNotNil: [ :m | 
					textModel text: m sourceCode.
					textModel behavior: m methodClass.
					toolbarModel method: m ]].

	self
		wrapWith: [ :item | item methodClass name , '>>#' , item selector ]