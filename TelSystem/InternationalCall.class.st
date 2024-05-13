Class {
	#name : 'InternationalCall',
	#superclass : 'Call',
	#category : 'TelSystem',
	#package : 'TelSystem'
}

{ #category : 'method' }
InternationalCall >> callBill [ 
	|priceMinute|
	priceMinute := self callTo =1
		ifTrue: [ 0.35 ]
		ifFalse: [ 0.50 ].
		^self duration * priceMinute 
]
