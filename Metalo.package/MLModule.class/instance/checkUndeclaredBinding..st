undeclareds
checkUndeclaredBinding: aBinding
	| references undeclaredBinding |
	aBinding value isTrait
		ifTrue: [ aBinding value users isEmpty
				ifFalse: [ undeclaredBinding := self declareUndeclaredBinding: aBinding name.
					undeclaredBinding value: aBinding value.
					^ self ] ].
	references := self referencesToBinding: aBinding.
	references
		ifEmpty: [ (self undeclaredBindings includesAssociation: aBinding)
				ifTrue: [ self removeUndeclaredBinding: aBinding ].
			^ self ].

	"We create a new undeclared binding and we set the old value we had to it.
	We then replace all references to it in superclasses and method literals"
	undeclaredBinding := self declareUndeclaredBinding: aBinding name.
	undeclaredBinding value: aBinding value.
	references do: [ :each | each replaceBindingWith: undeclaredBinding ]