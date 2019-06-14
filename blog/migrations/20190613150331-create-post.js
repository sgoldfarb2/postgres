'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('posts', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      postTitle: {
        type: Sequelize.STRING
      },
      postAbstract: {
        type: Sequelize.STRING
      },
      postBody: {
        type: Sequelize.STRING
      },
      postHeroImage: {
        type: Sequelize.STRING
      },
      postAuthor: {
        type: Sequelize.INTEGER
      },
      postCategory: {
        type: Sequelize.INTEGER
      },
      isFeatured: {
        type: Sequelize.BOOLEAN
      },
      isPublished: {
        type: Sequelize.BOOLEAN
      },
      publishDate: {
        type: Sequelize.DATE
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('posts');
  }
};
