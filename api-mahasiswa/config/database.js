let mysql = require("mysql");

let connection = mysql.createConnection({
  host: "localhost",
  user: "user_mahasiswa",
  password: "password_mahasiswa",
  database: "db_mahasiswa",
});

connection.connect((error) => {
  if (!!error) {
    console.log(error);
  } else {
    console.log("Connection Successfully!");
  }
});

module.exports = connection;
