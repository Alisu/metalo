asserting
shouldTransformNode: each

	^ each isMessage and: [
		((OCASTTranslator classPool at: #OptimizedMessages) includesKey: each selector) not 
	]