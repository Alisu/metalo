redefinition
redefineAs: aBinding
	"Since this binding belongs to the module, we are free of becoming the value."
	|oldMetaclass|
 
	self value
		ifNotNil: [ :bindingValue | 
			(bindingValue isClass
				and: [ aBinding value isClass ])
						"and: [ (bindingValue format = aBinding value format) not ] ])
				ifTrue: [ self error: 'incompatible format change in a class!' ]."
				ifTrue: [ oldMetaclass:=bindingValue class ]
				ifFalse: [self error: 'Try to bind something that is not a class'].
			{bindingValue. oldMetaclass } elementsForwardIdentityTo: {aBinding value. aBinding value class} ].
	self becomeForward: aBinding