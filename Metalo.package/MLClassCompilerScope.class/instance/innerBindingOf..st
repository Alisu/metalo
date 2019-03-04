bindings
innerBindingOf: aName
	
	^ (class instanceSide innerBindingOf: aName)
		ifNil: [ module resolveBinding: aName ]