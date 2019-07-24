message performing
perform: aSymbol withArguments: anArray

	|env|
	env := thisContext sender receiver class environment.
	^self
		perform: aSymbol
		withArguments: anArray
		inEnv: env