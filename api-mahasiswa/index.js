const express = require("express");
const app = express();
const port = 3001;

// import body parser
const bodyParser = require("body-parser");

// parse aplication/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }));

// parse aplication/json
app.use(bodyParser.json());

// import auth
app.use("/auth", require("./middleware"));

// import route mahasiswa
const mahasiswaRouter = require("./routes/mahasiswa");
app.use("/api/mahasiswa", mahasiswaRouter);

// import router matakuliah
const mkRouter = require("./routes/matakuliah");
app.use("/api/matakuliah", mkRouter);

app.listen(port, () => {
  console.log(`app running at http://localhost:${port}`);
});
