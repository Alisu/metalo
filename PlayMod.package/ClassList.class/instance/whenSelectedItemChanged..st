accessing
whenSelectedItemChanged: aBlock
	classes
		whenSelectionChangedDo: [ :selection | aBlock cull: selection selectedItem ]