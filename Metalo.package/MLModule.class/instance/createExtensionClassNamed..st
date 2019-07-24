as yet unclassified
createExtensionClassNamed: aString
	
	| definition newClass |
	self flag: #weird.	"There must be a better way to create a class with the same name"
	definition := CDClassDefinitionParser
		parse: aString , ' subclass: ' , aString , 'Extension'.
	newClass := self
		basicCreateClass: definition
		inEnvironment:
			(MLExtensionClassInstallationEnvironment new
				environment: self;
				yourself).
	newClass setName: aString.
	(self extensions associationAt: aString , 'Extension') key: aString.
	self extensions rehash.
	^ newClass