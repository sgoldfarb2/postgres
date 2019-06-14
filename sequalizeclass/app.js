let db = require('./models')

db.user.findAll()
  .then((results) => {
    results.forEach(record => {
      console.log(record.id, record.firstName, record.lastName)
    })
  })
