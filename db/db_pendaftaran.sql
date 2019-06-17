-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 04 Feb 2016 pada 11.34
-- Versi Server: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ta_pendaftaran`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agama`
--

CREATE TABLE IF NOT EXISTS `agama` (
  `kdagama` varchar(20) NOT NULL,
  `nmagama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `agama`
--

INSERT INTO `agama` (`kdagama`, `nmagama`) VALUES
('A002', 'Buddha'),
('A08382', 'Konghucu'),
('A0993', 'Protestan'),
('A11', 'Khatolik'),
('A3234', 'Hindu'),
('A9992', 'Islam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pekerjaan`
--

CREATE TABLE IF NOT EXISTS `pekerjaan` (
  `kdpekerjaan` varchar(20) NOT NULL,
  `nmpekerjaan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pekerjaan`
--

INSERT INTO `pekerjaan` (`kdpekerjaan`, `nmpekerjaan`) VALUES
('P002', 'Petani'),
('P0022', 'Wiraswasta'),
('P0023', 'Pegawai Swasta'),
('P0032', 'Kepala desa'),
('P03002', 'LAinnya'),
('P0302', 'Tidak Bekerja'),
('P03023', 'Parbotot'),
('P0323', 'PNS'),
('P99', 'Aparat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftar`
--

CREATE TABLE IF NOT EXISTS `pendaftar` (
  `kdpendaftar` int(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenkel` varchar(14) NOT NULL,
  `kdagama` varchar(20) NOT NULL,
  `tpt_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `statusanak` varchar(17) NOT NULL,
  `nmayah` varchar(50) NOT NULL,
  `kdpendidikana` varchar(20) NOT NULL,
  `kdpekerjaana` varchar(20) NOT NULL,
  `penghasilanayah` varchar(20) NOT NULL,
  `nmibu` varchar(50) NOT NULL,
  `kdpendidikani` varchar(20) NOT NULL,
  `kdpekerjaani` varchar(20) NOT NULL,
  `nohp` varchar(12) NOT NULL,
  `kdtk` varchar(20) NOT NULL,
  `statusdaftar` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendaftar`
--

INSERT INTO `pendaftar` (`kdpendaftar`, `nama`, `jenkel`, `kdagama`, `tpt_lahir`, `tgl_lahir`, `alamat`, `statusanak`, `nmayah`, `kdpendidikana`, `kdpekerjaana`, `penghasilanayah`, `nmibu`, `kdpendidikani`, `kdpekerjaani`, `nohp`, `kdtk`, `statusdaftar`) VALUES
(8, 'Nimrod napitupulu', 'Laki-laki', 'A0993', 'medan', '1994-12-12', 'Medan Petisah', 'Tiri', 'Hotner', 'PN9392', 'P0022', '3000000', 'Lesinta Marbun', 'P77823', 'P77823', '082362612222', 'T00201', 'Diterima'),
(11, '2', 'Laki-laki', 'A002', '2', '0000-00-00', '2', 'kandung', '2', 'P000', 'P002', '2', '2', 'P000', 'P000', '2', 'T000', 'Diterima'),
(12, 'Ayu', 'Perempuan', 'A0993', 'Medan', '1994-12-12', 'medan sunggal', 'Tiri', 'LOntong', 'PN0302', 'P002', '4000000', 'Lintah', 'P0201', 'P0201', '0828277122', 'T0032', 'Ditolak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendidikan`
--

CREATE TABLE IF NOT EXISTS `pendidikan` (
  `kdpendidikan` varchar(20) NOT NULL,
  `nmpendidikan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendidikan`
--

INSERT INTO `pendidikan` (`kdpendidikan`, `nmpendidikan`) VALUES
('P000', 'Tidak Sekolah'),
('P0201', 'S3'),
('P77823', 'S2'),
('PN0302', 'SD'),
('Pn21', 'S1'),
('PN7372', 'SMP'),
('PN9392', 'Diploma 3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tk`
--

CREATE TABLE IF NOT EXISTS `tk` (
  `kdtk` varchar(12) NOT NULL,
  `namatk` varchar(50) NOT NULL,
  `alamat_tk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tk`
--

INSERT INTO `tk` (`kdtk`, `namatk`, `alamat_tk`) VALUES
('T000', 'Lainnya', 'Lainnya'),
('T00201', 'Paud Anak Negeri', 'Panombean Panei'),
('T0032', 'Paud Ta"am', 'Jln . medan'),
('T020q8', 'TK santa Tomas Medan', 'Jalan medan dekat medan'),
('T0301', 'Taman Kanak-kanak santa mulia', 'Jalan Patuan nagari No 12 Pematangsiantarr');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`kdagama`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`kdpekerjaan`);

--
-- Indexes for table `pendaftar`
--
ALTER TABLE `pendaftar`
  ADD PRIMARY KEY (`kdpendaftar`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`kdpendidikan`);

--
-- Indexes for table `tk`
--
ALTER TABLE `tk`
  ADD PRIMARY KEY (`kdtk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pendaftar`
--
ALTER TABLE `pendaftar`
  MODIFY `kdpendaftar` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
