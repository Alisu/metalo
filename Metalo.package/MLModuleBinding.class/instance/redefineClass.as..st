redefinition
redefineClass: bindingValue as: aBinding
	"Since this binding belongs to the module, we are free of becoming the value."

	| oldMetaclass subclasses |
	subclasses := bindingValue subclasses.
	oldMetaclass := bindingValue class.
	bindingValue superclass removeSubclass: bindingValue.
	{bindingValue.
	oldMetaclass}
		elementsForwardIdentityTo:
			{aBinding value.
			aBinding value class}
		copyHash: false.
	self becomeForward: aBinding.
	subclasses
		do: [ :aUser | 
			MLClassInstaller new
				remake: aUser instanceSide inEnv:(MLDefinedClassInstallationEnvironment new
						environment: aUser environment;
						yourself)]