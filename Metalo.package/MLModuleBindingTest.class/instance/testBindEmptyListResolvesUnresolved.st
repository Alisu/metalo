bind-list
testBindEmptyListResolvesUnresolved
	| importer import linkedlist|

	importer := MLModule newNamed: 'MEmptyModule'.
	import := importer declareImport: #SomeName from: #SomeContainerModule.

	linkedlist:= LinkedList new.
	importer bindToWithList: linkedlist.

	self assert: import binding isUnbound.
