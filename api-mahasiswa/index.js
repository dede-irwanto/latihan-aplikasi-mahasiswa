const express = require("express");
const app = express();
const port = 3001;

// import route mahasiswa
const mahasiswaRouter = require("./routes/mahasiswa");
app.use("/api/mahasiswa", mahasiswaRouter);

app.listen(port, () => {
  console.log(`app running at http://localhost:${port}`);
});
