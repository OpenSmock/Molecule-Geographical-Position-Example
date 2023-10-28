Class {
	#name : #MolGeoSwitchElement,
	#superclass : #BlElement,
	#instVars : [
		'selectedElement',
		'notSelectedElement',
		'state',
		'whenActivatedDo',
		'whenDesactivatedDo'
	],
	#category : #'Molecule-Geographical-Position-Example-Application'
}

{ #category : #examples }
MolGeoSwitchElement class >> example [

	self examplePharoBig openInNewSpace
]

{ #category : #'as yet unclassified' }
MolGeoSwitchElement class >> exampleHelp [

	^ self new
		  label: 'Help';
		  icon: ((self iconNamed: #haloHelp) scaledToSize: 28 @ 28);
		  whenActivatedDo: [
			  'MolGeoSwitchElement exampleHelp - activate' traceCr ];
		  whenDesactivatedDo: [
			  'MolGeoSwitchElement exampleHelp - desactivate' traceCr ];
		  yourself
]

{ #category : #'as yet unclassified' }
MolGeoSwitchElement class >> examplePharoBig [

	^ self new
		  label: 'PharoBig';
		  icon: ((self iconNamed: #pharoBig) scaledToSize: 28 @ 28);
		  whenActivatedDo: [
			  'MolGeoSwitchElement examplePharoBig - activate' traceCr ];
		  whenDesactivatedDo: [
			  'MolGeoSwitchElement examplePharoBig - desactivate' traceCr ];
		  yourself
]

{ #category : #accessing }
MolGeoSwitchElement >> icon: aForm [

	self notSelectedElement icon: (aForm copy: aForm boundingBox).
	self selectedElement icon: aForm.

	self selectedElement forceLocalLayout.
	self size: self selectedElement size
]

{ #category : #initialization }
MolGeoSwitchElement >> initialize [

	super initialize.
	state := false.
	whenDesactivatedDo := [  ].
	whenActivatedDo := [  ].
	notSelectedElement := MolGeoButtonElementNotSelected new
		                      id: #notSelected;
		                      when: BlPrimaryClickEvent
		                      do: [ :evt | self state: true ];
		                      yourself.
	selectedElement := MolGeoButtonElementSelected new
		                   id: #selected;
		                   when: BlPrimaryClickEvent
		                   do: [ :evt | self state: false ];
		                   visibility: BlVisibility gone;
		                   yourself.
	self addChildren: {
			notSelectedElement.
			selectedElement }.
	self clipChildren: false.
]

{ #category : #accessing }
MolGeoSwitchElement >> label: aString [

	self notSelectedElement label: aString.
	self selectedElement label: aString
]

{ #category : #accessing }
MolGeoSwitchElement >> notSelectedElement [

	^ notSelectedElement
]

{ #category : #accessing }
MolGeoSwitchElement >> selectedElement [

	^ selectedElement
]

{ #category : #accessing }
MolGeoSwitchElement >> state [

	^ state
]

{ #category : #accessing }
MolGeoSwitchElement >> state: anObject [

	state = anObject ifTrue: [ ^ self ].
	state := anObject.
	anObject
		ifTrue: [
			self notSelectedElement visibility: BlVisibility gone.
			self selectedElement visibility: BlVisibility visible.
			self whenActivatedDo value ]
		ifFalse: [
			self notSelectedElement visibility: BlVisibility visible.
			self selectedElement visibility: BlVisibility gone.
			self whenDesactivatedDo value ]
]

{ #category : #accessing }
MolGeoSwitchElement >> whenActivatedDo [

	^ whenActivatedDo
]

{ #category : #accessing }
MolGeoSwitchElement >> whenActivatedDo: aBlock [

	whenActivatedDo := aBlock
]

{ #category : #accessing }
MolGeoSwitchElement >> whenDesactivatedDo [

	^ whenDesactivatedDo
]

{ #category : #accessing }
MolGeoSwitchElement >> whenDesactivatedDo: aBlock [

	whenDesactivatedDo := aBlock
]
