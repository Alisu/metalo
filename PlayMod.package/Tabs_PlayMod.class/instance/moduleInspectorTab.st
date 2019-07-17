initialization
moduleInspectorTab
	|tab module|
	module := MLModuleRegistry global at: #SNAP.
	tab := self newTab.
	tab
		label: 'Module inspector';
		icon: (tab iconNamed: #nautilusIcon);
		retrievingBlock: [ (EyeInspector new
				inspect: module;
				buildWithSpec: #inspectorSpec) asWidget ].
			^tab
		