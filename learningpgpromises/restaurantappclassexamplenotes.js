// to keep things modular, we are going to have a db (database folder)
//now we can just require our db stuff in a database.js file, so we don't have to connect it individually to each of our routes
//everything we just did with our promises and database stuff will go in this database.js file (requiring blackbird and pg-promise, the init options and configurations, and since we need the rest of our application to see it, we need a module.export = db)
//in our routes, now we can just require our database.js file and use it in our entire app, instead of having to rewrite all of that code tons of times

//
