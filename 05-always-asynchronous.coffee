require('es6-promise')

promise = new Promise (fulfill, reject) ->
	fulfill 'PROMISE VALUE'

promise.then(console.log)
console.log "MAIN PROGRAM"
