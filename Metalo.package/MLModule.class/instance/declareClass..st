class creation
declareClass: aClassDefinition
	
	| newClass |
	self assertVariableNotDeclared: aClassDefinition className.
	self assertNameNotImported: aClassDefinition className.

	newClass := self basicCreateClass: aClassDefinition inEnvironment: (MLDefinedClassInstallationEnvironment new
		environment: self;
		yourself).
	"if the newly created class define an undefined, all subclasses of the undeclared should be pointing to the new define class"
	(self undeclaredBindings at: aClassDefinition className ifAbsent:[nil]) ifNotNil: [:oldClass| 
		oldClass subclasses do: [:subclass|subclass basicSuperclass: newClass. newClass addSubclass: subclass ]  ].
	self undeclaredBindings removeKey: aClassDefinition className ifAbsent: [].
	^ newClass