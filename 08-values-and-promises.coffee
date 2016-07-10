require('es6-promise')

attachTitle = (name) -> "DR. #{name}"

promise = Promise.resolve "MANHATTAN"

promise
	.then attachTitle
	.then console.log
