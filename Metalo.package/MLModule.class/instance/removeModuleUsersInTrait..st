add/remove
removeModuleUsersInTrait: aTrait 
	|users|
	users := aTrait users collect:[:aUser| classBindings includes: aUser].
	users do: [:aUser| aTrait removeUser: aUser ].