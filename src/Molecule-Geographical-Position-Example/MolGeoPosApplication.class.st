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

{ #category : #'as yet unclassified' }
MolGeoPosApplication >> iconSize [

	^ 28 @ 28
]

{ #category : #initialization }
MolGeoPosApplication >> initialize [

	super initialize.
	map := self makeAndStartMapComponent.
	menu := self makeComponentsSelectionMenu.
	self addChildren: {
			map.
			menu }.
	self layout: BlLinearLayout vertical alignCenter.
	self constraintsDo: [ :c |
		c vertical fitContent.
		c horizontal fitContent ]
]

{ #category : #'as yet unclassified' }
MolGeoPosApplication >> makeAndStartMapComponent [

	| mapElement |
	MolGeoPositionMapReicever start.
	mapElement := MolUtils instanceOf: MolGeoPositionMapReicever.
	mapElement backgroundForm: self mapForm.
	mapElement margin: (BlInsets bottom: 16).
	^ mapElement
]

{ #category : #'as yet unclassified' }
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

{ #category : #'as yet unclassified' }
MolGeoPosApplication >> makeGPSButton [

	^ MolGeoSwitchElement new
		  label: 'GPS';
		  icon: (MolGeoGPSDownloaded asForm: self iconSize);
		  whenActivatedDo: [
			  self stopGeoPosEquipement.
			  MolGNSSGPS start ];
		  yourself
]

{ #category : #'as yet unclassified' }
MolGeoPosApplication >> makeGPSInaccurateButton [

	^ MolGeoSwitchElement new
		  label: 'GPSInaccurate';
		  icon: (MolGeoGPSInaccurateDownloaded asForm: self iconSize);
		  whenActivatedDo: [ self stopGeoPosEquipement.MolGNSSGPSInaccurate start ];
		  yourself
]

{ #category : #'as yet unclassified' }
MolGeoPosApplication >> makeGSMButton [

	^ MolGeoSwitchElement new
		  label: 'GSM';
		  icon: (MolGeoGSMDownloaded asForm: self iconSize);
		  whenActivatedDo: [
			  self stopGeoPosEquipement.
			  MolGSM start ];
		  yourself
]

{ #category : #'as yet unclassified' }
MolGeoPosApplication >> makeGalileoButton [

	^ MolGeoSwitchElement new
		  label: 'Galileo';
		  icon: (MolGeoGalileoDownloaded asForm: self iconSize);
		  whenActivatedDo: [ self stopGeoPosEquipement. MolGNSSGalileo start ];
		  yourself
]

{ #category : #'as yet unclassified' }
MolGeoPosApplication >> makeWiFiButton [

	^ MolGeoSwitchElement new
		  label: 'WiFi';
		  icon: (MolGeoWiFiDownloaded asForm: self iconSize);
		  whenActivatedDo: [ self stopGeoPosEquipement. MolWiFi start ];
		  yourself
]

{ #category : #'as yet unclassified' }
MolGeoPosApplication >> mapForm [

	^ (MolGeoMapDownloaded asForm: self maximumMapSize)
]

{ #category : #'as yet unclassified' }
MolGeoPosApplication >> maximumMapSize [

	^ 500 @ 500
]

{ #category : #'as yet unclassified' }
MolGeoPosApplication >> openApplication [

	| space |
	space := BlSpace new
		         extent: self mapForm extent + (0 @ 96);
		         yourself.

	space root addChild: self.

	space
		when: BlSpaceClosedEvent
		do: [ :evt | MolComponentManager cleanUp ].

	space enqueueTask: (BlTaskAction new
			 action: [ space center ];
			 yourself).


	space resizable: false.
	space title: 'Molecule Geo Position'.
	space show
]

{ #category : #'as yet unclassified' }
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
