as yet unclassified
bindToWithList: aCollection 

	self imports do: [ :each | each resolveAndApplyUsingList: aCollection  ]