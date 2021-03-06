redefinition
redefineAs: aBinding
	"Since this binding belongs to the module, we are free of becoming the value."

	self value
		ifNotNil: [ :bindingValue | 
			bindingValue isClass
				ifTrue: [ ^ self redefineClass: self as: aBinding ].
			bindingValue isTrait
				ifTrue: [ ^ self redefineTrait: bindingValue as: aBinding ].

			"We suppose we have a module variable binding"
			{bindingValue}
				elementsForwardIdentityTo: {aBinding value}
				copyHash: false ].
		
	self becomeForward: aBinding.

	