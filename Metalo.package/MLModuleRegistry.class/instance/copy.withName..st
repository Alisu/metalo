copying
copy: aModuleName withName: aName
	moduleEnvironment
		add:
			(Association new
				key: aName;
				value: ((moduleEnvironment at: aModuleName) deepCopy name: aName))