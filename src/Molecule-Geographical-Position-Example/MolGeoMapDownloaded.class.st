Class {
	#name : #MolGeoMapDownloaded,
	#superclass : #MolGeoDownloadedRessource,
	#category : #'Molecule-Geographical-Position-Example'
}

{ #category : #testing }
MolGeoMapDownloaded >> baseUrl [

	^ self subclassResponsibility
]

{ #category : #testing }
MolGeoMapDownloaded >> fileName [

	^ self subclassResponsibility
]
