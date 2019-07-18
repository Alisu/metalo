accessing
whenSelectedItemChanged: aBlock
	imports
		whenSelectionChangedDo: [ :selection | aBlock cull: selection selectedItem ]