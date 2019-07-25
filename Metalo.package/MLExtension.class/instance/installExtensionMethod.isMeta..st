as yet unclassified
installExtensionMethod: aSelector isMeta: isMeta 
	| import |
	import := self module importAliasNamed: self extentedClassName.
	import isBound
		ifFalse: [ self
				error: 'Cannot extend a non-present class ' , self extentedClassName ]
		ifTrue: [ 
			isMeta ifTrue:[
			(import binding value) class
				addSelectorSilently: aSelector
				withMethod: (self extensionMethods at: aSelector) ]
			ifFalse:[(import binding value) 
				addSelectorSilently: aSelector
				withMethod: (self extensionMethods at: aSelector)]].