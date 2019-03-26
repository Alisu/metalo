virtualization
createVirtualizationLayerBindToKernelWith: aCollection
	"create a new module from our undeclared class, import them which resolve undeclared"

	| module |
	module := self class newNamed: self name , 'Undeclared'.
	MLModuleRegistry global at: module name put: module.
	module declareImport: #LogClass from: #Kernel.
	self undeclaredNames
		do: [ :anUName | 
			(aCollection includes: anUName)
				ifTrue: [ self declareImport: anUName from: #Kernel.
					self bindTo: self defaultNameResolver ]
				ifFalse: [ anUName first isUppercase
						ifTrue: [ VirtualizationStrategy new useBindingToKernel: module for: anUName.
							self declareImport: anUName from: module name.
							self bindTo: self defaultNameResolver ] ] ].
	module bindTo: module defaultNameResolver