virtualization
bindDirectlyToSystem
	self undeclaredNames
		do: [ :anUName | 
			anUName first isUppercase
				ifTrue: [ ((MLModuleRegistry global at: #Kernel) includesKey: anUName)
						ifTrue: [ self declareImport: anUName from: #Kernel ]
						ifFalse: [ "TODO" ] ] ].
	self bindTo: (self defaultNameResolver at: #Kernel)