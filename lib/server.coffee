express = require 'express'
app     = express()

mockUserData = []

for i, v of 'Mark Jill'. split ' '
	mockUserData[i] = { name: v }

app.use express.json()

app.get '/users', (req, res) ->
	res.json
		success: true,
		message: 'successfully got users. Nice!',
		users:    mockUserData

app.get '/users/:id', (req, res) ->
	console.log req.params.id

	res.json
		success: true,
		message: 'got one user',
		user:    req.params.id

app.post '/login', (req, res) ->
	{ username, password } = req.body

	mockUsername = "billyTheKid"
	mockPassword = "superSecret"

	if ((username is mockUsername) and (password is mockPassword))
		res.json
			success: true,
			message: 'password and username match!',
			token:   'encrypted token goes here'
	else
		res.json
			success: false,
			message: 'password and username do not match'

app.listen 8000, ->
	console.log 'server is running'
