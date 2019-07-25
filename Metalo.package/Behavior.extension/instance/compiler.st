*Metalo
compiler
	"Answer a compiler appropriate for source methods of this class."

	^self environment compiler
		class: self;
		yourself