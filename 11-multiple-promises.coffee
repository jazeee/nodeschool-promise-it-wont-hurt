require('es6-promise')

all = (promise1, promise2) ->
	resolveCount = 0
	results = []
	promise = new Promise (fulfill, reject)->
		markAsResolved = (index, result)->
			resolveCount++
			results[index] = result
			if resolveCount == 2
				fulfill(results)

		promise1.then (result) ->
			markAsResolved 0, result
		promise2.then (result) ->
			markAsResolved 1, result

	promise

all(getPromise1(), getPromise2())
	.then console.log
	.catch console.error
