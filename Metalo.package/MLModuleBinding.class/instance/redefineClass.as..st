redefinition
redefineClass: binding as: aBinding
	"Since this binding belongs to the module, we are free of becoming the value."

	| oldMetaclass subclasses methods bindingValue|
	
	bindingValue:= binding value.
	subclasses := bindingValue subclasses.
	oldMetaclass := bindingValue class.
	methods := bindingValue class environment collectMethodsReferencing: binding.
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
						yourself)].
	methods do: [ :aMethod | aMethod recompile ]