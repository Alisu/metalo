add-remove
removeModuleUsersInClass: aClass 
	|subclasses|
	subclasses := aClass subclasses collect:[:aSubclass| classBindings includes: aSubclass].
	subclasses do: [:aSubclass| aClass removeSubclass: aSubclass ].