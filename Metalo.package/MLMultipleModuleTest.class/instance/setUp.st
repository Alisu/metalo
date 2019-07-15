running
setUp

	super setUp.

	Object compiler addPlugin: #MyPlugin.

	module1 := MLModule newNamed: 'ModuleWithClasstToExtend'.
	MLModuleRegistry global registerModule: module1.
	module2 := MLModule newNamed: 'ModuleExtending1'.
	MLModuleRegistry global registerModule: module2.
	module3 := MLModule newNamed: 'ModuleExtending2'.
	MLModuleRegistry global registerModule: module3.