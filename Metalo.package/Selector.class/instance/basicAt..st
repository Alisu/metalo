accessing
basicAt: index
	"To avoid not indexable errors"
	^ self symbol basicAt: index