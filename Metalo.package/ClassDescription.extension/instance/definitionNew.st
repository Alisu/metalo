*Metalo
definitionNew
	"Answer a String that defines the receiver."

	| aStream |
	aStream := (String new: 800) writeStream.
	superclass 
		ifNil: [aStream nextPutAll: 'nil']
		ifNotNil: [aStream nextPutAll: superclass name].
	aStream nextPutAll: self kindOfSubclass;
			store: self name.
	(self hasTraitComposition) ifTrue: [
		aStream cr; tab; nextPutAll: 'uses: ';
			nextPutAll: self traitCompositionString].
	aStream cr; tab; nextPutAll: 'instanceVariableNames: ';
			store: self instanceVariablesString.
	aStream cr; tab; nextPutAll: 'classVariableNames: ';
			store: self classVariablesString.
	aStream cr; tab; nextPutAll: 'poolDictionaries: ';
			store: self sharedPoolsString.
	aStream cr; tab; nextPutAll: 'package: ';
			store: self category asString.

	^ aStream contents