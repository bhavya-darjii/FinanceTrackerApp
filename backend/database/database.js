// backend/database/database.js
const { Sequelize } = require('sequelize');

// Initialize SQLite database with Sequelize
const sequelize = new Sequelize({
  dialect: 'sqlite',
  storage: './database/finance_tracker.sqlite',
});

sequelize.authenticate()
  .then(() => console.log('Connected to SQLite Database'))
  .catch(error => console.error('Database connection error:', error));

module.exports = sequelize;
