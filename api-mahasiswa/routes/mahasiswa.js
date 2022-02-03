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

/**
 * GET MAHASISWA BY ID
 */
router.get("/:id", (req, res) => {
  let id = req.params.id;

  // query
  connection.query(
    `SELECT * FROM mahasiswa WHERE id_mahasiswa = ${id}`,
    (err, rows) => {
      if (err) {
        return res.status(500).json({
          status: false,
          message: "Internal Server Error",
        });
      }

      // if post not found
      if (rows.length <= 0) {
        return res.status(404).json({
          status: false,
          message: "Data Mahasiswa Not Found",
        });
      } else {
        return res.status(200).json({
          status: true,
          message: "Detail Data Mahasiswa",
          data: rows[0],
        });
      }
    }
  );
});

/**
 * UPDATE MAHASISWA
 */
router.patch(
  "/update/:id",
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

    // id mahasiswa
    let id = req.params.id;

    // data mahasiswa
    let formData = {
      nim: req.body.nim,
      nama: req.body.nama,
      jurusan: req.body.jurusan,
    };

    // update query
    connection.query(
      `UPDATE mahasiswa SET ? WHERE id_mahasiswa = ${id}`,
      formData,
      (err, rows) => {
        // if error throw err
        if (err) {
          return res.status(500).json({
            status: false,
            message: "Internanl Server Error",
          });
        }

        if (rows.length <= 0) {
          return res.status(404).json({
            status: false,
            message: "Data Mahasiswa Not Found",
          });
        } else {
          return res.status(200).json({
            status: true,
            message: "Update Data Successfully",
          });
        }
      }
    );
  }
);

/**
 * DELETE MAHASISWA
 */
router.delete("/delete/:id", (req, res) => {
  let id = req.params.id;

  // delete query
  connection.query(
    `DELETE FROM mahasiswa WHERE id_mahasiswa = ${id}`,
    (err, rows) => {
      // if error throw err
      if (err) {
        return res.status(500).json({
          status: false,
          message: "Internal Server Error",
        });
      } else {
        return res.status(200).json({
          status: true,
          message: "Delete Mahasiswa Successfully",
        });
      }
    }
  );
});
module.exports = router;
