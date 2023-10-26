Class {
	#name : #MolGeoRessource,
	#superclass : #Object,
	#instVars : [
		'fileName'
	],
	#category : #'Molecule-Geographical-Position-Example-ressources'
}

{ #category : #'as yet unclassified' }
MolGeoRessource class >> galileo [

	^ self new
		  fileName: 'favorite.png';
		  yourself
]

{ #category : #'as yet unclassified' }
MolGeoRessource class >> gps [

	^ self new
		  fileName: 'link.png';
		  yourself
]

{ #category : #'as yet unclassified' }
MolGeoRessource class >> gpsInacurrate [

	^ self new
		  fileName: 'chains.png';
		  yourself
]

{ #category : #'as yet unclassified' }
MolGeoRessource class >> gsm [

	^ self new
		  fileName: 'antenna.png';
		  yourself
]

{ #category : #'as yet unclassified' }
MolGeoRessource class >> map [

	^ self new
		  fileName: 'map.png';
		  yourself
]

{ #category : #'as yet unclassified' }
MolGeoRessource class >> wiFi [

	^ self new
		  fileName: 'wifi.png';
		  yourself
]

{ #category : #converting }
MolGeoRessource >> asForm [

	^ (Form fromFileNamed: self fileReference)
		  mapColor: Color white
		  to: Color transparent
]

{ #category : #converting }
MolGeoRessource >> asForm: anExtent [

	^ self asForm scaledToSize: anExtent
]

{ #category : #default }
MolGeoRessource >> baseIcebergDirectory [

	| expectedName myRepository |
	expectedName := 'molecule-geographical-position-example'.

myRepository := IceRepository registry
		                detect: [ :each |
		                each name asLowercase = expectedName ]
		                ifNone: [
			                self error:
				                ('Did not find any repository named ''{1}'' in Iceberg (case insensitive). Alexandrie tests require it to access resources.'
					                 format: { expectedName }) ].

^ myRepository location
]

{ #category : #default }
MolGeoRessource >> baseRessourceDirectory [

	^ self baseIcebergDirectory / 'ressources'
]

{ #category : #accessing }
MolGeoRessource >> fileName [

	^ fileName
]

{ #category : #accessing }
MolGeoRessource >> fileName: aString [

	fileName := aString
]

{ #category : #accessing }
MolGeoRessource >> fileReference [

	^ self baseRessourceDirectory / self fileName
]

{ #category : #initialization }
MolGeoRessource >> initialize [

	super initialize.

	fileName := 'doesnotexist.png'
]

{ #category : #testing }
MolGeoRessource >> isDownloaded [

	^ self fileReference exists
]
