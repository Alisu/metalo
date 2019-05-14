accessing
classesAndTraits 
	
	^ classBindings values
		select: [ :definition | definition isClass or:[definition isTrait]]