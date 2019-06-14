'use strict';
module.exports = (sequelize, DataTypes) => {
  const category = sequelize.define('category', {
    categoryName: DataTypes.STRING,
    categoryDescription: DataTypes.STRING
  }, {});
  category.associate = function(models) {
    // associations can be defined here
  };
  return category;
};