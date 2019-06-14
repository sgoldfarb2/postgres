let express = require('express');
let router = express.Router();
let db = require('../models');
let bodyParser = require('body-parser');

router.get('/featuredArticle', (req, res) => {

  // Find most recent featured articles
  db.post.findAll()
    .then((results) => {
      // var r = results[0];
      // console.log(r.id, r.postTitle, r.postAbstract, r.postBody, r.postHeroImage, r.postAuthor, r.postCategory, r.isFeatured, r.isPublished, r.publishDate, r.createdAt, r.updatedAt);
      res.render('./partials/featuredArticle', {
        articles: results
      })
    })
    .catch((error) => {
      res.send('We\'ve encounted an error:', error)
    })
})

router.use(bodyParser.urlencoded({ extended: false }))
// router.post('/index', (req, res)=>{

//     let articleTitle = req.body.postTitle;
//     let articleAbstract = req.body.postAbstract;
//     let articleBody = req.body.postBody;
//     let articleHeroImage = req.body.postHeroImage;
//     let articleCategory = req.body.postCategoryID;
//     let articleAuthor = req.body.postAuthorID;
//     let articleCreatedDate = req.body.createdAt;
//     let articleUpdatedDate = req.body.updatedAt;

// })



module.exports = router;
