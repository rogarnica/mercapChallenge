Class {
	#name : 'LocalCall',
	#superclass : 'Call',
	#category : 'TelSystem',
	#package : 'TelSystem'
}

{ #category : 'method' }
LocalCall >> callBill [ 
	|priceMinute priceCall|
	priceMinute := self seeTimeSlot 
		ifTrue: [ self isBusinessDay
			ifTrue: [ 0.20 ]
			ifFalse: [ 0.10 ] ]
		ifFalse: [ 0.10 ].
	priceCall := self duration * priceMinute .
	^priceCall
]

{ #category : 'testing' }
LocalCall >> isBusinessDay [

	^ self date weekday between: 2 and: 6
]

{ #category : 'method' }
LocalCall >> seeTimeSlot [
	|hour|
	hour := self date hour.
	^hour >=8 and: [ hour < 20 ]
]
