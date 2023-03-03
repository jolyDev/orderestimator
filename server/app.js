const express = require('express')
const app = express()
const port = 3002

function getDefaults()
{
  const fs = require('fs');

  return fs.readFileSync('./data/estimate.json', 'utf8');
}

app.get('/', (req, res) => {
  res.send(getDefaults())
  console.log(req)
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})