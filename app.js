const express = require('express');
const app = express();
const path = require('path');

// Define the path to your static files
const publicPath = path.join(__dirname, 'public');
app.use(express.static(publicPath));

// Define routes
app.get('/', (req, res) => {
  res.sendFile(path.join(publicPath, 'index.html'));
});

// Start the server
const port = 3000;
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});

