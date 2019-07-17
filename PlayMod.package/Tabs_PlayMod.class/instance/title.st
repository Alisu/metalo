initialization
title

	^ self manager selectedTab
		ifNil: [ 'TMAP' ]
		ifNotNil: [:tab | tab label ]
		