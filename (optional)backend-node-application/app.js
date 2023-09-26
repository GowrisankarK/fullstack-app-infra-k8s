const express = require('express')
const app = express()
const port = 8080

app.get('/health', (req, res) => {
  res.send('health check success')
})

app.get('/readiness', (req, res) => {
    res.send('readiness check success')
  })

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})