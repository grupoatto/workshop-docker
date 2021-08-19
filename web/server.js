const express = require('express')
const rateLimit = require('express-rate-limit')
const path = require('path')

const app = express()
app.use(
  rateLimit({
    windowMs: 15 * 60 * 1000,
    max: 150,
  }),
)
app.use(express.static(path.join(__dirname, 'build')))
app.get('*', (_, res) => {
  res.sendFile(path.join(__dirname, 'build', 'index.html'))
})

const port = 3000
const host = 'workshop-web'

app.listen(port, host, () => {
  console.log(`Application running on :${port}`)
})
