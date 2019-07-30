message performing
perform: aSymbol
	
	self perform: aSymbol withArguments: (Array new:0) inEnv: thisContext sender method methodClass environment.