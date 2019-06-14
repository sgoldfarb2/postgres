let express = require('express')
let app = express()
let port = 3333

//ejs/view engine and views folder
app.set('view engine', 'ejs')
app.set('views', 'views')

//set up public folder
app.use(express.static('public'))

//routes
app.use(require('./routes/index'))
app.use(require('./routes/featuredArticle'))
// app.use(require('./routes/newArticle'))
// app.use(require('./routes/newCategory'))
// app.use(require('./routes/newAuthor'))


//listen
app.listen(port, () => {
  console.log('App listening on port', port);
});
