running
tearDown 

	super setUp.
 	MLModuleRegistry global removeKey: 'ModuleWithClasstToExtend'.
	MLModuleRegistry global removeKey: 'ModuleExtending1'.
	MLModuleRegistry global removeKey: 'ModuleExtending2'.