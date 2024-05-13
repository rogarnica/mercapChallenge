Class {
	#name : 'NationalCall',
	#superclass : 'Call',
	#category : 'TelSystem',
	#package : 'TelSystem'
}

{ #category : 'method' }
NationalCall >> callBill [ 
	^self duration * 0.25
]
