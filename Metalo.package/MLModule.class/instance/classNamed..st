accessing
classNamed: aString 
	
	^ classBindings at: aString ifAbsent: [ nil ]