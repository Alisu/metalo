initialization
moduleTab
	| tab |
	tab := self newTab.
	tab
		label: 'Browser';
		icon: (tab iconNamed: #nautilusIcon);
		presenter:
			(ModuleViewer new).
	^ tab
		