specs
defaultSpec
<spec>
	^ SpecLayout composed
		newRow: [:row | row
			add: #classModel width: 300;
			add: #instanceMethodModel;
			add: #classMethodModel. ];
		yourself