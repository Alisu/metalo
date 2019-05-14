add/remove
removeModuleUsersIn: aMLImport
	aMLImport value isTrait
		ifTrue: [ self removeModuleUsersInTrait: aMLImport binding value ].
	aMLImport binding value isClass
		ifTrue: [ self removeModuleUsersInClass: aMLImport binding value ]