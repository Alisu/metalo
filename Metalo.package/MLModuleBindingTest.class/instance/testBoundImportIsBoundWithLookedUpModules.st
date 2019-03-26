bind-list
testBoundImportIsBoundWithLookedUpModules
	| importee importee2 importer import linkedlist|

	importee := MLModule newNamed: #SomeContainerModule.
	importee declareVariableNamed: #SomeName withValue: 42.
	
	importee2 := MLModule newNamed: #SomeContainerModule.
	importee2 declareVariableNamed: #SomeOtherName withValue: 7.
	
	importer := MLModule newNamed: 'MEmptyModule'.
	import := importer declareImport: #SomeOtherName from: #SomeContainerModule.
	
	linkedlist:= LinkedList new.
	linkedlist add: importee.
	linkedlist add: importee2.
	importer bindToWithList: linkedlist.

	self assert: import binding value equals: 7.
