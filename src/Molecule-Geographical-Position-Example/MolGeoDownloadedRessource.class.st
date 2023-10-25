Class {
	#name : #MolGeoDownloadedRessource,
	#superclass : #Object,
	#instVars : [
		'downloadDirectory'
	],
	#category : #'Molecule-Geographical-Position-Example'
}

{ #category : #'as yet unclassified' }
MolGeoDownloadedRessource class >> ensureAllDownloaded [

	<script: 'self ensureAllDownloaded'>
	self allSubclassesDo: [ :each |
		each new
			downloadDirectory: self ressourcesDirectory;
			ensureDownloaded ]
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

	^ self subclassResponsibility
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
		downloadTo: self downloadDirectory ensureCreateDirectory;
		yourself.

	'
Download finished - ' trace ] timeToRun traceCr
]

{ #category : #testing }
MolGeoDownloadedRessource >> downloadDirectory [

	^ downloadDirectory
]

{ #category : #testing }
MolGeoDownloadedRessource >> downloadDirectory: aFileReference [

	downloadDirectory := aFileReference
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

	^ self downloadDirectory / self fileName
]

{ #category : #testing }
MolGeoDownloadedRessource >> isDownloaded [

	^ self fileReference exists
]
