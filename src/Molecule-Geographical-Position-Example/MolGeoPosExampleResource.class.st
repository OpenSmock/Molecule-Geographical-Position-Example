Class {
	#name : #MolGeoPosExampleResource,
	#superclass : #Object,
	#instVars : [
		'fileName'
	],
	#category : #'Molecule-Geographical-Position-Example-Resources'
}

{ #category : #'as yet unclassified' }
MolGeoPosExampleResource class >> galileo [

	^ self new
		  fileName: 'favorite.png';
		  yourself
]

{ #category : #'as yet unclassified' }
MolGeoPosExampleResource class >> gps [

	^ self new
		  fileName: 'link.png';
		  yourself
]

{ #category : #'as yet unclassified' }
MolGeoPosExampleResource class >> gpsInacurrate [

	^ self new
		  fileName: 'chains.png';
		  yourself
]

{ #category : #'as yet unclassified' }
MolGeoPosExampleResource class >> gsm [

	^ self new
		  fileName: 'antenna.png';
		  yourself
]

{ #category : #'as yet unclassified' }
MolGeoPosExampleResource class >> map [

	^ self new
		  fileName: 'map.png';
		  yourself
]

{ #category : #'as yet unclassified' }
MolGeoPosExampleResource class >> wiFi [

	^ self new
		  fileName: 'wifi.png';
		  yourself
]

{ #category : #converting }
MolGeoPosExampleResource >> asForm [

	^ (Form fromFileNamed: self fileReference)
		  mapColor: Color white
		  to: Color transparent
]

{ #category : #converting }
MolGeoPosExampleResource >> asForm: anExtent [

	^ self asForm scaledToSize: anExtent
]

{ #category : #default }
MolGeoPosExampleResource >> baseIcebergDirectory [

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
MolGeoPosExampleResource >> baseRessourceDirectory [

	^ self baseIcebergDirectory / 'ressources'
]

{ #category : #accessing }
MolGeoPosExampleResource >> fileName [

	^ fileName
]

{ #category : #accessing }
MolGeoPosExampleResource >> fileName: aString [

	fileName := aString
]

{ #category : #accessing }
MolGeoPosExampleResource >> fileReference [

	^ self baseRessourceDirectory / self fileName
]

{ #category : #initialization }
MolGeoPosExampleResource >> initialize [

	super initialize.

	fileName := 'doesnotexist.png'
]

{ #category : #testing }
MolGeoPosExampleResource >> isDownloaded [

	^ self fileReference exists
]
