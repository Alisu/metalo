accessing
classNamed: aName 
	"Class builder API.
	Check if there is a defined classes in the module with the given name.
	Return the existing class if any.
	Return nil if none."
	
	^ module classNamed: aName