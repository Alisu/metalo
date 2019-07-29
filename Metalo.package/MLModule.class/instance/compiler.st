accessing
compiler
	
	^ self class compiler
		environment: self;
		addPlugin: MyPlugin.