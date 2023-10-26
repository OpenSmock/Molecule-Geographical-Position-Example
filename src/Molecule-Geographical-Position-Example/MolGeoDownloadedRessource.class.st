Class {
	#name : #MolGeoDownloadedRessource,
	#superclass : #Object,
	#category : #'Molecule-Geographical-Position-Example-downloader'
}

{ #category : #converting }
MolGeoDownloadedRessource class >> asForm [

	^ (Form fromFileNamed: self new fileReference) mapColor: Color white to: Color transparent
]

{ #category : #converting }
MolGeoDownloadedRessource class >> asForm: anExtent [

	^ self asForm
		  scaledToSize: anExtent
]

{ #category : #'as yet unclassified' }
MolGeoDownloadedRessource class >> ensureAllDownloaded [

	<script: 'self ensureAllDownloaded'>
	self allSubclassesDo: [ :each |
		each new
			ensureDownloaded ]
]

{ #category : #'as yet unclassified' }
MolGeoDownloadedRessource class >> forceAllDownloaded [

	<script: 'self forceAllDownloaded'>
	self allSubclassesDo: [ :each | | downloader |
		downloader := each new.
		DiskStore current delete: downloader fileReference asPath.
		downloader
			download ]
]

{ #category : #'as yet unclassified' }
MolGeoDownloadedRessource class >> ressourcesDirectory [
	| reference |
	reference := FileLocator imageDirectory asFileReference / 'ressources'.
	(reference exists and: [ reference isDirectory ]) ifTrue: [ ^ reference ].
	(reference exists and: [ reference isDirectory not ]) ifTrue: [ Error signal: 'ressources directory is not a directory.' ].
	DiskStore current createDirectory: reference asPath.
	^ reference
]

{ #category : #testing }
MolGeoDownloadedRessource >> baseUrl [

	^ 'https://raw.githubusercontent.com/OpenSmock/Molecule-Geographical-Position-Example/Issue_0001/ressources/'
	
]

{ #category : #testing }
MolGeoDownloadedRessource >> download [

	('Downloading {1}...' format: { self fileName }) traceCr.

	[
	ZnClient new
		url: self baseUrl , self fileName;
		numberOfRetries: 5;
		timeout: 100;
		logToTranscript;
		downloadTo: self class ressourcesDirectory ensureCreateDirectory;
		yourself.

	'
Download finished - ' trace ] timeToRun traceCr
]

{ #category : #testing }
MolGeoDownloadedRessource >> ensureDownloaded [

	self isDownloaded ifFalse: [ self download ]
]

{ #category : #testing }
MolGeoDownloadedRessource >> fileName [

	^ self subclassResponsibility
]

{ #category : #testing }
MolGeoDownloadedRessource >> fileReference [

	^ self class ressourcesDirectory / self fileName
]

{ #category : #testing }
MolGeoDownloadedRessource >> isDownloaded [

	^ self fileReference exists
]
