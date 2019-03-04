accessing
at: aString ifAbsent: aBlockClosure
	^ environment at: aString ifAbsent: aBlockClosure