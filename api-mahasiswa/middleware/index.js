const express = require("express");
var auth = require("./auth");
var router = express.Router();

// registrasi
router.post("/register", auth.registrasi);

module.exports = router;
