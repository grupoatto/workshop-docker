const express = require('express')
const Sequelize = require('sequelize')

const Pokemon = require('./pokemon')

const app = express()
const port = 3000
const host = 'workshop-api'

const connection = new Sequelize({
  dialect: 'postgres',
  host: 'workshop-db',
  username: 'docker',
  password: 'docker',
  port: 5432,
  database: 'docker'
})
Pokemon.init(connection)

app.get('/api/pokemons', async (_, res) => {
  const pokemons = await Pokemon.findAll()
  return res.json(pokemons)
})

app.listen(port, host, () => {
  console.log(`Application running on :${port}`)
})
