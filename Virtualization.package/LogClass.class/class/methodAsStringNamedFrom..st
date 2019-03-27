reflective operations
methodAsStringNamedFrom: aMessage

	aMessage selector isUnary ifFalse: [ self halt ].
	^aMessage selector, String cr,' self shouldBeImplemented'