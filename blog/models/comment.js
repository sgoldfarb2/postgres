'use strict';
module.exports = (sequelize, DataTypes) => {
  const comment = sequelize.define('comment', {
    commentTitle: DataTypes.STRING,
    commentBody: DataTypes.STRING,
    blogID: DataTypes.INTEGER,
    commenterName: DataTypes.STRING,
    commenterEmail: DataTypes.STRING
  }, {});
  comment.associate = function(models) {
    // associations can be defined here
  };
  return comment;
};