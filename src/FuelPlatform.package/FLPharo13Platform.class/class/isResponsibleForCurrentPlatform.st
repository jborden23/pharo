testing
isResponsibleForCurrentPlatform
	^ super isResponsibleForCurrentPlatform and: [
		SystemVersion current version beginsWith: 'Pharo1.3' ]