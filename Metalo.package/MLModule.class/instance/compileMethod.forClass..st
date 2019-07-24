methods
compileMethod: sourceCode forClass: aClass 
	
	^ self compiler
		class: aClass;
		options: #( + #optionEmbeddSources );
		source: sourceCode;
		environment: self;
		compile