actions
getCommand
	| textFieldContents startIndex |
	textFieldContents := self typeObject topmostQuery.
	textFieldContents first = $=
		ifTrue: [startIndex := 2]
		ifFalse: [startIndex := 3].
		
	^ textFieldContents copyFrom: startIndex to: textFieldContents size