accessing
traits 
	
	^ classBindings values
		select: [ :definition | definition isTrait]