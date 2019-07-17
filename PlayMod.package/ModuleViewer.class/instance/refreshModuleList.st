initialization
refreshModuleList
	
	self modules items: (moduleRegistry moduleEnvironment values sorted: [:a :b | a name < b name ])