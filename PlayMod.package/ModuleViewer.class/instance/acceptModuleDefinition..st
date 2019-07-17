actions
acceptModuleDefinition: aText

	|module|
	module := OpalCompiler new evaluate: aText.
	moduleRegistry registerModule: module.
	self refreshModuleList.