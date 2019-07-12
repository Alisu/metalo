methods
compileMethod: sourceCode inTrait: aTrait 
	
	self compileMethod: sourceCode inClass: aTrait.
	"aTrait users do:[ :aUser | aUser rebuildMethodDictionary ]."