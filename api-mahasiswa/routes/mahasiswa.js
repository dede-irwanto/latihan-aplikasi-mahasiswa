const express = require("express");
const { body, validationResult } = require("express-validator");
const router = express.Router();

// import database
const connection = require("../config/database");

/**
 * GET ALL MAHASISWA
 */
router.get("/", (req, res) => {
  // query
  connection.query(
    "SELECT * FROM mahasiswa ORDER BY id_mahasiswa DESC",
    (error, rows) => {
      if (error) {
        return res.status(500).json({
          status: false,
          message: "Internal Server Error",
        });
      } else {
        return res.status(200).json({
          status: true,
          message: "List Data Mahasiswa",
          data: rows,
        });
      }
    }
  );
});

/**
 * POST MAHASISWA
 */
router.post(
  "/store",
  [
    // validation
    body("nim").notEmpty(),
    body("nama").notEmpty(),
    body("jurusan").notEmpty(),
  ],
  (req, res) => {
    const errors = validationResult(req);

    if (!errors.isEmpty()) {
      return res.status(422).json({
        errors: errors.array(),
      });
    }

    // define formData
    let formData = {
      nim: req.body.nim,
      nama: req.body.nama,
      jurusan: req.body.jurusan,
    };

    // insert query
    connection.query("INSERT INTO mahasiswa SET ?", formData, (err, rows) => {
      // if error throw err
      if (err) {
        return res.status(500).json({
          status: false,
          message: "Internal Server Error",
        });
      } else {
        return res.status(200).json({
          status: true,
          message: "Insert Data Successfully",
          data: rows[0],
        });
      }
    });
  }
);
module.exports = router;
