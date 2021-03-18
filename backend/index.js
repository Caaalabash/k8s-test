const http = require('http')
const express = require('express')

const app = express()

app.use(express.json())
app.use(express.urlencoded({ extended: false }))
app.use('/simple-response', (req, res) => {
  return res.json({ data: 'hello' })
})

const server = http.createServer(app)
server.on('error', e => console.log(e))
server.on('listening', () => console.info(`App start on port 3000 ${process.env.NODE_ENV}`))
server.listen(3000)
