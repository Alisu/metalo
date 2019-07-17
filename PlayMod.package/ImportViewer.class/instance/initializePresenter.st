initialization
initializePresenter
imports whenSelectedItemChanged: [ :import|
	fromModules  resetSelection.
	importClasses  resetSelection.
	import
	ifNil: [ fromModules items: #().
		 importClasses  items: #() ]
	ifNotNil: [fromModules  items: (self importsIn: import).
		importClasses  items: (self classesIn: import) ] ].

fromModules  whenSelectedItemChanged: [ :module |
	module ifNotNil: [ fromModules  resetSelection ] ].
importClasses whenSelectedItemChanged: [ :class |
	class ifNotNil: [ importClasses resetSelection ] ]