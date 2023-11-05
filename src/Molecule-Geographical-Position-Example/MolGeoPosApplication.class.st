Class {
	#name : #MolGeoPosApplication,
	#superclass : #BlElement,
	#instVars : [
		'map',
		'menu'
	],
	#category : #'Molecule-Geographical-Position-Example-view'
}

{ #category : #'instance creation' }
MolGeoPosApplication class >> open [

	<script: 'self open'>
	^ self new openApplication
]

{ #category : #accessing }
MolGeoPosApplication >> getMapComponent [

	| manager |
	manager := MolComponentManager default.

	^ manager locatorServices searchComponentTypeImplementorFor:
		  MolGeoPosReceiverType
]

{ #category : #'accessing - resources' }
MolGeoPosApplication >> iconSize [

	^ 28 @ 28
]

{ #category : #initialization }
MolGeoPosApplication >> initialize [

	super initialize.
	MolGeoPositionMapReicever start.
	map := self makeMapComponent.
	menu := self makeComponentsSelectionMenu.
	self addChildren: {
			map.
			menu }.
	self layout: BlLinearLayout vertical alignCenter.
	self constraintsDo: [ :c |
		c vertical fitContent.
		c horizontal fitContent ]
]

{ #category : #factory }
MolGeoPosApplication >> makeComponentsSelectionMenu [

	| galileo gps gpsInacurate gsm wifi |
	galileo := self makeGalileoButton.
	gps := self makeGPSButton.
	gpsInacurate := self makeGPSInaccurateButton.
	gsm := self makeGSMButton.
	wifi := self makeWiFiButton.
	^ MolGeoConnectedSwitchesElement new
		  switches: {
				  galileo.
				  gps.
				  gpsInacurate.
				  gsm.
				  wifi };
		  yourself
]

{ #category : #factory }
MolGeoPosApplication >> makeGPSButton [

	^ MolGeoSwitchElement new
		  label: 'GPS';
		  icon: (MolGeoRessource gps asForm: self iconSize);
		  whenActivatedDo: [
			  self stopGeoPosEquipement.
			  MolGNSSGPS start ];
		  yourself
]

{ #category : #factory }
MolGeoPosApplication >> makeGPSInaccurateButton [

	^ MolGeoSwitchElement new
		  label: 'GPSInaccurate';
		  icon: (MolGeoRessource gpsInacurrate asForm: self iconSize);
		  whenActivatedDo: [
			  self stopGeoPosEquipement.
			  MolGNSSGPSInaccurate start ];
		  yourself
]

{ #category : #factory }
MolGeoPosApplication >> makeGSMButton [

	^ MolGeoSwitchElement new
		  label: 'GSM';
		  icon: (MolGeoRessource gsm asForm: self iconSize);
		  whenActivatedDo: [
			  self stopGeoPosEquipement.
			  MolGSM start ];
		  yourself
]

{ #category : #factory }
MolGeoPosApplication >> makeGalileoButton [

	^ MolGeoSwitchElement new
		  label: 'Galileo';
		  icon: (MolGeoRessource galileo asForm: self iconSize);
		  whenActivatedDo: [
			  self stopGeoPosEquipement.
			  MolGNSSGalileo start ];
		  yourself
]

{ #category : #factory }
MolGeoPosApplication >> makeMapComponent [

	| mapElement |
	mapElement := MolUtils instanceOf: MolGeoPositionMapReicever.
	mapElement backgroundForm: self mapForm.
	mapElement margin: (BlInsets bottom: 16).
	^ mapElement
]

{ #category : #factory }
MolGeoPosApplication >> makeWiFiButton [

	^ MolGeoSwitchElement new
		  label: 'WiFi';
		  icon: (MolGeoRessource wiFi asForm: self iconSize);
		  whenActivatedDo: [
			  self stopGeoPosEquipement.
			  MolWiFi start ];
		  yourself
]

{ #category : #'accessing - resources' }
MolGeoPosApplication >> mapForm [

	^ MolGeoRessource map asForm: self maximumMapSize
]

{ #category : #'accessing - resources' }
MolGeoPosApplication >> maximumMapSize [

	^ 500 @ 500
]

{ #category : #control }
MolGeoPosApplication >> openApplication [

	| space |
	space := BlSpace new
		         extent: self mapForm extent + (0 @ 96);
		         yourself.

	space root addChild: self.

	"When Space Close : stop all components"
	space when: BlSpaceClosedEvent do: [ :evt | self stopAllComponents ].

	"When BlSpaceFocusOutEvent : pause all components"
	space
		when: BlSpaceResizedEvent
		do: [ :evt | self pauseMapComponent ].

	"When BlSpaceFocusInEvent : unpause all components"
	space
		when: BlSpaceFocusInEvent
		do: [ :evt | self unpauseMapComponent ].

	space enqueueTask: (BlTaskAction new
			 action: [ space center ];
			 yourself).


	space resizable: false.
	space title: 'Molecule Geo Position'.
	space show
]

{ #category : #control }
MolGeoPosApplication >> pauseMapComponent [

	self getMapComponent componentPassivate
]

{ #category : #control }
MolGeoPosApplication >> stopAllComponents [

MolComponentManager cleanUp
]

{ #category : #control }
MolGeoPosApplication >> stopGeoPosEquipement [
	"stops every possible component if it's launched"

	| manager component |
	manager := MolComponentManager default.

	component := manager locatorServices
		             searchComponentTypeImplementorFor:
		             MolGeoPosEquipmentType.
	
	"No component running."
	component ifNil: [ ^ self ].
	
	"One component to stop."
	component class stop
]

{ #category : #control }
MolGeoPosApplication >> unpauseMapComponent [

	self getMapComponent componentActivate
]
