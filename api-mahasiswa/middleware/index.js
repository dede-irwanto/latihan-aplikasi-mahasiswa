const express = require("express");
var auth = require("./auth");
const verifikasi = require("./verifikasi");
var router = express.Router();

// registrasi
router.post("/register", auth.registrasi);

// login
router.post("/login", auth.login);

// alamat yg perlu otorisasi
router.get("/rahasia", verifikasi(), auth.halamanrahasia);

module.exports = router;
