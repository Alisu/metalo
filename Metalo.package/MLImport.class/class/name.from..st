instance-creation
name: aName from: aBindingSourceName

	^ self new
		name: aName;
		bindingSourceName: aBindingSourceName;
		aliasName: aName;
		yourself