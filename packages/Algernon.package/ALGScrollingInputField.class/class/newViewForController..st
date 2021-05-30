as yet unclassified
newViewForController: aController

	| model |
	model := self new
		controller: aController;
		yourself.
	 ^ (ToolBuilder build: model)
			on: #keyStroke send: #keyStroke: to: aController;
			yourself.