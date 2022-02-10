const jwt = require("jsonwebtoken");
const config = require("../config/secret");

const verifikasi = () => {
  return (req, res, next) => {
    //   cek authorization header
    var bearerToken = req.headers.authorization;

    if (bearerToken) {
      var token = bearerToken.split(" ")[1];

      //   verifikasi
      jwt.verify(token, config.secret, (err, decoded) => {
        if (err) {
          return res.status(401).send({
            auth: false,
            message: "Token tidak terdaftar",
          });
        } else {
          //   get user role
          var role = Buffer.from(token.split(".")[1], "base64")
            .toString("utf8")
            .split(",")[2]
            .split(":")[1];

          if (role == 2) {
            req.auth = decoded;
            next();
          } else {
            return res.status(401).send({
              auth: false,
              message: "Gagal mengotorisasi role anda",
            });
          }
        }
      });
    } else {
      return res.status(401).send({
        auth: false,
        message: "Token tidak tersedia",
      });
    }
  };
};

module.exports = verifikasi;
