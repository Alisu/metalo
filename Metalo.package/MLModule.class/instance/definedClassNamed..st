accessing
definedClassNamed: aString 
	
	^ classBindings at: aString ifAbsent: [ nil ]