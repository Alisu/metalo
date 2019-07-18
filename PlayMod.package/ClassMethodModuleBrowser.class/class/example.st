example
example
	<sampleInstance>
	| example |
	example := ClassMethodModuleBrowser new.
	example
		classes: (MLModuleRegistry global at:#Kernel) environment values;
		openWithSpec.
		^example