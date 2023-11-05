Class {
	#name : #MolGeoPositionMapReicever,
	#superclass : #BlElement,
	#traits : 'MolGeoPosReceiverType + MolGeoPosEquipmentEvents + MolComponentImpl',
	#classTraits : 'MolGeoPosReceiverType classTrait + MolGeoPosEquipmentEvents classTrait + MolComponentImpl classTrait',
	#instVars : [
		'pointerV',
		'pointerH',
		'pointer'
	],
	#category : #'Molecule-Geographical-Position-Example-view'
}

{ #category : #'pyramid-serialized-bloc' }
MolGeoPositionMapReicever class >> pystonSpec [
	"This class has been generated using Pyramid.

	By: YannLEGOFF
	2023-10-25 20:28:29"

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
							#geometry : @42
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
			#padding : @63,
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

{ #category : #accessing }
MolGeoPositionMapReicever >> backgroundForm: aForm [

(self childWithId: #map) background: aForm.
	self size: aForm extent.
	
]

{ #category : #initialization }
MolGeoPositionMapReicever >> buildElements [

	self hasChildren ifTrue: [ self removeChildren ].
	self addChildren: self class pystonSpec materializeAsBlElement
]

{ #category : #'life cycle' }
MolGeoPositionMapReicever >> componentActivate [

	self getMolGeoPosEquipmentEventsSubscriber subscribe: self
]

{ #category : #'life cycle' }
MolGeoPositionMapReicever >> componentPassivate [

	self getMolGeoPosEquipmentEventsSubscriber unsubscribe: self
]

{ #category : #'life cycle' }
MolGeoPositionMapReicever >> componentRemove [

	self space ifNotNil: [ :s | s close ].
]

{ #category : #events }
MolGeoPositionMapReicever >> currentPositionChanged: aGeoPosition [

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
MolGeoPositionMapReicever >> getMolGeoPosEquipmentEventsSubscriber [
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
MolGeoPositionMapReicever >> getMolGeoPosEquipmentServicesProvider [
	| servicesSymbol servicesProvider itf |

	itf := MolGeoPosEquipmentServices.
	servicesSymbol := self servicesProviders at: itf ifAbsent: [nil].
	(servicesSymbol isNil or:[servicesSymbol isSymbol not]) ifTrue: [ ^ MolNotFoundServicesProvider new interface: itf name: nil ].

	servicesProvider := MolComponentManager default locatorServices searchServicesProviderFor: MolGeoPosEquipmentServices named: servicesSymbol.
	^servicesProvider
]

{ #category : #'life cycle' }
MolGeoPositionMapReicever >> initialize [

	super initialize.
	self buildElements.
	pointerV := self childWithId: #pointerV.
	pointerH := self childWithId: #pointerH.
	pointer := self childWithId: #pointerCircle.
	self clipChildren: true.
]
