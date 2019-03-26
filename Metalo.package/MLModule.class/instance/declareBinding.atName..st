binding
declareBinding: aBinding atName: aName

	(self hasUndeclaredBinding: aName)
		ifTrue: [ | undeclaredBinding |
			undeclaredBinding := self bindingOf: aName.
			self removeUndeclaredBinding: undeclaredBinding.
			aBinding value: undeclaredBinding value ].