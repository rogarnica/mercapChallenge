Class {
	#name : 'Client',
	#superclass : 'Object',
	#instVars : [
		'name',
		'number',
		'payment',
		'calls'
	],
	#category : 'TelSystem',
	#package : 'TelSystem'
}

{ #category : 'instance creation' }
Client class >> name: aName number: aNumber payment: aPayment [
    | aClient |
    aClient := self new.
    aClient name: aName.
    aClient number: aNumber.
    aClient payment: aPayment.
    aClient calls: OrderedCollection new.
	 ^ aClient
]

{ #category : 'adding' }
Client >> addCall: aCall [
    calls add: aCall
]

{ #category : 'accessing' }
Client >> calls [
^calls 
]

{ #category : 'accessing' }
Client >> calls: aCollection [ 
	calls := aCollection
]

{ #category : 'accessing' }
Client >> name [
^name
]

{ #category : 'accessing' }
Client >> name: aName [
 name := aName 
]

{ #category : 'accessing' }
Client >> number [
^number 
]

{ #category : 'accessing' }
Client >> number: aNumber [
 number := aNumber 
]

{ #category : 'accessing' }
Client >> payment [
^payment 
]

{ #category : 'accessing' }
Client >> payment: aPayment [
 payment := aPayment 
]

{ #category : 'initialization' }
Client >> setPayment: newPayment [
	payment := newPayment 
]
