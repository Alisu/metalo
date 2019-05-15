loading
load
	"this methods need testing"

	| sortedClasses |
	sortedClasses := rpackage definedClasses
		sorted:
			[ :a :b | (self numberOfDependenciesOf: a) < (self numberOfDependenciesOf: b) ].
	module declareClassesOrTraits: sortedClasses.
	rpackage definedClasses
		do: [ :c | 
			| definedMethods definedClassMethods |
			definedMethods := rpackage definedMethodsForClass: c.
			definedMethods
				do: [ :method | 
					(module
						classNamed: c name
						ifAbsent:
							[ self error: 'No class ' , c name , ' found to install' , method name ])
						compile: method sourceCode ].
			definedClassMethods := rpackage definedMethodsForClass: c classSide.
			definedClassMethods
				do: [ :method | 
					(module
						classNamed: c name
						ifAbsent:
							[ self error: 'No class ' , c name , ' found to install' , method name ])
						classSide compile: method sourceCode ] ]