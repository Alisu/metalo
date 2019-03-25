imports
defaultNameListResolver
	|linkedlist|
	linkedlist:= LinkedList new.
	linkedlist add: MLModuleRegistry global.
	^linkedlist