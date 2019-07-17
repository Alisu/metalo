tests
setUp
	super setUp.
	registry := MLModuleRegistry new.
	module := MLModule newNamed: 'fortest'.
	module declareImport: 'ImportedName'.
	module declareUndeclaredBinding: 'anUndeclaredName'.

	class := module declareClassNamed: 'MyClass'.
	module compileMethod: 'method ^42' inClass: class.
	
	registry registerModule: module.
	
	browser := ModuleViewer on: registry.
