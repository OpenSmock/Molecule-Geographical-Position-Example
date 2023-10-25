Class {
	#name : #MolGeoConnectedSwitchesElement,
	#superclass : #BlElement,
	#instVars : [
		'switches'
	],
	#category : #'Molecule-Geographical-Position-Example-view'
}

{ #category : #'as yet unclassified' }
MolGeoConnectedSwitchesElement class >> example [

	| help pharoBig |
	help := MolGeoSwitchElement exampleHelp.
	pharoBig := MolGeoSwitchElement examplePharoBig.
	self new
		switches: {
				help.
				pharoBig };
		openInNewSpace
]

{ #category : #accessing }
MolGeoConnectedSwitchesElement >> deactivateAllSwitchesExcept: aMolGeoSwitchElement [

	self switches do: [ :each | aMolGeoSwitchElement = each ifFalse: [ each state: false ] ]
]

{ #category : #initialization }
MolGeoConnectedSwitchesElement >> initialize [

	super initialize.
	switches := {  }.
	self layout: (BlLinearLayout horizontal cellSpacing: 8).
	self clipChildren: false.
	self constraintsDo: [ :c |
		c vertical fitContent.
		c horizontal fitContent ]
]

{ #category : #accessing }
MolGeoConnectedSwitchesElement >> switches [

	^ switches
]

{ #category : #accessing }
MolGeoConnectedSwitchesElement >> switches: anObject [

	switches := anObject.
	self addChildren: anObject.
	switches ifEmpty: [ ^ self ].
	switches do: [ :each |
		each when: BlPrimaryClickEvent do: [ :evt |
			self deactivateAllSwitchesExcept: each.
			each state: true. ] ] .
	switches first state: true
]
