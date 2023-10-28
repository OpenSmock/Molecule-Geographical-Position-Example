Class {
	#name : #MolGeoPosMapReceiver,
	#superclass : #BlElement,
	#traits : 'MolGeoPosReceiverType + MolGeoPosEquipmentEvents + MolComponentImpl',
	#classTraits : 'MolGeoPosReceiverType classTrait + MolGeoPosEquipmentEvents classTrait + MolComponentImpl classTrait',
	#instVars : [
		'pointerV',
		'pointerH',
		'pointer'
	],
	#category : #'Molecule-Geographical-Position-Example-Application'
}

{ #category : #'pyramid-serialized-bloc' }
MolGeoPosMapReceiver class >> pystonSpec [
	"This class has been generated using Pyramid.

	By: labordep
	2023-10-28 12:15:56"

	<pySTON>
	^ '[
	BlElement {
		#children : BlChildrenArray [
			BlElement {
				#children : BlChildrenArray [ ],
				#constraints : BlLayoutCommonConstraints {
					#vertical : BlLayoutCommonConstraintsAxis {
						#resizer : BlLayoutMatchParentResizer { }
					},
					#horizontal : BlLayoutCommonConstraintsAxis {
						#resizer : BlLayoutExactResizer {
							#size : 2.0
						}
					},
					#position : Point [ 250, 0 ],
					#margin : BlInsets {
						#top : 0.0,
						#left : 0.0,
						#bottom : 0.0,
						#right : 0.0
					},
					#padding : @12,
					#minHeight : 0.0,
					#minWidth : 0.0,
					#maxHeight : Float [ #infinity ],
					#maxWidth : @13,
					#ignoredByLayout : false,
					#accountTransformation : false
				},
				#visuals : BlCustomVisuals {
					#background : BlPaintBackground {
						#paint : BlColorPaint {
							#color : Color {
								#red : 0.05083088954056696,
								#green : 0.19257086999022482,
								#blue : 0.3176930596285435,
								#alpha : 1.0
							}
						}
					}
				},
				#userData : IdentityDictionary {
					#elementId : BlElementNamedId {
						#identifier : #pointerV
					},
					#shouldHandleMousePickOutsideEvent : false
				},
				#layout : BlBasicLayout { }
			},
			BlElement {
				#children : BlChildrenArray [ ],
				#constraints : BlLayoutCommonConstraints {
					#vertical : BlLayoutCommonConstraintsAxis {
						#resizer : BlLayoutExactResizer {
							#size : 2.0
						}
					},
					#horizontal : BlLayoutCommonConstraintsAxis {
						#resizer : @8
					},
					#position : Point [ 0, 150 ],
					#margin : @12,
					#padding : @12,
					#minHeight : 0.0,
					#minWidth : 0.0,
					#maxHeight : @13,
					#maxWidth : @13,
					#ignoredByLayout : false,
					#accountTransformation : false
				},
				#visuals : BlCustomVisuals {
					#background : BlPaintBackground {
						#paint : BlColorPaint {
							#color : Color {
								#red : 0.05083088954056696,
								#green : 0.19257086999022482,
								#blue : 0.3176930596285435,
								#alpha : 1.0
							}
						}
					}
				},
				#userData : IdentityDictionary {
					#elementId : BlElementNamedId {
						#identifier : #pointerH
					},
					#shouldHandleMousePickOutsideEvent : false
				},
				#layout : @20
			},
			BlElement {
				#children : BlChildrenArray [ ],
				#constraints : BlLayoutCommonConstraints {
					#vertical : BlLayoutCommonConstraintsAxis {
						#resizer : BlLayoutExactResizer {
							#size : 100.0
						}
					},
					#horizontal : BlLayoutCommonConstraintsAxis {
						#resizer : @38
					},
					#position : Point [ 200, 100 ],
					#margin : @12,
					#padding : @12,
					#minHeight : 0.0,
					#minWidth : 0.0,
					#maxHeight : @13,
					#maxWidth : @13,
					#ignoredByLayout : false,
					#accountTransformation : false
				},
				#visuals : BlCustomVisuals {
					#geometry : BlEllipseGeometry {
						#extent : Point [ 100.0, 100.0 ],
						#pathCache : BlPathCache {
							#geometry : @42,
							#strokedBounds : BlBounds {
								#left : 0.0,
								#top : 0.0,
								#right : 100.0,
								#bottom : 100.0
							}
						}
					},
					#border : BlBorder {
						#paint : BlColorPaint {
							#color : Color {
								#red : 0.05083088954056696,
								#green : 0.19257086999022482,
								#blue : 0.3176930596285435,
								#alpha : 1.0
							}
						},
						#width : 2,
						#style : BlStrokeStyle {
							#lineCap : BlStrokeLineButtCap { },
							#lineJoin : BlStrokeLineMiterJoin { },
							#miterLimit : 4.0,
							#dashArray : [ ],
							#dashOffset : 0.0
						},
						#opacity : 1.0
					},
					#background : BlPaintBackground {
						#paint : BlColorPaint {
							#color : Color {
								#red : 0.05083088954056696,
								#green : 0.19257086999022482,
								#blue : 0.3176930596285435,
								#alpha : 0.4980392156862745
							}
						}
					}
				},
				#userData : IdentityDictionary {
					#elementId : BlElementNamedId {
						#identifier : #pointerCircle
					},
					#shouldHandleMousePickOutsideEvent : false
				},
				#layout : @20
			},
			BlElement {
				#children : BlChildrenArray [
					BlTextElement {
						#children : BlChildrenArray [ ],
						#constraints : BlLayoutCommonConstraints {
							#vertical : BlLayoutCommonConstraintsAxis {
								#resizer : BlLayoutFitContentResizer { }
							},
							#horizontal : BlLayoutCommonConstraintsAxis {
								#resizer : @64
							},
							#constraints : {
								Class [ #BlFlowLayout ] : BlFlowLayoutConstraints {
									#vertical : BlFlowLayoutConstraintsVertical {
										#alignment : BlTopAlignment { }
									},
									#horizontal : BlFlowLayoutConstraintsHorizontal {
										#alignment : BlHorizontalStartAlignment { }
									},
									#newLine : false,
									#weight : 0,
									#display : BlFlowLayoutInline { }
								},
								Class [ #BlProportionalLayout ] : BlProportionalLayoutConstraints {
									#vertical : BlProportionalLayoutConstraintsVertical {
										#top : 0.9,
										#bottom : 1
									},
									#horizontal : BlProportionalLayoutConstraintsHorizontal {
										#left : 0.8,
										#right : 1
									}
								}
							},
							#position : Point [ 0.0, 0.0 ],
							#margin : BlInsets {
								#top : 0.0,
								#left : 0.0,
								#bottom : 0.0,
								#right : 0.0
							},
							#padding : BlInsets {
								#top : 5.0,
								#left : 5.0,
								#bottom : 5.0,
								#right : 5.0
							},
							#minHeight : 0.0,
							#minWidth : 0.0,
							#maxHeight : @13,
							#maxWidth : @13,
							#ignoredByLayout : false,
							#previouslyAccessedConstraints : @75,
							#previouslyAccessedConstraintsType : @74,
							#accountTransformation : false
						},
						#visuals : BlCustomVisuals {
							#background : BlPaintBackground {
								#paint : BlColorPaint {
									#color : Color {
										#red : 1.0,
										#green : 1.0,
										#blue : 1.0,
										#alpha : 0.4980392156862745
									}
								}
							}
						},
						#userData : IdentityDictionary {
							#elementId : BlElementNamedId {
								#identifier : #B
							},
							#shouldHandleMousePickOutsideEvent : false
						},
						#layout : BlBasicLayout { },
						#text : BlRopedText {
							#rope : BlAttributeRope {
								#attributes : [
									BlFontSizeAttribute {
										#isOverwritableByStyler : true,
										#size : 9
									}
								],
								#rope : BlCollectionRope {
									#collection : ''© OpenStreetMap''
								}
							}
						}
					}
				],
				#constraints : BlLayoutCommonConstraints {
					#vertical : BlLayoutCommonConstraintsAxis {
						#resizer : BlLayoutExactResizer {
							#size : 20.0
						}
					},
					#horizontal : BlLayoutCommonConstraintsAxis {
						#resizer : BlLayoutExactResizer {
							#size : 80.0
						}
					},
					#position : Point [ 417.0, 277.0 ],
					#margin : @79,
					#padding : @79,
					#minHeight : 0.0,
					#minWidth : 0.0,
					#maxHeight : @13,
					#maxWidth : @13,
					#ignoredByLayout : false,
					#accountTransformation : false
				},
				#visuals : BlCustomVisuals {
					#clipChildren : false
				},
				#userData : IdentityDictionary {
					#elementId : BlElementNamedId {
						#identifier : #mapLicense
					},
					#shouldHandleMousePickOutsideEvent : false
				},
				#layout : BlBasicLayout { }
			}
		],
		#constraints : BlLayoutCommonConstraints {
			#vertical : BlLayoutCommonConstraintsAxis {
				#resizer : BlLayoutExactResizer {
					#size : 300.0
				}
			},
			#horizontal : BlLayoutCommonConstraintsAxis {
				#resizer : BlLayoutExactResizer {
					#size : 500.0
				}
			},
			#position : Point [ 0.0, 0.0 ],
			#margin : BlInsets {
				#top : 0.0,
				#left : 0.0,
				#bottom : 0.0,
				#right : 0.0
			},
			#padding : @109,
			#minHeight : 0.0,
			#minWidth : 0.0,
			#maxHeight : @13,
			#maxWidth : @13,
			#ignoredByLayout : false,
			#accountTransformation : false
		},
		#visuals : BlCustomVisuals {
			#background : BlPaintBackground {
				#paint : BlColorPaint {
					#color : Color {
						#red : 0.7214076246334311,
						#green : 0.8357771260997068,
						#blue : 0.6666666666666666,
						#alpha : 1.0
					}
				}
			}
		},
		#userData : IdentityDictionary {
			#elementId : BlElementNamedId {
				#identifier : #map
			},
			#shouldHandleMousePickOutsideEvent : false
		},
		#layout : BlBasicLayout { }
	}
]'
]

