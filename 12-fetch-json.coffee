require 'es6-promise'
http = require 'q-io/http'

url = "http://localhost:1337"

http.read url
	.then (json) ->
		JSON.parse json
	.then console.log
	.catch console.error
	.done()
