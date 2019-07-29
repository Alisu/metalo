binding
bindTo: aNameResolver
	self imports do: [ :each | each resolveUsing: aNameResolver ].
	self extensions do: [ :each | each installExtensionMethod ]