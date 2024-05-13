Class {
	#name : 'Call',
	#superclass : 'Object',
	#instVars : [
		'duration',
		'callFrom',
		'callTo',
		'date'
	],
	#category : 'TelSystem',
	#package : 'TelSystem'
}

{ #category : 'instance creation' }
Call class >> duration: aDuration callFrom: aCallFrom callTo: aCallTo date: aDate [
	| aCall |
	aCall := self new.
   aCall duration: aDuration .
   aCall callFrom: aCallFrom .
   aCall callTo: aCallTo .
   aCall date: aDate .
   ^ aCallFrom 
]

{ #category : 'method' }
Call >> callBill [
	self subclassResponsibility 
]

{ #category : 'accessing' }
Call >> callFrom [
^callFrom 
]

{ #category : 'accessing' }
Call >> callFrom: aCallFrom [
 callFrom := aCallFrom 
]

{ #category : 'accessing' }
Call >> callTo [
^callTo 
]

{ #category : 'accessing' }
Call >> callTo: aCallTo [
 callTo := aCallTo 
]

{ #category : 'accessing' }
Call >> date [
^date 
]

{ #category : 'accessing' }
Call >> date: aDate [
 date := aDate 
]

{ #category : 'accessing' }
Call >> duration [ 
^duration 
]

{ #category : 'accessing' }
Call >> duration: aDuration [
 duration := aDuration 
]
