as yet unclassified
bindDirectlyToSystem

	self undeclaredNames do: [ :anUName | 
		anUName first isUppercase ifTrue: [
			self declareImport: anUName from: #Kernel ]].
	self bindTo: (self defaultNameResolver at: #Kernel)