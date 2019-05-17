as yet unclassified
collectMethodsReferencing: aBinding
	| methodReferences |
	methodReferences := (self classes
		flatCollect: [ :each | each instanceSide methods , each classSide methods ])
		select: [ :each | 
			each literals
				anySatisfy: [ :aLiteral | 
					aLiteral isVariableBinding
						ifTrue: [ aLiteral key = aBinding key ]
						ifFalse: [ false ] ] ].
	^ methodReferences