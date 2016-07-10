require('es6-promise')

first()
	.then (result) ->
		return second result
	.then console.log
