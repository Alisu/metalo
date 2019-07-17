running
tearDown 

	super setUp.
 	MLModuleRegistry global removeKey: 'ModuleWithClassToExtend'.
	MLModuleRegistry global removeKey: 'ModuleExtending1'.
	MLModuleRegistry global removeKey: 'ModuleExtending2'.