initialization
graphTab
	| tab |
	tab := self newTab.
	tab
		label: 'Graph';
		icon: (tab iconNamed: #nautilusIcon);
		presenter: DynamicWidgetChange new.
	^ tab
		