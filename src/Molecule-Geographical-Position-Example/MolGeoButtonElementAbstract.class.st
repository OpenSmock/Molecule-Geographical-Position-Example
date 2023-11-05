Class {
	#name : #MolGeoButtonElementAbstract,
	#superclass : #BlElement,
	#category : #'Molecule-Geographical-Position-Example-view'
}

{ #category : #'as yet unclassified' }
MolGeoButtonElementAbstract class >> example [

	"See subclasses"
]

{ #category : #testing }
MolGeoButtonElementAbstract class >> isAbstract [

	^ self == MolGeoButtonElementAbstract
]

{ #category : #'pyramid-serialized-bloc' }
MolGeoButtonElementAbstract class >> pystonSpec [
	"This class has been generated using Pyramid.

	By: YannLEGOFF
	2023-10-25 21:58:07"

	<pySTON>
	^ '[
	BlElement {
		#children : BlChildrenArray [
			BlElement {
				#children : BlChildrenArray [ ],
				#constraints : BlLayoutCommonConstraints {
					#vertical : BlLayoutCommonConstraintsAxis {
						#resizer : BlLayoutExactResizer {
							#size : 32.0
						}
					},
					#horizontal : BlLayoutCommonConstraintsAxis {
						#resizer : BlLayoutExactResizer {
							#size : 32.0
						}
					},
					#constraints : {
						Class [ #BlFrameLayout ] : BlFrameLayoutConstraints {
							#vertical : BlFrameLayoutConstraintsVertical {
								#alignment : BlVerticalCenterAlignment { },
								#weight : 1.0
							},
							#horizontal : BlFrameLayoutConstraintsHorizontal {
								#alignment : BlHorizontalCenterAlignment { },
								#weight : 1.0
							}
						}
					},
					#position : Point [ 0, 0 ],
					#margin : BlInsets {
						#top : 4.0,
						#left : 28.0,
						#bottom : 4.0,
						#right : 28.0
					},
					#padding : BlInsets {
						#top : 0.0,
						#left : 0.0,
						#bottom : 0.0,
						#right : 0.0
					},
					#minHeight : 0.0,
					#minWidth : 0.0,
					#maxHeight : Float [ #infinity ],
					#maxWidth : @21,
					#ignoredByLayout : false,
					#previouslyAccessedConstraints : @13,
					#previouslyAccessedConstraintsType : @12,
					#accountTransformation : false
				},
				#visuals : BlCustomVisuals {
					#background : BlPaintBackground {
						#paint : BlColorPaint {
							#color : Color [ #green ]
						}
					}
				},
				#userData : IdentityDictionary {
					#elementId : BlElementNamedId {
						#identifier : #icon
					},
					#shouldHandleMousePickOutsideEvent : false
				},
				#layout : BlBasicLayout { }
			}
		],
		#constraints : BlLayoutCommonConstraints {
			#vertical : BlLayoutCommonConstraintsAxis {
				#resizer : BlLayoutFitContentResizer { }
			},
			#horizontal : BlLayoutCommonConstraintsAxis {
				#resizer : @31
			},
			#position : Point [ 0.0, 0.0 ],
			#margin : BlInsets {
				#top : 0.0,
				#left : 0.0,
				#bottom : 4.0,
				#right : 0.0
			},
			#padding : BlInsets {
				#top : 0.0,
				#left : 0.0,
				#bottom : 0.0,
				#right : 0.0
			},
			#minHeight : 0.0,
			#minWidth : 0.0,
			#maxHeight : @21,
			#maxWidth : @21,
			#ignoredByLayout : false,
			#accountTransformation : false
		},
		#visuals : BlCustomVisuals {
			#geometry : BlRoundedRectangleGeometry {
				#extent : Point [ 88.0, 40.0 ],
				#pathCache : BlPathCache {
					#geometry : @37,
					#strokedBounds : BlBounds {
						#left : 0.0,
						#top : 0.0,
						#right : 88.0,
						#bottom : 40.0
					}
				},
				#cornerRadii : BlCornerRadii {
					#topLeft : 100,
					#topRight : 100,
					#bottomLeft : 100,
					#bottomRight : 100
				},
				#center : Point [ 44.0, 20.0 ]
			},
			#background : BlPaintBackground {
				#paint : BlColorPaint {
					#color : Color [ #red ]
				}
			}
		},
		#userData : IdentityDictionary {
			#layoutNode : BlLayoutParentNode {
				#children : BlLayoutNodeChildren [
					BlLayoutChildNodeWithElement {
						#childNode : BlLayoutChildNode {
							#parent : @47,
							#measurement : BlLayoutNodeComputedMeasurement {
								#position : Point [ 28.0, 4.0 ],
								#extent : Point [ 32.0, 32.0 ]
							},
							#constraints : @6,
							#actions : Stack [ ]
						},
						#element : @4
					}
				],
				#extentSpec : BlExtentMeasurementSpec {
					#widthSpec : BlMeasurementSpec {
						#size : 0.0,
						#mode : BlMeasurementUnspecifiedMode { }
					},
					#heightSpec : BlMeasurementSpec {
						#size : 0.0,
						#mode : @57
					}
				},
				#constraints : @29,
				#extent : Point [ 88.0, 40.0 ],
				#position : Point [ 0.0, 0.0 ]
			},
			#elementId : BlElementNamedId {
				#identifier : #background
			},
			#shouldHandleMousePickOutsideEvent : false
		},
		#layout : BlFrameLayout { }
	},
	BlTextElement {
		#children : BlChildrenArray [ ],
		#constraints : BlLayoutCommonConstraints {
			#vertical : BlLayoutCommonConstraintsAxis {
				#resizer : BlLayoutFitContentResizer { }
			},
			#horizontal : BlLayoutCommonConstraintsAxis {
				#resizer : @67
			},
			#position : Point [ 0, 0 ],
			#margin : BlInsets {
				#top : 0.0,
				#left : 0.0,
				#bottom : 0.0,
				#right : 0.0
			},
			#padding : BlInsets {
				#top : 4.0,
				#left : 4.0,
				#bottom : 4.0,
				#right : 4.0
			},
			#minHeight : 0.0,
			#minWidth : 0.0,
			#maxHeight : @21,
			#maxWidth : @21,
			#ignoredByLayout : false,
			#accountTransformation : false
		},
		#visuals : BlCustomVisuals {
			#elevation : BlRelativeElevation {
				#elevation : 1
			}
		},
		#userData : IdentityDictionary {
			#elementId : BlElementNamedId {
				#identifier : #label
			},
			#shouldHandleMousePickOutsideEvent : false
		},
		#layout : BlBasicLayout { },
		#text : BlRopedText {
			#rope : BlAttributeRope {
				#attributes : [
					BlFontSizeAttribute {
						#isOverwritableByStyler : true,
						#size : 20
					}
				],
				#rope : BlCollectionRope {
					#collection : ''text''
				}
			}
		}
	}
]'
]

