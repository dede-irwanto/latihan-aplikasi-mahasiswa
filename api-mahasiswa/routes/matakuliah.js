const express = require("express");
const { body, validationResult } = require("express-validator");
const router = express.Router();

// import database
const connection = require("../config/database");

/**
 * GET MATAKULIAH
 */
router.get("/", (req, res) => {
  // query
  connection.query(
    "SELECT a.id_mahasiswa,a.nim,a.nama,a.jurusan,c.matakuliah,c.sks FROM mahasiswa a JOIN krs b ON a.id_mahasiswa=b.id_mahasiswa JOIN matakuliah c ON c.id_matakuliah=b.id_matakuliah ORDER by a.id_mahasiswa",
    (error, rows) => {
      if (error) {
        return res.status(500).json({
          status: false,
          message: "Internal Server Error",
        });
      } else {
        const hasil = rows.reduce((group, row) => {
          // tentukan key group
          if (group[row.nama]) {
            const nama = group[row.nama];
            if (Array.isArray(nama.matakuliah)) {
              nama.matakuliah.push(row.matakuliah);
            } else {
              nama.matakuliah = [nama.matakuliah, row.matakuliah];
            }
          } else {
            group[row.nama] = row;
          }
          return group;
        }, {});

        return res.status(200).json({
          status: true,
          message: "List Data Mahasiswa",
          data: hasil,
        });
      }
    }
  );
});
module.exports = router;
