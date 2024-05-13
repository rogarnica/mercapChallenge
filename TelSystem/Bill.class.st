Class {
	#name : 'Bill',
	#superclass : 'Object',
	#instVars : [
		'client',
		'calls'
	],
	#category : 'TelSystem',
	#package : 'TelSystem'
}

{ #category : 'instance creation' }
Bill class >> client: aClient [
	| aClient |
	aClient := self new.
	aClient client: aClient .
	aClient calls: OrderedCollection new.
	^ aClient
]

{ #category : 'adding' }
Bill >> addCall: aCall [
	calls add: aCall 
]

{ #category : 'accessing' }
Bill >> calls [ 
^calls 
]

{ #category : 'accessing' }
Bill >> calls: aCollection [ 
	calls := aCollection
]

{ #category : 'accessing' }
Bill >> client [
^client 
]

{ #category : 'accessing' }
Bill >> client: aClient [
	client := aClient 
]

{ #category : 'accessing' }
Bill >> clientName [
 ^client name
]

{ #category : 'accessing' }
Bill >> clientPayment [
 ^ client payment 
]

{ #category : 'as yet unclassified' }
Bill >> monthlyBill: aMonth [
	|total|
	total := 0.
	calls do: [ :call |
		total := total + (call callBill ).
		 ].
	^total 
]

{ #category : 'printing' }
Bill >> printMonthlyBill: anAmount month: aMonth [ 
	Transcript 
		show: 'Factura mensual ', aMonth, ': '; cr;
		show: 'Cliente: ', client clientName ; cr;
		show: 'Abono básico: $', client clientPayment asString; cr;
		show: 'Total llamadas: $', anAmount asString; cr;
		show: 'Total a pagar: $', (client clientPayment + anAmount) asString; cr.
]

{ #category : 'printing' }
Bill >> printMonthlyCalls: aMonth [
	Transcript show: 'Llamadas del mes de ', aMonth; cr.
        calls do: [ :call |
            Transcript show: call ; cr.
        ].

	
]
