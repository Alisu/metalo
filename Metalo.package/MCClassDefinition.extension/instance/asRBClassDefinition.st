*Metalo
asRBClassDefinition

	^CDClassDefinitionParser parse: (String streamContents: [ :aStream|self printDefinitionOn: aStream.]).