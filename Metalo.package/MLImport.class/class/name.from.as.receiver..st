instance-creation
name: aName from: aBindingSourceName as: aliasName receiver: aModule.

	^ self new
		name: aName;
		bindingSourceName: aBindingSourceName;
		aliasName: aliasName;
		module: aModule;
		yourself