const express = require("express");
const StatusCodes = require("http-status-codes");

const app = express();

app.get("/", (req, res) => {
  res.send(StatusCodes.OK);
});

app.get("/error", (req, res) => {
  res.send(StatusCodes.NOT_FOUND);
});

app.listen(3000, () => {
  console.log("Server started on port 3000");
});
