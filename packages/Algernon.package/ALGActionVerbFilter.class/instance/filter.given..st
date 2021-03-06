filtering
filter: anItemCollection given: aStringCollection 
	| matchedItems actionVerb |
	actionVerb := aStringCollection first.
	matchedItems := anItemCollection select: [:each | each matchesAction: actionVerb ].
	matchedItems := self computeFuzzyItemsOutOf: (matchedItems) given: aStringCollection allButFirst..
	^ matchedItems
		do: [:each | each updateDefaultActionTo: actionVerb ]