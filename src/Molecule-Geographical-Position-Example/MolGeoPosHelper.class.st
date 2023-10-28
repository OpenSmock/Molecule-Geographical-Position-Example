Class {
	#name : #MolGeoPosHelper,
	#superclass : #AbstractTutorial,
	#category : #'Molecule-Geographical-Position-Example-Tutorial'
}

{ #category : #'instance creation' }
MolGeoPosHelper class >> openAsUnclosableWindow [
	<script>
	
	(ProfStef goOn: self) window makeUnclosable
]

{ #category : #lessons }
MolGeoPosHelper >> openTheExample [

	^ Lesson
		  title: 'Molecule Geographical Position Example - Instructions'
		  lesson:
			  '"To launch the application select the following line, do a right clic to open the contextual menu and select <Do it>."
MolGeoPosApplication open.

"You can also select the previous line with your mouse and press (ctrl + D or cmd + D) to reopen it at any moment."

"If you try to open a new application before closing the previous one, you will receive an error message. You cannot run two time the same component. To stop all the running component you can execute the following line:"
MolWorld doComponentManagerCleanUpCatchingErrors.

"You can also do it using the world menu on top of the screen. Clic on Library > Molecule > CleanUp."

"To see the source code of the project you can open a browser. Select a class with your Mouse and press (ctrl + B or cmd + B)"
MolGeoPosApplication.

"The browser has 4 vertical panels (from left to right):
- package selector
- class selector
- method classifier
- method selector
Use the package selector, class selector, and method selector to read the source code of the application."

"In the application, the data revceiver component is:"
MolGeoPositionMapReicever.

"In the application, the data emiter components are:"
MolGNSSGPS.
MolGNSSGPSInaccurate.
MolGNSSGalileo.
MolGSM.
MolWiFi.
'
]

{ #category : #tutorial }
MolGeoPosHelper >> tutorial [

	^ #( #openTheExample )
]
