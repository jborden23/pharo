accessing
keyAtValue: value ifAbsent: exceptionBlock
	"Answer the key that is the external name for the argument, value. If 
	there is none, answer the result of evaluating exceptionBlock.
	: Use =, not ==, so stings like 'this' can be found.  Note that MethodDictionary continues to use == so it will be fast."
	
	| index |
	index := (values indexOf: value).
	index = 0 
		ifTrue: [ ^ exceptionBlock value].
		
	^ keys at: index.

