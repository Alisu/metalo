instance-creation
name: aName from: aBindingSourceName receiver: aModule.

	^ self new
		name: aName;
		bindingSourceName: aBindingSourceName;
		aliasName: aName;
		module: aModule;
		yourself