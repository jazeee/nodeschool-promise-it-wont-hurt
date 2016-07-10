require('es6-promise')

promise = new Promise (fulfill, reject) ->
	setTimeout ->
		reject new Error 'REJECTED!'
	, 300

onReject = (error) ->
	console.log error.message

promise.then(console.log, onReject)
