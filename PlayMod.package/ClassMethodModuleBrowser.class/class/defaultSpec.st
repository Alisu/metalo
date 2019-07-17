specs
defaultSpec
<spec>
	^ SpecLayout composed
		newRow: [:row | row
			add: #listModel width: 300;
			add: #methodModel ];
		yourself