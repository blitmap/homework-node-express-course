express = require 'express'
app     = express()

mockUserData = []

for i, v of 'Mark Jill'. split ' '
	mockUserData[i] = { name: v }

app.get '/users', (req, res) ->
	res.json
		success: true,
		message: 'successfully got users. Nice!',
		users:    mockUserData

app.listen 8000, ->
	console.log 'server is running'