{ #category : #'as yet unclassified' }
MolGeoPosMapReceiver >> backgroundForm: aForm [

(self childWithId: #map) background: aForm.
	self size: aForm extent.
	
]

{ #category : #initialization }
MolGeoPosMapReceiver >> buildElements [

	self hasChildren ifTrue: [ self removeChildren ].
	self addChildren: self class pystonSpec materializeAsBlElement
]

{ #category : #'life cycle' }
MolGeoPosMapReceiver >> componentActivate [

	self getMolGeoPosEquipmentEventsSubscriber subscribe: self
]

{ #category : #'life cycle' }
MolGeoPosMapReceiver >> componentPassivate [

	self getMolGeoPosEquipmentEventsSubscriber unsubscribe: self
]

{ #category : #events }
MolGeoPosMapReceiver >> currentPositionChanged: aGeoPosition [

	| adjustedPosition radius |
	adjustedPosition := aGeoPosition * 50 asPoint + self size / 2.
	radius := self getMolGeoPosEquipmentServicesProvider
		          getAccuracyRadiusInMeters asPoint.

	pointerV position: adjustedPosition x @ 0.
	pointerH position: 0 @ adjustedPosition y.
	pointer position: adjustedPosition - (radius / 2) asPoint.
	pointer size: radius
]

{ #category : #'component accessing' }
MolGeoPosMapReceiver >> getMolGeoPosEquipmentEventsSubscriber [
	| eventsSymbol eventsSubscriber itf |
	itf := MolGeoPosEquipmentEvents.
	eventsSymbol := self eventsSubscribers at: itf ifAbsent: [^MolNotFoundEventsSubscriber new interface: itf name: nil].
	eventsSymbol isCollection
	 	ifTrue: 
			[eventsSubscriber := MolComponentManager default locatorServices 
						searchEventsSubscriberFor: MolGeoPosEquipmentEvents named: eventsSymbol ]. 
	^eventsSubscriber
]

{ #category : #'component accessing' }
MolGeoPosMapReceiver >> getMolGeoPosEquipmentServicesProvider [
	| servicesSymbol servicesProvider itf |

	itf := MolGeoPosEquipmentServices.
	servicesSymbol := self servicesProviders at: itf ifAbsent: [nil].
	(servicesSymbol isNil or:[servicesSymbol isSymbol not]) ifTrue: [ ^ MolNotFoundServicesProvider new interface: itf name: nil ].

	servicesProvider := MolComponentManager default locatorServices searchServicesProviderFor: MolGeoPosEquipmentServices named: servicesSymbol.
	^servicesProvider
]

{ #category : #'life cycle' }
MolGeoPosMapReceiver >> initialize [

	super initialize.
	self buildElements.
	pointerV := self childWithId: #pointerV.
	pointerH := self childWithId: #pointerH.
	pointer := self childWithId: #pointerCircle.
	self background: Color gray.
	self clipChildren: true.
]
