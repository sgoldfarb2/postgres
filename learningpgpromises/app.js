let express = require('express')
let app = express()

//bluebird is our promise library like axios or fetch
const promise = require('bluebird')

//step 1 configurations
let initOptions = {
  promiseLib: promise
}

//host, port, user, database pairs
let config = {
  host: 'localhost',
  port: 5432,
  database: 'testdbApril2019',
  user: 'postgres'
}

//load and initialize pg-promise
let pgp = require('pg-promise')(initOptions)

//create the database instance
let db = pgp(config)

//now in our SQL file we are going to create our database stuff...


//because we put in bluebird, we can use promises with this
// db.query('SELECT * FROM restaurants')
//   .then((results) => {
//     //the THEN in here is going to get the RESULTS from all the columns in our database, and what's being passed back is an array of objects
//     results.forEach((recordObj) => {
//       console.log(` id: ${recordObj.id} name: ${recordObj.name} category: ${recordObj.category}`)
//     })
//   })


// db.one('SELECT * FROM restaurants WHERE id = 1')
//   .then((result) => {
//     console.log(result.id, result.name, result.category)
//   })

// db.result("INSERT INTO restaurants VALUES(DEFAULT, 'Pad Thai', 1);")
//   .then((result) => {
//     console.log(result.rows);
//   })




//to sanitize our inputs and keep our table safe, we:
// let name = 'Big Belly Burger';
// let query = `INSERT INTO restaurants \
// VALUES (DEFAULT, $1)`;
// db.result(query, name)
//this protects against people running sql commands in your table, which can ruin your table or hack your table!



//you need to close your connection when you use pg-promise
//typically you put this in your server
let server = app.listen(3000, () => {
  console.log('App listening on port 3000!');
});
server.on('close', () => {
  pgp.end()
})
