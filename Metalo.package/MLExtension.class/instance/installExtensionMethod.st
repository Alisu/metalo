as yet unclassified
installExtensionMethod
	| import |
	import := self module importAliasNamed: self extendedClassName.
	import isBound
		ifFalse: [ self
				error: 'Cannot extend a non-present class ' , self extendedClassName ]
		ifTrue: [ 
			extensionClassSideMethods associationsDo: [:each |
			(import binding value) class
				addSelectorSilently: each key
				withMethod: each value ].
			extensionMethods associationsDo: [:each |(import binding value) 
				addSelectorSilently: each key
				withMethod: each value]].