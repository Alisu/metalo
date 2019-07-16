as yet unclassified
createExtensionClassNamed: aString
	| definition newClass |
	definition := CDClassDefinitionParser
		parse: aString , 'ToExtend subclass: ' , aString.
	newClass := self
		basicCreateClass: definition
		inEnvironment:
			(MLExtensionClassInstallationEnvironment new
				environment: self;
				yourself).
	^ newClass