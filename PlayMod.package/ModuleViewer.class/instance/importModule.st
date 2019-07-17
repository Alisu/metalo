actions
importModule
	
	| selectedPackage collection selectedPackageIndex newModule |
	collection := (RPackageOrganizer default packages collect: #name) sort.
	
	selectedPackageIndex := (UIManager default
		chooseFrom: collection
		lines: #()
		title: 'Choose a package to import').
	
	selectedPackage := (collection at: selectedPackageIndex) asPackage.	
	
	newModule := MLModule loadRPackage: selectedPackage.
	moduleRegistry registerModule: newModule.

	self refreshModuleList.