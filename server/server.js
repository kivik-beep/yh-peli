const express = require('express');
const app = express();
const path = require('path');

// Serve the index.html file
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, '../public', 'index.html'));
});

// Serve the game.html file
app.get('/game', (req, res) => {
  res.sendFile(path.join(__dirname, '../public', 'game.html'));
});

// Serve the end.html file
app.get('/end', (req, res) => {
  res.sendFile(path.join(__dirname, '../public', 'end.html'));
});

// Serve the static files
app.use(express.static(path.join(__dirname, '../public')));

// Start the server
const port = process.env.PORT || 4000;
app.listen(port, () => {
  console.log(`Server started on port ${port}`);
});
