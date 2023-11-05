Class {
	#name : #MolGeoButtonElementSelected,
	#superclass : #MolGeoButtonElementAbstract,
	#category : #'Molecule-Geographical-Position-Example-Application'
}

{ #category : #'as yet unclassified' }
MolGeoButtonElementSelected class >> example [

	self new
		label: 'Test';
		icon: ((self iconNamed: #haloHelp) scaledToSize: 28 @ 28);
		openInNewSpace
]

{ #category : #'accessing - colors' }
MolGeoButtonElementSelected >> hoverColor [

	^ Color fromHexString: '#78A7D6'
]

{ #category : #'accessing - text' }
MolGeoButtonElementSelected >> makeNewLabelElement: aString [

	| rope |
	rope := aString asRopedText
		        fontSize: self defaultFontSize;
		        foreground: self primaryColor;
		        bold;
		        yourself.
	^ rope asElement
]

{ #category : #'accessing - colors' }
MolGeoButtonElementSelected >> primaryColor [

	^ Color fromHexString: '#0D3151'
]

{ #category : #'accessing - colors' }
MolGeoButtonElementSelected >> secondaryColor [

	^ Color fromHexString: '#8DBEF1'
]
