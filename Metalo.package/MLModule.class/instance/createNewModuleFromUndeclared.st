as yet unclassified
createNewModuleFromUndeclared
	"create a new module from our undeclared class, import them which resolve undeclared"

	| module |
	module := self class newNamed: self name , 'Undeclared'.
	MLModuleRegistry global at: module name put: module.
	self undeclaredNames
		do: [ :anUName | 
			anUName = #TestCase
				ifTrue: [ 
					self declareImport: anUName from: #Kernel.
					self bindTo: self defaultNameResolver]
				ifFalse: [ anUName first isUppercase
						ifTrue: [ module
								declareClass: (CDClassDefinitionParser parse: 'LogClass subclass: ' , anUName).
							self declareImport: anUName from: module name.
							self bindTo: self defaultNameResolver ] ] ]