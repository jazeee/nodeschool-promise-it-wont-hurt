require 'es6-promise'
http = require 'q-io/http'

userIdUrl = "http://localhost:7000"
databaseUrl = "http://localhost:7001"

http.read userIdUrl
	.then (userId) ->
		http.read "#{databaseUrl}/#{userId}"
	.then JSON.parse
	.then console.log
	.catch console.error
	.done()
