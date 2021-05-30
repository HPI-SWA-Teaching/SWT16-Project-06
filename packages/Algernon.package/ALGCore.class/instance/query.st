updating
query
	^ self active
		ifTrue: [self textField model contents]
		ifFalse: [self lastInputString]