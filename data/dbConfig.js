const knex = require('knex')

const config = require('../knexfile.js')

module.export = knex(config.development)
