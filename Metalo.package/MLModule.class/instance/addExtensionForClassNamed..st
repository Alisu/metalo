as yet unclassified
addExtensionForClassNamed: aClassName
	
	self extensions
		detect: [ :exten | exten className = aClassName ]
		ifFound: [ :ext | 
			self
				notify: 'Extension for ' , aClassName , ' already exist in ' , self.
			^ ext ]
		ifNone: [ | ext |
			ext := MLExtension newInModule: self forClassNamed: aClassName.
			self extensions at: ext extentedClassName put: ext.
			(self hasImportAliasNamed: aClassName)
				ifNil: [ self declareImport: aClassName ].
			^ ext ]