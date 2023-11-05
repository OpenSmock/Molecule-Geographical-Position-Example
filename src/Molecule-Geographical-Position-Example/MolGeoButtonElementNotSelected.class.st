Class {
	#name : #MolGeoButtonElementNotSelected,
	#superclass : #MolGeoButtonElementAbstract,
	#category : #'Molecule-Geographical-Position-Example-view'
}

{ #category : #'as yet unclassified' }
MolGeoButtonElementNotSelected class >> example [

	self new
		label: 'Test';
		icon: ((self iconNamed: #haloHelp) scaledToSize: 28 @ 28);
		openInNewSpace
]

{ #category : #'accessing - colors' }
MolGeoButtonElementNotSelected >> hoverColor [

	^ Color fromHexString: '#bebdbf'
]

{ #category : #'accessing - colors' }
MolGeoButtonElementNotSelected >> primaryColor [

	^ Color fromHexString: '#6c757d'
]

{ #category : #'accessing - colors' }
MolGeoButtonElementNotSelected >> secondaryColor [

	^ Color transparent
]
