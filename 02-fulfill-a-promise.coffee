require('es6-promise')

promise = new Promise (fulfill, reject) ->
	setTimeout ->
		fulfill 'FULFILLED!'
	, 300

promise.then console.log
