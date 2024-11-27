const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send("Hello from aether-node-app-demo!");
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
