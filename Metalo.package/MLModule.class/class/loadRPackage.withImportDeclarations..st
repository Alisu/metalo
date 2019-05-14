as yet unclassified
loadRPackage: anRPackage withImportDeclarations: imports

	| module |
	module := self newNamed: (self packageToModuleName: anRPackage name).

	self flag: #TemporaryHack. "should be an RPackage insteaad of Kernel but for now Kernel is enough"
		imports keysAndValuesDo: [ :anRPackageName :aCollectionOfClassNames |
		aCollectionOfClassNames do: [ :aNameToImport |
			module declareImport: aNameToImport from: #Kernel ] ].
		
	MLRPackageLoader new
		rpackage: anRPackage;
		module: module;
		load.
	^ module