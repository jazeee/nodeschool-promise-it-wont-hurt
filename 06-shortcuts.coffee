require('es6-promise')

promise = new Promise (fulfill, reject) ->
	fulfill 'I FIRED'
	reject new Error 'I DID NOT FIRE'

onReject = (error) ->
	console.log error.message

promise.then(console.log)
	.catch onReject
