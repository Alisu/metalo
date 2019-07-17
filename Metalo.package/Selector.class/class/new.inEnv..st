as yet unclassified
new: aSymbol inEnv: anEnvironment 
	^ self new
		symbol: aSymbol;
		addEnv: anEnvironment;
		yourself