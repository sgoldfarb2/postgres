'use strict';
module.exports = (sequelize, DataTypes) => {
  const author = sequelize.define('author', {
    firstName: DataTypes.STRING,
    lastName: DataTypes.STRING,
    bio: DataTypes.STRING,
    headshot: DataTypes.STRING,
    email: DataTypes.STRING
  }, {});
  author.associate = function(models) {
    // associations can be defined here
  };
  return author;
};