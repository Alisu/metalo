*Metalo
compiler
	"Answer a compiler appropriate for source methods of this class."
 
	^Smalltalk compilerClass new
		environment: self