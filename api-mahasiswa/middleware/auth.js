var connection = require("../config/database");
var mysql = require("mysql");
var bcrypt = require("bcrypt");
var salt = bcrypt.genSaltSync(10);
var jwt = require("jsonwebtoken");
var config = require("../config/secret");
var ip = require("ip");

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

// controller login
exports.login = (req, res) => {
  var post = {
    email: req.body.email,
    password: req.body.password,
  };

  var query = "SELECT * FROM ?? WHERE ?? = ?";
  var table = ["user", "email", post.email];

  query = mysql.format(query, table);
  connection.query(query, (error, rows) => {
    if (error) {
      return res.status(500).json({
        status: false,
        message: error.message,
      });
    } else {
      if (rows.length == 1) {
        var checkPassword = bcrypt.compareSync(post.password, rows[0].password);
        if (checkPassword) {
          // token
          var token = jwt.sign(
            {
              username: rows[0].username,
              email: rows[0].email,
              role: rows[0].role,
              tanggal_daftar: rows[0].tanggal_daftar,
            },
            config.secret,
            { expiresIn: 1440 }
          );

          //   data
          var data = {
            id_user: rows[0].id,
            access_token: token,
            ip_address: ip.address(),
          };

          //   insert to table access_token
          var query = "INSERT INTO ?? SET ?";
          var table = ["akses_token"];

          query = mysql.format(query, table);
          connection.query(query, data, (error, rows) => {
            if (error) {
              return res.status(500).json({
                status: false,
                message: error.message,
              });
            } else {
              return res.status(200).json({
                status: true,
                message: "JWT Generated",
                token: token,
              });
            }
          });
        } else {
          return res.status(200).json({
            status: true,
            message: "Email atau Password tidak sesuai",
          });
        }
      } else {
        return res.status(200).json({
          status: true,
          message: "Email atau Password tidak terdaftar",
        });
      }
    }
  });
};
