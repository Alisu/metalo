importing
resolveAndApplyUsingList: aList
	"Returns a (potentially undeclared) binding as described by the import in the context of the name resolver.
	If the imported module or class names cannot be resolved, returns an entry of the undeclared dictionary of the module"

	| newBinding |
	newBinding := self resolveUsingList: aList.
	self binding == newBinding
		ifFalse: [ self binding redefineAs: newBinding ].
	^ self binding