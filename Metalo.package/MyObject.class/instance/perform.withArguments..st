message performing
perform: aSymbol withArguments: anArray
	
	^ self
		perform: aSymbol
		withArguments: anArray
		inEnv: thisContext sender method methodClass environment.