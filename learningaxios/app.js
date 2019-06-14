let axios = require('axios')

//these are the URLs to our API JSON information
let api_url1 = "https://jsonplaceholder.typicode.com/todos"
let api_url2 = "https://jsonplaceholder.typicode.com/albums"

//these are our 2 api calls/promises
let promise1 = axios.get(api_url1)
let promise2 = axios.get(api_url2)

//the array passed to thsi are all the promises that have to complete before we move on
Promise.all([promise1, promise2])
  .then((responses) => {
    console.log(responses[0])
    console.log(responses[1])

    return "successful"
  }).then((results) => {
    console.log(results)
  }).catch((errors) => {
    console.log(errors[0])
    console.log(errors[1])
  })
