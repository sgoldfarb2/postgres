'use strict';

module.exports = {
  up: (queryInterface, Sequelize) => {



    return queryInterface.bulkInsert('users', [{
      firstName: 'Alfie',
      lastName: 'Santos',
      email: 'as@gmail.com',
      createdAt: new Date(),
      updatedAt: new Date()
    },
    {
      firstName: 'Michael',
      lastName: 'Dao',
      email: 'md@gmail.com',
      createdAt: new Date(),
      updatedAt: new Date()
    },
    {
      firstName: 'Tarek',
      lastName: 'Beb',
      email: 'tb@gmail.com',
      createdAt: new Date(),
      updatedAt: new Date()
    }], {});

  },

  down: (queryInterface, Sequelize) => {


    return queryInterface.bulkDelete('users', null, {});

  }
};

