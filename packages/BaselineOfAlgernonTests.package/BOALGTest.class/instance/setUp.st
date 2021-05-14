running
setUp
	
	self timeout: 25.
	self metacelloInstance: 
	(Metacello new
   	 	baseline: 'Algernon';
  		repository: 'github://HPI-SWA-Teaching/Algernon-Launcher:franz-temp-ci/packages';
   	 	onConflict: [:ex | ex allow])