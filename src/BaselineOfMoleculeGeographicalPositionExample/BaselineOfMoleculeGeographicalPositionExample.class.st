Class {
	#name : #BaselineOfMoleculeGeographicalPositionExample,
	#superclass : #BaselineOf,
	#instVars : [
		'previousDynamicContractUpdateActivated'
	],
	#category : #BaselineOfMoleculeGeographicalPositionExample
}

{ #category : #baselines }
BaselineOfMoleculeGeographicalPositionExample >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [			
			"Pre and post load scripts"
			spec preLoadDoIt: #'preload:package:'.
			spec postLoadDoIt: #'postload:package:'.
			
			"Load dependencies"
			self loadPyramid: spec.
			self loadMolecule: spec.
						
			"Packages"
			spec
				package: 'Molecule-Geographical-Position-Example' with: [ spec requires: #('Molecule' 'Pyramid') ].
		 ]
]

{ #category : #dependencies }
BaselineOfMoleculeGeographicalPositionExample >> loadMolecule: spec [

	spec
		baseline: #Molecule
		with: [ spec repository: 'github://OpenSmock/Molecule:main/src' ]
]

{ #category : #dependencies }
BaselineOfMoleculeGeographicalPositionExample >> loadPyramid: spec [

	spec
		baseline: #Pyramid
		with: [ spec repository: 'github://OpenSmock/Pyramid:main/src' ]
]

{ #category : #'load scripts' }
BaselineOfMoleculeGeographicalPositionExample >> postload: loader package: packageSpec [

	| molGeoDownloadedRessource molGeoPosHelper |
	"Download ressources."
	molGeoDownloadedRessource := #MolGeoDownloadedRessource
		                             asClassInEnvironment:
		                             self class environment.
	molGeoDownloadedRessource ensureAllDownloaded.

	"Open helper."
	molGeoPosHelper := #MolGeoPosHelper asClassInEnvironment:
		                   self class environment.
	(ProfStef goOn: molGeoPosHelper) window makeUnclosable
]

{ #category : #'load scripts' }
BaselineOfMoleculeGeographicalPositionExample >> preload: loader package: packageSpec [
	"do nothing"
]
