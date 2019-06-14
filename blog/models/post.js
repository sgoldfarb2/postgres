'use strict';
module.exports = (sequelize, DataTypes) => {
  const post = sequelize.define('post', {
    postTitle: DataTypes.STRING,
    postAbstract: DataTypes.STRING,
    postBody: DataTypes.STRING,
    postHeroImage: DataTypes.STRING,
    postAuthor: DataTypes.INTEGER,
    postCategory: DataTypes.INTEGER,
    isPublished: DataTypes.BOOLEAN,
    publishDate: DataTypes.DATE
  }, {});
  post.associate = function (models) {
    // associations can be defined here

  };
  return post;
};
