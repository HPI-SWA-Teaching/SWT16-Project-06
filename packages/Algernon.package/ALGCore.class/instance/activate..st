visibility
activate: hand
	self active ifTrue: [^ self].
	self active: true; 
		reset;
		backupFocus: self activeHand;
		grabFocus: self activeHand;	
		checkWorldBounds;	
		initializeBackground;
		showMorphs;
		openInWorld;
		startStepping.
	self textField model contents: self lastInputString.
	self textField selectAll.
	
