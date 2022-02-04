var connection = require("../config/database");
var mysql = require("mysql");
var bcrypt = require("bcrypt");
var salt = bcrypt.genSaltSync(10);

// controller registrasi
exports.registrasi = (req, res) => {
  var post = {
    username: req.body.username,
    email: req.body.email,
    password: bcrypt.hashSync(req.body.password, salt),
    role: req.body.role,
    tanggal_daftar: new Date(),
  };

  var query = "SELECT email FROM ?? WHERE ?? = ?";
  var table = ["user", "email", post.email];
  query = mysql.format(query, table);

  connection.query(query, (error, rows) => {
    if (error) {
      return res.status(500).json({
        status: false,
        message: error.message,
      });
    } else {
      if (rows.length == 0) {
        var query = "INSERT INTO ?? SET ?";
        var table = ["user"];
        query = mysql.format(query, table);
        connection.query(query, post, (error, rows) => {
          if (error) {
            return res.status(500).json({
              status: false,
              message: error.message,
            });
          } else {
            return res.status(200).json({
              status: true,
              message: "Berhasil menambahkan user baru",
            });
          }
        });
      } else {
        return res.status(200).json({
          status: true,
          message: "Email sudah terdaftar!",
        });
      }
    }
  });
};
