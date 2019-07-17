method
acceptMethodText: aText
	
	self selectedClass compile: aText.
	self classList refreshMethods