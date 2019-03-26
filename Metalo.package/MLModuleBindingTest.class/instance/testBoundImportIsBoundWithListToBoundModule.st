tests
testBoundImportIsBoundWithListToBoundModule
| importee importer import linkedlist|

	importee := MLModule newNamed: #SomeContainerModule.
	importee declareVariableNamed: #SomeName.

	importer := MLModule newNamed: 'MEmptyModule'.
	import := importer declareImport: #SomeName from: #SomeContainerModule.
	linkedlist:= LinkedList new.
	linkedlist add: importee.
	importer bindToWithList: linkedlist.

	self assert: import binding == (importee bindingOf: #SomeName).
