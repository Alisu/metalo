methods
compileMethod: sourceCode inClass: aClass 
	
	| method undeclaredBinding |
	
	[ 
	method := self compileMethod: sourceCode forClass: aClass.
	self installMethod: method inClass: aClass.
	]
		on: OCUndeclaredVariableWarning
		do: [:warning | | undeclaredName |
			undeclaredName := (warning instVarNamed: #node) name asSymbol.
			undeclaredBinding := UndeclaredVariable named: undeclaredName.
			self undeclaredBindings at: undeclaredName ifAbsent: [
				self undeclaredBindings add: undeclaredBinding ].
			warning resume: (OCLiteralVariable new
				scope: self;
				assoc: undeclaredBinding;
				yourself) ].
	^ method