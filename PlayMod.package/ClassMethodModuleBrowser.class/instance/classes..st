accessing
classes: aList

	self listModel items: (aList sort: [ :a :b | a name < b name ])