virtualization
bindToWithList: aCollection 

	self imports do: [ :each | each resolveAndApplyUsingList: aCollection  ]