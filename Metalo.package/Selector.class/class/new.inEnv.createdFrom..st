as yet unclassified
new: aSymbol inEnv: anEnvironment createdFrom: anEnv
	^ self new
		symbol: aSymbol;
		addEnv: anEnvironment;
		creationEnv: anEnv;
		yourself