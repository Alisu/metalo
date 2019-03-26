instance-creation
name: aName from: aBindingSourceName as: aliasName

	^ self new
		name: aName;
		bindingSourceName: aBindingSourceName;
		aliasName: aliasName;
		yourself