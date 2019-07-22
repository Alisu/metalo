as yet unclassified
findExtensionFor: aClass ifPresent: aBlockClosure ifAbsent: aBlockClosure3 
	
	aClass isMeta ifTrue:[(self extensions at: aClass instanceSide name) class ifNotNil:[:val | ^aBlockClosure cull: val]]
	ifFalse:[(self extensions at: aClass instanceSide name ifAbsent:[nil]) ifNotNil:[:val | ^aBlockClosure cull: val]].
	^aBlockClosure3 value
