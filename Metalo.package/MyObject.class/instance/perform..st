message performing
perform: aSymbol 

	| environment selector |
	environment := thisContext sender receiver class environment.
	selector:= Selector new: aSymbol inEnv: environment.
	^ self perform: aSymbol withArguments: (Array new: 0)