{ #category : #initialization }
MolGeoButtonElementAbstract >> buildElements [

	self hasChildren ifTrue: [ self removeChildren ].
	self addChildren: self class pystonSpec materializeAsBlElement.
	self constraintsDo: [ :c | c vertical fitContent ].
	self clipChildren: false.

	(self childWithId: #background) background: self secondaryColor.
	self layout:
		(BlLinearLayout vertical alignCenter)
]

{ #category : #defaults }
MolGeoButtonElementAbstract >> defaultFontSize [

	^ 16
]

{ #category : #'accessing - colors' }
MolGeoButtonElementAbstract >> hoverColor [

	^ self shouldBeImplemented
]

{ #category : #accessing }
MolGeoButtonElementAbstract >> icon: aForm [

	| background iconElement |
	background := self childWithId: #background.
	iconElement := background childWithId: #icon.
	iconElement constraintsDo: [ :c |
		c vertical exact: aForm extent y.
		c horizontal exact: aForm extent y ].
	iconElement background: aForm.
	self constraintsDo: [ :c |
		c horizontal exact: aForm extent y + iconElement margin width ]
]

{ #category : #initialization }
MolGeoButtonElementAbstract >> initialize [

	super initialize.
	self buildElements.
	self
		when: BlMouseOverEvent
		do: [ :evt |
		(self childWithId: #background) background: self hoverColor ].
	self when: BlMouseOutEvent do: [ :evt |
		(self childWithId: #background) background: self secondaryColor ].
]

{ #category : #accessing }
MolGeoButtonElementAbstract >> label: aString [

	| newLabel |
	newLabel := self makeNewLabelElement: aString.
	newLabel
		padding: (BlInsets all: 4);
		constraintsDo: [ :c |
			c frame horizontal alignCenter.
			c frame vertical alignBottom ];
		id: #label.

	self replaceChild: (self childWithId: #label) with: newLabel
]

{ #category : #accessing }
MolGeoButtonElementAbstract >> makeNewIconElement: aForm [

	^ (aForm collectColors: [ :c | c isTransparent ifTrue: [ c ] ifFalse: [ self primaryColor ] ]) asElement
]

{ #category : #accessing }
MolGeoButtonElementAbstract >> makeNewLabelElement: aString [

	| rope |
	rope := aString asRopedText
		        fontSize: self defaultFontSize;
		        foreground: self primaryColor;
		        yourself.
	^ rope asElement
]

{ #category : #'accessing - colors' }
MolGeoButtonElementAbstract >> primaryColor [

	^ self shouldBeImplemented
]

{ #category : #'accessing - colors' }
MolGeoButtonElementAbstract >> secondaryColor [

	^ self shouldBeImplemented
]
