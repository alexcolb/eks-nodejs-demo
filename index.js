const express = require('express')
const app = express()

app.get('/', function (req, res) {
  const queries = Object.keys(req.query || {}).length;
  res.send(`Hello World! Received ${queries} query parameter(s).`)
})

app.listen(3000)
