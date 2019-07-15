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
			self extensions add: ext.
			(self hasImportAliasNamed: aClassName)
				ifNil: [ self declareImport: aClassName ].
			^ ext ]