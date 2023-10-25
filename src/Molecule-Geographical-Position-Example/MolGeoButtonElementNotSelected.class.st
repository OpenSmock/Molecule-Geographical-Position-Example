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

{ #category : #'as yet unclassified' }
MolGeoButtonElementNotSelected >> hoverColor [

	^ Color fromHexString: '#bebdbf'
]

{ #category : #'as yet unclassified' }
MolGeoButtonElementNotSelected >> primaryColor [

	^ Color fromHexString: '#6c757d'
]

{ #category : #'as yet unclassified' }
MolGeoButtonElementNotSelected >> secondaryColor [

	^ Color transparent
]
