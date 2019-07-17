class
acceptImportDefinition: aText
	|import|
	import := OpalCompiler new evaluate: aText.
	self selectedModule addImport: import.
	import module: self selectedModule.
	self refreshImports.