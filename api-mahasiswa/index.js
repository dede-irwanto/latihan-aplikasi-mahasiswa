const express = require("express");
const app = express();
const port = 3001;

// import body parser
const bodyParser = require("body-parser");

// parse aplication/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }));

// parse aplication/json
app.use(bodyParser.json());

// import route mahasiswa
const mahasiswaRouter = require("./routes/mahasiswa");
app.use("/api/mahasiswa", mahasiswaRouter);

app.listen(port, () => {
  console.log(`app running at http://localhost:${port}`);
});
