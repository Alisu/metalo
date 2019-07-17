accessing
refreshMethods

	instanceMethodModel items:(self selectedClass methods sort: [ :a :b | a selector < b selector ]).
	classMethodModel items:(self selectedClass classSide methods sort: [ :a :b | a selector < b selector ]).