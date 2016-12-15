-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2016 at 09:40 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `puskesmas_sumbersari`
--

-- --------------------------------------------------------

--
-- Table structure for table `anamnesa`
--

CREATE TABLE `anamnesa` (
  `idAnamnes` int(11) NOT NULL,
  `riwayat_penyakit` varchar(255) DEFAULT NULL,
  `keadaan_umum` varchar(255) DEFAULT NULL,
  `tinggi_badan` int(11) DEFAULT NULL,
  `berat_badan` int(11) DEFAULT NULL,
  `keadaan_sakit` varchar(255) DEFAULT NULL,
  `nyeri` varchar(255) DEFAULT NULL,
  `pernapasan` varchar(255) DEFAULT NULL,
  `tensi` int(11) DEFAULT NULL,
  `suhu` int(11) DEFAULT NULL,
  `nadi` varchar(255) DEFAULT NULL,
  `RR` varchar(255) DEFAULT NULL,
  `keadaan_gizi` varchar(255) DEFAULT NULL,
  `idPendaftaran` int(11) NOT NULL,
  `keluhan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bpjs`
--

CREATE TABLE `bpjs` (
  `idBPJS` int(11) NOT NULL,
  `idPasien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bpjs`
--

INSERT INTO `bpjs` (`idBPJS`, `idPasien`) VALUES
(1, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ceklab`
--

CREATE TABLE `ceklab` (
  `id_cekLab` int(11) NOT NULL,
  `RujukanDariPoli` varchar(255) NOT NULL,
  `Tgl_cekLab` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idPegawai` int(11) NOT NULL,
  `idRawatJalan` int(11) NOT NULL,
  `volume` double DEFAULT NULL,
  `warna` varchar(10) DEFAULT NULL,
  `beratjenis` double DEFAULT NULL,
  `bau` varchar(10) DEFAULT NULL,
  `pH` double DEFAULT NULL,
  `leukosit` double DEFAULT NULL,
  `silinder` double DEFAULT NULL,
  `kristal` double DEFAULT NULL,
  `epitel` double DEFAULT NULL,
  `eritrosit` double DEFAULT NULL,
  `hemoglobin` double DEFAULT NULL,
  `hematrokit` double DEFAULT NULL,
  `basofil` double DEFAULT NULL,
  `eosinofil` double DEFAULT NULL,
  `limfosit` double DEFAULT NULL,
  `trombosit` double DEFAULT NULL,
  `hasilceklab` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ceklab`
--

INSERT INTO `ceklab` (`id_cekLab`, `RujukanDariPoli`, `Tgl_cekLab`, `idPegawai`, `idRawatJalan`, `volume`, `warna`, `beratjenis`, `bau`, `pH`, `leukosit`, `silinder`, `kristal`, `epitel`, `eritrosit`, `hemoglobin`, `hematrokit`, `basofil`, `eosinofil`, `limfosit`, `trombosit`, `hasilceklab`) VALUES
(4, '3', '2016-11-27 17:00:00', 1, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'g'),
(5, '3', '2016-11-28 17:00:00', 1, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fghjklxcvbnm,.fghjklxcvbhnjmkcvgbhnjk'),
(6, '3', '2016-11-28 17:00:00', 3, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vbnm,');

-- --------------------------------------------------------

--
-- Table structure for table `daftarkk`
--

CREATE TABLE `daftarkk` (
  `idKK` int(11) NOT NULL,
  `nama_kk` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftarkk`
--

INSERT INTO `daftarkk` (`idKK`, `nama_kk`) VALUES
(1, 'Angga Dwi H.'),
(2, 'Tri Wicaksono'),
(3, 'Selvia'),
(4, 'Diyah'),
(5, 'Tio S'),
(6, 'Adi Cahyo'),
(7, 'Saiful'),
(9, 'Ari Wibawa'),
(10, 'Bustomy'),
(11, 'Justinsaja'),
(12, 'Gigihku'),
(13, 'hasyim'),
(14, 'benny'),
(15, 'Adjie');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_pasien_baru`
--

CREATE TABLE `daftar_pasien_baru` (
  `idPasien` int(11) NOT NULL,
  `nama_pasien` varchar(25) NOT NULL,
  `idKK` int(11) NOT NULL,
  `jns_kelamin` varchar(2) NOT NULL,
  `nik_ktp` varchar(15) NOT NULL,
  `Tgl_lahir` date NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `No_jkn` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_pasien_baru`
--

INSERT INTO `daftar_pasien_baru` (`idPasien`, `nama_pasien`, `idKK`, `jns_kelamin`, `nik_ktp`, `Tgl_lahir`, `pekerjaan`, `alamat`, `No_jkn`) VALUES
(1, 'Antonius', 1, 'L', '00352736471', '2016-11-02', 'Mengaji', 'Perumahan', '123456'),
(2, 'nilam', 1, 'P', '44444', '2016-11-03', 'PNS', 'Dirumah', '34344'),
(3, 'Noni', 2, 'P', '5555', '2016-11-01', 'Swasta', 'Himalay', '2323'),
(4, 'sutarjo', 3, 'L', '00362836', '2016-11-01', 'TK', 'Perumahan Taman Gading', '6573647'),
(5, 'Rudi', 4, 'L', '13445344', '2006-11-01', 'Mengaji', 'Ajung Jember', '231233'),
(6, 'mita', 5, 'P', '33345', '2016-11-03', 'Pelajar', 'Perumahan Puri Nirwana', '89898'),
(7, 'Andita', 6, 'L', '910848', '2016-11-01', 'PNS', 'Jalan MH. Thamrin', '342211'),
(9, 'Sulistyo', 9, 'P', '', '2016-11-15', '', 'Krajan Barat 5', '90182'),
(10, 'Juwita', 10, 'P', '45566', '2016-11-02', 'swasta', 'Rumah', '2184728'),
(11, 'Selfie', 11, 'P', '', '2006-11-01', '', 'iya dah', '123455'),
(12, 'Gigih', 12, 'L', '123124', '2016-11-01', 'swasta', 'Jln......', '19273126'),
(13, 'Linda', 1, 'P', '2412341', '2016-11-01', 'swasta', 'Panggawean 5', '8349'),
(14, 'dimas', 13, 'L', '', '2016-11-02', 'Pelajar', 'ya', '1098'),
(15, 'huda', 14, 'L', '65765', '2016-05-10', 'Mahasiiswa', 'jalan jalan', '97878'),
(16, 'Ani', 15, 'P', '4324', '2016-12-01', 'Rumah Tangga', 'Jalan', '123455');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `idObat` int(11) NOT NULL,
  `catatan_apoteker` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`idObat`, `catatan_apoteker`) VALUES
(1, 'paracetamol 3x1 sehari ada'),
(2, 'Pencuci mata 2x1 sehari ada'),
(3, 'Paracetamol 3x1 sehari ada'),
(4, 'Paracetamol 3x1');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `idPegawai` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `namaPegawai` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `jenisKelamin` varchar(2) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `upload` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`idPegawai`, `level`, `namaPegawai`, `alamat`, `telepon`, `jenisKelamin`, `username`, `password`, `upload`, `status`, `remember_token`) VALUES
(7, 1, 'Angga Dwi Hariadi', 'jember', '08223121341', 'l', 'anggaloket', '$2y$10$V0U4wHKaglJNbczW/UuY1.thKhyd6q2cMzTXMGc.XCGQE61bajMWy', NULL, 'aktif', 'vDD7PbdpoXv2VXMytLOBrwaV9yvvhfud5rMUAbvOiRRw3xdquxbE3v7Eaay3'),
(8, 4, 'Juwita', 'jember', '2134132', 'P', 'juwitarujuk', '$2y$10$woysx5h0W0VILNr3bKO.9us9aqlC09EJVLX0KZYwAMRTN9ovl/CJe', NULL, 'aktif', 'mZ5gBNcYyEOI1Vzd9XfrnCUW44f9xJypzJxBr081dNB501rtE8ClhHRHCzul');

-- --------------------------------------------------------

--
-- Table structure for table `pegawaia`
--

CREATE TABLE `pegawaia` (
  `idPegawai` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `poli`
--

CREATE TABLE `poli` (
  `idPoli` int(11) NOT NULL,
  `nama_poli` varchar(25) NOT NULL,
  `idPegawai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poli`
--

INSERT INTO `poli` (`idPoli`, `nama_poli`, `idPegawai`) VALUES
(1, 'KIA', NULL),
(2, 'Gigi', NULL),
(3, 'Umum', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ranjang`
--

CREATE TABLE `ranjang` (
  `idRanjang` int(11) NOT NULL,
  `idRuang` int(11) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resep`
--

CREATE TABLE `resep` (
  `idResep` int(11) NOT NULL,
  `idObat` int(11) DEFAULT NULL,
  `resep_dokter` text NOT NULL,
  `Status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resep`
--

INSERT INTO `resep` (`idResep`, `idObat`, `resep_dokter`, `Status`) VALUES
(2, NULL, 'paracetamol 3x1 sehari', 'pengajuan'),
(3, 1, 'paracetamol 3x1 sehari', 'terambil'),
(4, 2, 'Pencuci mata 2x1 sehari', 'terambil'),
(5, NULL, 'promag', 'pengajuan'),
(6, 3, 'Paracetamol 3x1 sehari', 'terambil'),
(7, 4, 'Paracetamol 3x1', 'terambil');

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `idRuang` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga_malam` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ruanglevel`
--

CREATE TABLE `ruanglevel` (
  `ruang_level` int(11) NOT NULL,
  `nama_bagian` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rujukan`
--

CREATE TABLE `rujukan` (
  `idRujuk` int(11) NOT NULL,
  `idTidakan` int(11) DEFAULT NULL,
  `idPasien` int(11) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `idPegawai` int(11) DEFAULT NULL,
  `nama_RS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rujukan`
--

INSERT INTO `rujukan` (`idRujuk`, `idTidakan`, `idPasien`, `tanggal`, `idPegawai`, `nama_RS`) VALUES
(1, 2, 3, '2016-11-06', NULL, 'dr. Soebandi'),
(2, 2, 7, '2016-11-29', NULL, 'dr. Soebandi'),
(8, 2, 6, '2016-11-29', NULL, 'Bina Sehat'),
(9, 2, 5, '2016-11-29', NULL, 'Bina Sehat'),
(10, 2, 3, '2016-12-15', NULL, 'Bina Sehat');

-- --------------------------------------------------------

--
-- Table structure for table `r_inap`
--

CREATE TABLE `r_inap` (
  `idRawatInap` int(11) NOT NULL,
  `cara_penerima` varchar(255) NOT NULL,
  `dikirim_oleh` varchar(255) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `tgl_keluar` date DEFAULT NULL,
  `idRuang` int(11) NOT NULL,
  `idRanjang` int(11) NOT NULL,
  `diagnosa_masuk` varchar(255) NOT NULL,
  `diagnosa_keluar` varchar(255) DEFAULT NULL,
  `lama_rawat` int(11) DEFAULT NULL,
  `keadaan_keluar` varchar(255) DEFAULT NULL,
  `idPegawai` int(11) DEFAULT NULL,
  `cara_keluar` varchar(255) DEFAULT NULL,
  `tindakan` text NOT NULL,
  `idRawatJalan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `r_jalan`
--

CREATE TABLE `r_jalan` (
  `idRawatJalan` int(11) NOT NULL,
  `idPoli` int(11) NOT NULL,
  `idPasien` int(11) NOT NULL,
  `keluhan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `keadaan_umum` varchar(255) DEFAULT NULL,
  `tinggi_badan` int(11) DEFAULT NULL,
  `berat_badan` int(11) DEFAULT NULL,
  `keadaan_sakit` varchar(255) DEFAULT NULL,
  `keadaan_gizi` varchar(255) DEFAULT NULL,
  `nyeri` varchar(255) DEFAULT NULL,
  `pernapasan` varchar(255) DEFAULT NULL,
  `tensi` int(11) DEFAULT NULL,
  `suhu` int(11) DEFAULT NULL,
  `nadi` varchar(255) DEFAULT NULL,
  `RR` varchar(255) DEFAULT NULL,
  `StatusAnamnesa` varchar(12) DEFAULT NULL,
  `kulit` varchar(50) DEFAULT NULL,
  `mata` varchar(50) DEFAULT NULL,
  `telinga` varchar(50) DEFAULT NULL,
  `hidung` varchar(50) DEFAULT NULL,
  `mulut` varchar(50) DEFAULT NULL,
  `leher` varchar(50) DEFAULT NULL,
  `pipi` varchar(50) DEFAULT NULL,
  `bibir` varchar(50) DEFAULT NULL,
  `lymphe` varchar(50) DEFAULT NULL,
  `langit_langit` varchar(50) DEFAULT NULL,
  `dasar_mulut` varchar(50) DEFAULT NULL,
  `umur_kandungan` varchar(50) DEFAULT NULL,
  `diagnosa` varchar(255) DEFAULT NULL,
  `idResep` int(11) DEFAULT NULL,
  `idTidakan` int(11) DEFAULT NULL,
  `jenisceklab` enum('urin','darah','urin dan darah','') DEFAULT NULL,
  `StatusPelayanan` varchar(10) NOT NULL,
  `StatusRujukan` varchar(10) DEFAULT NULL,
  `statusceklab` varchar(10) DEFAULT NULL,
  `statusrawatinap` varchar(10) DEFAULT NULL,
  `statuscekgizi` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_jalan`
--

INSERT INTO `r_jalan` (`idRawatJalan`, `idPoli`, `idPasien`, `keluhan`, `tanggal`, `keadaan_umum`, `tinggi_badan`, `berat_badan`, `keadaan_sakit`, `keadaan_gizi`, `nyeri`, `pernapasan`, `tensi`, `suhu`, `nadi`, `RR`, `StatusAnamnesa`, `kulit`, `mata`, `telinga`, `hidung`, `mulut`, `leher`, `pipi`, `bibir`, `lymphe`, `langit_langit`, `dasar_mulut`, `umur_kandungan`, `diagnosa`, `idResep`, `idTidakan`, `jenisceklab`, `StatusPelayanan`, `StatusRujukan`, `statusceklab`, `statusrawatinap`, `statuscekgizi`) VALUES
(1, 3, 1, 'Sakit di perut', '2016-11-28', '', 0, 0, '', '', '', '', 0, 0, '', '', 'sudah', 'Baik', 'Menguning', 'Baik', 'Baik', 'Baik', 'Baik', NULL, NULL, NULL, NULL, NULL, NULL, 'Terkena tifus', NULL, 1, NULL, 'sudah', '', NULL, NULL, NULL),
(3, 3, 4, 'Bengkak di kaki', '2016-11-28', '', 0, 0, '', '', '', '', 0, 0, '', '', 'sudah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'belum', '', NULL, NULL, NULL),
(4, 2, 7, 'Gigi ngilu', '2016-11-28', '', 0, 0, '', '', '', '', 0, 0, '', '', 'sudah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'belum', '', NULL, NULL, NULL),
(5, 3, 10, 'Sakit Pinggang', '2016-11-28', '', 0, 0, '', '', '', '', 0, 0, '', '', 'sudah', 'baik', 'baik', 'baik', 'baik', 'baik', 'baik', NULL, NULL, NULL, NULL, NULL, NULL, 'baik', NULL, 3, NULL, 'sudah', '', NULL, 'belum', NULL),
(7, 1, 11, 'mens telat', '2016-11-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sudah', 'Baik', 'Baik', 'Baik', 'baik', 'Baik', 'Baik', NULL, NULL, NULL, NULL, NULL, NULL, 'okesaja rujuk', NULL, 2, NULL, 'sudah', 'pengajuan', NULL, NULL, NULL),
(8, 3, 12, 'sakit kepala', '2016-11-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sudah', 'Baik', 'Baik', 'Baik', 'Baik', 'Putih putih', 'baik', NULL, NULL, NULL, NULL, NULL, NULL, 'Pusing kurang istirahat', NULL, 2, NULL, 'sudah', 'pengajuan', NULL, NULL, NULL),
(9, 3, 3, 'Batuk pilek', '2016-11-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sudah', 'baik', 'baik', 'baik', 'baik', 'putih', 'baik', NULL, NULL, NULL, NULL, NULL, NULL, 'Perlu istirahat dan obat', 2, 1, NULL, 'sudah', NULL, NULL, NULL, NULL),
(10, 3, 14, 'Sering Mengantuk', '2016-11-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sudah', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik', 'Baik', NULL, NULL, NULL, NULL, NULL, NULL, 'kurang bubuk', 3, 1, NULL, 'sudah', NULL, NULL, NULL, NULL),
(13, 3, 3, 'oke', '2016-11-28', '1', 1, 1, '1', '1', '1', '1', 1, 1, '11', '1', 'sudah', 'baik', 'baik', 'baik', 'baik', 'baik', 'baik', NULL, NULL, NULL, NULL, NULL, NULL, 'tenggorokan', NULL, 4, NULL, 'sudah', NULL, 'sudah', NULL, NULL),
(14, 3, 7, 'sakit kepala', '2016-11-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sudah', 'baik', 'biak', 'biak', 'baik', 'baik', 'baik', NULL, NULL, NULL, NULL, NULL, NULL, 'Belum Terdeteksi', NULL, 2, NULL, 'sudah', 'sudah', NULL, NULL, NULL),
(15, 3, 6, 'Mual', '2016-11-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sudah', 'a', 'a', 'a', 'a', 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, 'mual terus, muntaber', NULL, 2, NULL, 'sudah', 'sudah', NULL, NULL, NULL),
(16, 3, 9, 'Mata Sakit', '2016-11-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sudah', 'Baik', 'bIakb', 'Baik', 'Baik', 'Baik', 'biak', NULL, NULL, NULL, NULL, NULL, NULL, 'iyah', 4, 1, NULL, 'sudah', NULL, NULL, NULL, NULL),
(17, 3, 9, 'sakit mata', '2016-11-29', 'sehat', 7, 7, 'fghjkl', 'fghjkl', 'fghjk', 'ghjkl', 30, 29, 'ghjkl;', 'vbnm', 'sudah', 'baik', 'baik', 'baik', 'baik', 'baik', 'baik', NULL, NULL, NULL, NULL, NULL, NULL, 'Makan perlu', NULL, 4, NULL, 'sudah', NULL, 'sudah', NULL, NULL),
(18, 3, 3, 'mutah darah', '2016-11-29', 'pucat', 180, 70, 'tenggorokan', 'normal', 'parah', 'normal', 180, 30, 'normal', 'mollayo', 'sudah', 'pucat', 'kuning', 'hitam', 'Baik', 'normal', 'normal', NULL, NULL, NULL, NULL, NULL, NULL, 'menderita mutaber', 5, 3, NULL, 'sudah', NULL, NULL, NULL, NULL),
(19, 3, 15, 'sakit kepala', '2016-11-29', 'pucat', 170, 60, 'parah', 'norma', 'normal', 'tidak normal', 180, 30, 'normal', 'fghj', 'sudah', 'a', 'a', 'a', 'a', 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, 'a', NULL, 4, NULL, 'sudah', NULL, 'sudah', NULL, NULL),
(20, 3, 5, 'ds', '2016-11-29', 'fghjk', 6, 7, 'ghjk', 'bhnm', 'bnm', 'vbnm', 7, 8, 'vbnm', 'ghjk', 'sudah', 'a', 'a', 'a', 'a', 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, 'a', NULL, 2, NULL, 'sudah', 'sudah', NULL, NULL, NULL),
(21, 3, 6, 'Gigi ngilu', '2016-11-29', 'normal', 7, 7, 'fghjk', 'ghj', 'fffffghj', 'fghjk', 7, 8, 'ghj', 'ghj', 'sudah', 'a', 'a', 'a', 'a', 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, 'a', 6, 1, NULL, 'sudah', NULL, NULL, NULL, NULL),
(22, 3, 3, 'Sakit di perut', '2016-12-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sudah', 'baik', 'baik', 'baik', 'baik', 'baik', 'baik', NULL, NULL, NULL, NULL, NULL, NULL, 'Perlu cek Lab', NULL, 4, 'urin', 'sudah', NULL, 'belum', NULL, NULL),
(23, 3, 13, 'sakit hati', '2016-12-14', 'xdcfvgbh', 56, 5, 'fg', 'fgh', 'ty', 'f', 7, 7, 'dfgh', 'fghjk', 'sudah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'belum', NULL, NULL, NULL, NULL),
(24, 3, 4, 'Sakit di perut', '2016-12-15', 'r', 45, 45, 'r', 'r', 'r', 'r', 4, 2, 'ert', 'rtyu', 'sudah', 'a', 'a', 'a', 'a', 'a', 'aa', NULL, NULL, NULL, NULL, NULL, NULL, 'cek lab', NULL, 4, 'urin dan darah', 'sudah', NULL, 'belum', NULL, NULL),
(25, 3, 16, 'Sakit di perut', '2016-12-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sudah', 'a', 'a', 'a', 'a', 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, 'Perlu Istirahat', 7, 1, NULL, 'sudah', NULL, NULL, NULL, NULL),
(26, 3, 3, 'sakit kepala', '2016-12-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sudah', 'a', 'a', 'a', 'a', 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, 'a', NULL, 2, NULL, 'sudah', 'sudah', NULL, NULL, NULL),
(27, 3, 4, 'sakit hati', '2016-12-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sudah', 'a', 'a', 'a', 'a', 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, 'a', NULL, 4, 'darah', 'sudah', NULL, 'belum', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tindakan`
--

CREATE TABLE `tindakan` (
  `idTidakan` int(11) NOT NULL,
  `nama_tindakan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tindakan`
--

INSERT INTO `tindakan` (`idTidakan`, `nama_tindakan`) VALUES
(1, 'Rawat Jalan'),
(2, 'Rujukan'),
(3, 'Rawat Inap'),
(4, 'Cek Lab'),
(5, 'Cek Gizi');

-- --------------------------------------------------------

--
-- Table structure for table `userlevel`
--

CREATE TABLE `userlevel` (
  `level` int(11) NOT NULL,
  `bagian` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlevel`
--

INSERT INTO `userlevel` (`level`, `bagian`) VALUES
(1, 'Petugas Loket'),
(2, 'Dokter'),
(3, 'Petugas Lab'),
(4, 'Perawat'),
(5, 'Apoteker'),
(6, 'Petugas Klinik Gizi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anamnesa`
--
ALTER TABLE `anamnesa`
  ADD PRIMARY KEY (`idAnamnes`),
  ADD KEY `idPendaftaran` (`idPendaftaran`);

--
-- Indexes for table `bpjs`
--
ALTER TABLE `bpjs`
  ADD PRIMARY KEY (`idBPJS`),
  ADD KEY `idPasien` (`idPasien`);

--
-- Indexes for table `ceklab`
--
ALTER TABLE `ceklab`
  ADD PRIMARY KEY (`id_cekLab`),
  ADD KEY `idRawatJalan` (`idRawatJalan`);

--
-- Indexes for table `daftarkk`
--
ALTER TABLE `daftarkk`
  ADD PRIMARY KEY (`idKK`);

--
-- Indexes for table `daftar_pasien_baru`
--
ALTER TABLE `daftar_pasien_baru`
  ADD PRIMARY KEY (`idPasien`),
  ADD KEY `idKK` (`idKK`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`idObat`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`idPegawai`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `pegawaia`
--
ALTER TABLE `pegawaia`
  ADD PRIMARY KEY (`idPegawai`);

--
-- Indexes for table `poli`
--
ALTER TABLE `poli`
  ADD PRIMARY KEY (`idPoli`),
  ADD KEY `idPegawai` (`idPegawai`),
  ADD KEY `idPegawai_2` (`idPegawai`);

--
-- Indexes for table `ranjang`
--
ALTER TABLE `ranjang`
  ADD PRIMARY KEY (`idRanjang`),
  ADD KEY `idRuang` (`idRuang`);

--
-- Indexes for table `resep`
--
ALTER TABLE `resep`
  ADD PRIMARY KEY (`idResep`),
  ADD KEY `idObat` (`idObat`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`idRuang`);

--
-- Indexes for table `ruanglevel`
--
ALTER TABLE `ruanglevel`
  ADD PRIMARY KEY (`ruang_level`);

--
-- Indexes for table `rujukan`
--
ALTER TABLE `rujukan`
  ADD PRIMARY KEY (`idRujuk`),
  ADD KEY `idPegawai` (`idPegawai`),
  ADD KEY `idPasien` (`idPasien`),
  ADD KEY `idTidakan` (`idTidakan`);

--
-- Indexes for table `r_inap`
--
ALTER TABLE `r_inap`
  ADD PRIMARY KEY (`idRawatInap`),
  ADD KEY `idPendaftaran` (`idRawatJalan`),
  ADD KEY `idRuang` (`idRuang`),
  ADD KEY `idPegawai` (`idPegawai`),
  ADD KEY `idRanjang` (`idRanjang`);

--
-- Indexes for table `r_jalan`
--
ALTER TABLE `r_jalan`
  ADD PRIMARY KEY (`idRawatJalan`),
  ADD KEY `idPendaftaran` (`idPasien`),
  ADD KEY `idPoli` (`idPoli`),
  ADD KEY `idResep` (`idResep`),
  ADD KEY `idTidakan` (`idTidakan`),
  ADD KEY `idPasien` (`idPasien`),
  ADD KEY `idPasien_2` (`idPasien`),
  ADD KEY `idTidakan_2` (`idTidakan`);

--
-- Indexes for table `tindakan`
--
ALTER TABLE `tindakan`
  ADD PRIMARY KEY (`idTidakan`);

--
-- Indexes for table `userlevel`
--
ALTER TABLE `userlevel`
  ADD PRIMARY KEY (`level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anamnesa`
--
ALTER TABLE `anamnesa`
  MODIFY `idAnamnes` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bpjs`
--
ALTER TABLE `bpjs`
  MODIFY `idBPJS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ceklab`
--
ALTER TABLE `ceklab`
  MODIFY `id_cekLab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `daftarkk`
--
ALTER TABLE `daftarkk`
  MODIFY `idKK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `daftar_pasien_baru`
--
ALTER TABLE `daftar_pasien_baru`
  MODIFY `idPasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `idObat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `idPegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pegawaia`
--
ALTER TABLE `pegawaia`
  MODIFY `idPegawai` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `resep`
--
ALTER TABLE `resep`
  MODIFY `idResep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ruang`
--
ALTER TABLE `ruang`
  MODIFY `idRuang` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rujukan`
--
ALTER TABLE `rujukan`
  MODIFY `idRujuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `r_inap`
--
ALTER TABLE `r_inap`
  MODIFY `idRawatInap` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `r_jalan`
--
ALTER TABLE `r_jalan`
  MODIFY `idRawatJalan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `userlevel`
--
ALTER TABLE `userlevel`
  MODIFY `level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bpjs`
--
ALTER TABLE `bpjs`
  ADD CONSTRAINT `bpjs_ibfk_1` FOREIGN KEY (`idPasien`) REFERENCES `daftar_pasien_baru` (`idPasien`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ceklab`
--
ALTER TABLE `ceklab`
  ADD CONSTRAINT `ceklab_ibfk_1` FOREIGN KEY (`idRawatJalan`) REFERENCES `r_jalan` (`idRawatJalan`);

--
-- Constraints for table `daftar_pasien_baru`
--
ALTER TABLE `daftar_pasien_baru`
  ADD CONSTRAINT `daftar_pasien_baru_ibfk_1` FOREIGN KEY (`idKK`) REFERENCES `daftarkk` (`idKK`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`level`) REFERENCES `userlevel` (`level`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ranjang`
--
ALTER TABLE `ranjang`
  ADD CONSTRAINT `ranjang_ibfk_1` FOREIGN KEY (`idRuang`) REFERENCES `ruang` (`idRuang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `resep`
--
ALTER TABLE `resep`
  ADD CONSTRAINT `resep_ibfk_1` FOREIGN KEY (`idObat`) REFERENCES `obat` (`idObat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rujukan`
--
ALTER TABLE `rujukan`
  ADD CONSTRAINT `rujukan_ibfk_1` FOREIGN KEY (`idTidakan`) REFERENCES `tindakan` (`idTidakan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rujukan_ibfk_2` FOREIGN KEY (`idPasien`) REFERENCES `daftar_pasien_baru` (`idPasien`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `r_inap`
--
ALTER TABLE `r_inap`
  ADD CONSTRAINT `r_inap_ibfk_2` FOREIGN KEY (`idRuang`) REFERENCES `ruang` (`idRuang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `r_inap_ibfk_3` FOREIGN KEY (`idPegawai`) REFERENCES `pegawai` (`idPegawai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `r_inap_ibfk_4` FOREIGN KEY (`idRanjang`) REFERENCES `ranjang` (`idRanjang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `r_jalan`
--
ALTER TABLE `r_jalan`
  ADD CONSTRAINT `r_jalan_ibfk_2` FOREIGN KEY (`idPoli`) REFERENCES `poli` (`idPoli`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `r_jalan_ibfk_3` FOREIGN KEY (`idResep`) REFERENCES `resep` (`idResep`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `r_jalan_ibfk_4` FOREIGN KEY (`idTidakan`) REFERENCES `tindakan` (`idTidakan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `r_jalan_ibfk_5` FOREIGN KEY (`idPasien`) REFERENCES `daftar_pasien_baru` (`idPasien`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
