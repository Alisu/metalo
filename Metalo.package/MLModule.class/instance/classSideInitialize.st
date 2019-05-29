class creation
classSideInitialize
	self classesAndTraits
		do: [ :aClass | 
			(aClass classSide includesSelector: #initialize)
				ifTrue: [ aClass initialize ] ].