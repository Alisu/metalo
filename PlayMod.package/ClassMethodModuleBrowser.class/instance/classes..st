accessing
classes: aList

	self classModel items: (aList sort: [ :a :b | a name < b name ])