reflective operations
doesNotUnderstand: aMessage
	"self class compile: (self methodAsStringNamedFrom: aMessage) classified: 'ShouldImplement'.
	^self perform: aMessage selector."
	aMessage logCr.
	