api
transform
	ast
		nodesDo: [ :each | 
			(self shouldTransformNode: each)
				ifTrue: [ | newMessageSend |
					each receiver isSuper
						ifFalse: [ newMessageSend := RBMessageNode new.
							newMessageSend selector: #perform:withArguments:.
							newMessageSend receiver: each receiver.
							newMessageSend
								arguments:
									{(RBLiteralValueNode value: each selector).
									(RBArrayNode statements: each arguments)}.
							each replaceWith: newMessageSend ]
						ifTrue: [ newMessageSend := RBMessageNode new.
							newMessageSend selector: #performSuper:withArguments:.
							newMessageSend receiver: each receiver.
							newMessageSend
								arguments:
									{(RBLiteralValueNode value: each selector).
									(RBArrayNode statements: each arguments)}.
							each replaceWith: newMessageSend ] ] ].
	^ ast