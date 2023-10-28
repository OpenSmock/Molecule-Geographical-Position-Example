Class {
	#name : #MolGeoPosApplication,
	#superclass : #BlElement,
	#instVars : [
		'map',
		'menu'
	],
	#category : #'Molecule-Geographical-Position-Example-Application'
}

{ #category : #'instance creation' }
MolGeoPosApplication class >> close [
	<script>

	| current |
	current := MolUtils instanceOf: self class.
	current ifNotNil:[ current space close ].

	"Clean previous opened version if necessary"
	MolComponentManager cleanUp.
]

{ #category : #'instance creation' }
MolGeoPosApplication class >> open [
	<script>

	self close.

	"Open new application"
	^ self new openApplication
]

{ #category : #private }
MolGeoPosApplication >> iconSize [

	^ 28 @ 28
]

{ #category : #initialization }
MolGeoPosApplication >> initialize [

	super initialize.
	map := self makeAndStartMapComponent.
	menu := self makeComponentsSelectionMenu.
	self addChildren: { map . menu }.
	self layout: BlLinearLayout vertical alignCenter.
	self constraintsDo: [ :c |
		c vertical fitContent.
		c horizontal fitContent ]
]

{ #category : #private }
MolGeoPosApplication >> makeAndStartMapComponent [

	| mapElement |
	mapElement := MolGeoPositionMapReicever start.
	mapElement backgroundForm: self mapForm.
	mapElement size: self maximumMapSize.
	^ mapElement
]

{ #category : #private }
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

{ #category : #private }
MolGeoPosApplication >> makeGPSButton [

	^ MolGeoSwitchElement new
		  label: 'GPS';
		  icon: (MolGeoPosExampleResource gps asForm: self iconSize);
		  whenActivatedDo: [
			  self stopGeoPosEquipement.
			  MolGNSSGPS start ];
		  yourself
]

{ #category : #private }
MolGeoPosApplication >> makeGPSInaccurateButton [

	^ MolGeoSwitchElement new
		  label: 'GPSInaccurate';
		  icon: (MolGeoPosExampleResource gpsInacurrate asForm: self iconSize);
		  whenActivatedDo: [
			  self stopGeoPosEquipement.
			  MolGNSSGPSInaccurate start ];
		  yourself
]

{ #category : #private }
MolGeoPosApplication >> makeGSMButton [

	^ MolGeoSwitchElement new
		  label: 'GSM';
		  icon: (MolGeoPosExampleResource gsm asForm: self iconSize);
		  whenActivatedDo: [
			  self stopGeoPosEquipement.
			  MolGSM start ];
		  yourself
]

{ #category : #private }
MolGeoPosApplication >> makeGalileoButton [

	^ MolGeoSwitchElement new
		  label: 'Galileo';
		  icon: (MolGeoPosExampleResource galileo asForm: self iconSize);
		  whenActivatedDo: [
			  self stopGeoPosEquipement.
			  MolGNSSGalileo start ];
		  yourself
]

{ #category : #private }
MolGeoPosApplication >> makeWiFiButton [

	^ MolGeoSwitchElement new
		  label: 'WiFi';
		  icon: (MolGeoPosExampleResource wiFi asForm: self iconSize);
		  whenActivatedDo: [
			  self stopGeoPosEquipement.
			  MolWiFi start ];
		  yourself
]

{ #category : #private }
MolGeoPosApplication >> mapForm [

	^ MolGeoPosExampleResource map asForm: self maximumMapSize
]

{ #category : #private }
MolGeoPosApplication >> maximumMapSize [

	^ 500 @ 300
]

{ #category : #private }
MolGeoPosApplication >> openApplication [
 
	| space |
	space := BlSpace new
		         extent: (self windowSize);
		         yourself.

	space root addChild: self.

	space
		when: BlSpaceClosedEvent
		do: [ :evt | MolComponentManager cleanUp ].

	space enqueueTask: (BlTaskAction new
			 action: [ space center ];
			 yourself).


	space resizable: false.
	space title: 'Molecule Geographical Position Example'.
	space show editWithPyramid 
]

{ #category : #private }
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

{ #category : #private }
MolGeoPosApplication >> windowSize [

	^ 500 @ 400
]
