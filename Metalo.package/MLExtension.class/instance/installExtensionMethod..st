as yet unclassified
installExtensionMethod: aSelector
	
	| import |
	import := self module importAliasNamed: self extentedClassName.
	import isBound
		ifFalse: [ self
				error: 'Cannot extend a non-present class ' , self extentedClassName ]
		ifTrue: [ (import binding value)
				addSelectorSilently: aSelector
				withMethod: (self extensionMethods at: aSelector) ]