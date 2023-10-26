Class {
	#name : #MolGeoPosCartographyApp,
	#superclass : #BlElement,
	#instVars : [
		'map',
		'switch'
	],
	#category : #'Molecule-Geographical-Position-Example'
}

{ #category : #'instance creation' }
MolGeoPosCartographyApp class >> open [

	<script>
	| element |
	element := self new.
	element open
]

{ #category : #initialization }
MolGeoPosCartographyApp >> initialize [

	| rope1 rope2 label1 label2 |
	super initialize.
	self size: 400 @ 470.

	switch := MolSwitchButtonElement new.
	switch position: 152.5 @ 420.
	
	switch whenOffDo: [
		MolGNSSGPS stop.
		MolGNSSGPSInaccurate start ].
	
	switch whenOnDo: [
		MolGNSSGPSInaccurate stop.
		MolGNSSGPS start ].

	MolGNSSGPSInaccurate start.
	MolGeoPosMapReceiver start.
	map := MolUtils instanceOf: MolGeoPosMapReceiver.

	rope1 := 'Accurate GPS' asRopedText.
	rope1 attribute: (BlFontSizeAttribute size: 20).
	label1 := rope1 asElement.
	label1 position: 10 @ 425.

	rope2 := 'Inaccurate GPS' asRopedText.
	rope2 attribute: (BlFontSizeAttribute size: 20).
	label2 := rope2 asElement.
	label2 position: 260 @ 425.

	self addChild: map.
	self addChild: switch.
	self addChild: label1.
	self addChild: label2
]

{ #category : #initialization }
MolGeoPosCartographyApp >> open [

	| space |
	space := BlSpace new
		         extent: 400 @ 470;
		         yourself.
		
	space root addChild: self.
		
	space
		when: BlSpaceClosedEvent
		do: [ :evt | MolComponentManager cleanUp ].
	space when: BlKeyDownEvent do: [ :evt |
		evt key = KeyboardKey F12 ifTrue: [
			(self canPerform: #editWithPyramid) ifTrue: [
				self editWithPyramid ] ] ].

	space enqueueTask: (BlTaskAction new
			 action: [ space center ];
			 yourself).

	space show
]
