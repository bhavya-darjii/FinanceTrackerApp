// backend/server.js
const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const app = express();

// Import database and models
const sequelize = require('./database/database');
const Transaction = require('./models/Transaction');
const Budget = require('./models/Budget');

// Middleware
app.use(cors());
app.use(bodyParser.json());

// Sample Route for Testing
app.get('/', (req, res) => {
  res.send('Finance Tracker Backend is Running!');
});

// Sync tables with the database
sequelize.sync()
  .then(() => console.log('Database tables created successfully'))
  .catch(error => console.error('Error syncing database:', error));

// Start the Server
const PORT = 3000;
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
