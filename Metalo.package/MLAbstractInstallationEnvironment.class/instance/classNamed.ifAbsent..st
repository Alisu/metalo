accessing
classNamed: aString ifAbsent: aBlockClosure 
	
	^ module at: aString ifAbsent: aBlockClosure