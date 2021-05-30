as yet unclassified
buildWith: aBuilder

	^ (aBuilder build: (aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #contents;
		setText: #contents:;
		editText: #textEdited:;
		help: 'Algernon ...';
		yourself))
			name: #algernonInputField;
			wantsFrameAdornments: false;
			yourself.