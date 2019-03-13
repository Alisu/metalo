examples
testTranscriptModule

	| aTranscript |
	aTranscript := (module definedClassNamed: #ThreadSafeTranscript) new.
	aTranscript << 'test' << 'lala'.
	aTranscript cr.
	aTranscript << 'encore'.
	aTranscript print: aTranscript.

	aTranscript flush.
	aTranscript stepGlobal.
	aTranscript contents.