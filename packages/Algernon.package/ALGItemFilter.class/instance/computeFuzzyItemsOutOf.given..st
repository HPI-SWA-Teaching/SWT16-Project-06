filtering
computeFuzzyItemsOutOf: anItemCollection given: aStringCollection
	| fuzzyMatcher fuzzySortedItems|
	aStringCollection first isEmpty ifTrue: [ ^OrderedCollection new ].
	fuzzyMatcher := ALGFuzzyMatcher new.
	anItemCollection do: [ :item | item fuzzyRank: (fuzzyMatcher computeScore: item given: aStringCollection)].
	fuzzySortedItems := anItemCollection sort: [ :a :b | (b fuzzyRank) < (a fuzzyRank)].
	^ fuzzySortedItems