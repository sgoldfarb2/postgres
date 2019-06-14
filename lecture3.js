//promises
//a promise is an object that may produce a single value sometime in the future
//a promise has three states:
//pending
//fulfilled
//rejected

//promises are used in fetch statements, jquery, etc. and now we are going to be using them again

let myPromise = new Promise((resolve, reject) => {
  setTimeout(() => {
    let i = 45

    console.log(`inside our set timeout`);

    if (i === 45) {
      resolve('this function was successful')
    } else {
      reject('there was an error')
    }
  }, 2000)
}).catch((error) => {
  console.log(error);
})
myPromise.then((response) => {
  console.log(response)
  //the response should be the resolve from above
  return ('hello world')
}).then((response2) => {
  //this console log is coming from our return statement above
  console.log(response2)
})

//if you put resolve in front of something, it goes to the next block, if you use reject, it goes into the catch block


//chaining promises
//we can force synchronous behavior by chaining .then statements

//axios
//same as fetch and $.get, all depends on what your job uses or what you prefer

