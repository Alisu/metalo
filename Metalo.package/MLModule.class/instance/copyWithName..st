class creation
copyWithName: aName
	|newModule|

	newModule:=self copy.
	newModule name: aName.
	^newModule