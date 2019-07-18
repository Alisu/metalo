specs
defaultSpec
<spec>
	^ SpecLayout composed
		newRow: [:row | row
			add: #classModel width: 250;
			add: #instanceMethodModel width: 250;
			add: #classMethodModel. ];
		yourself