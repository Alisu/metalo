redefinition
redefineTrait: bindingValue as: aBinding
	"Since this binding belongs to the module, we are free of becoming the value."

	| users |
	users := bindingValue users.
	{bindingValue}
		elementsForwardIdentityTo: {aBinding value}
		copyHash: false.
	self becomeForward: aBinding.
	users
		do: [ :aUser | 
			MLClassInstaller new
				remake: aUser instanceSide
				inEnv:
					(MLDefinedClassInstallationEnvironment new
						environment: aUser environment;
						yourself) ]