const express = require("express");
const router = express.Router();

// import database
const connection = require("../config/database");

/**
 * INDEX MAHASISWA
 */
router.get("/", (req, res) => {
  // query
  connection.query(
    "SELECT * FROM mahasiswa ORDER BY id DESC",
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

module.exports = router;
