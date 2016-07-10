require('es6-promise')

attachTitle = (param) -> "DR. #{param}"

promise = Promise.resolve "MANHATTAN"

promise
	.then attachTitle
	.then console.log
