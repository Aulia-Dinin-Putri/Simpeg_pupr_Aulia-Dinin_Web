-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2021 at 06:14 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simpeg_pupr`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen`
--

CREATE TABLE `absen` (
  `id_absen` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `hadir` int(100) NOT NULL,
  `izin` int(100) NOT NULL,
  `tidak_hadir` int(100) NOT NULL,
  `bulan` int(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`, `level`, `log`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin', '2018-03-30 02:51:21'),
(3, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'User', 'user', '2018-04-02 18:27:39');

-- --------------------------------------------------------

--
-- Table structure for table `diklat_struktural`
--

CREATE TABLE `diklat_struktural` (
  `id_diklatstruktural` int(11) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `diklatI` varchar(100) NOT NULL,
  `jam_diklatI` time NOT NULL,
  `tgl_diklatI` date NOT NULL,
  `tahun_diklatI` year(4) NOT NULL,
  `angkatan_diklatI` varchar(20) NOT NULL,
  `no_diklatI` varchar(20) NOT NULL,
  `penyelenggara_diklatI` set('Bandiklat','Diklat Prov.') NOT NULL,
  `tempat_diklatI` varchar(20) NOT NULL,
  `diklatII` varchar(100) NOT NULL,
  `jam_diklatII` time NOT NULL,
  `tgl_diklatII` date NOT NULL,
  `tahun_diklatII` year(4) NOT NULL,
  `angkatan_diklatII` varchar(20) NOT NULL,
  `no_diklatII` varchar(20) NOT NULL,
  `penyelenggara_diklatII` set('Bandiklat','Diklat Prov.') NOT NULL,
  `tempat_diklatII` varchar(20) NOT NULL,
  `diklatIII` varchar(100) NOT NULL,
  `jam_diklatIII` time NOT NULL,
  `tgl_diklatIII` date NOT NULL,
  `tahun_diklatIII` year(4) NOT NULL,
  `angkatan_diklatIII` varchar(20) NOT NULL,
  `no_diklatIII` varchar(20) NOT NULL,
  `penyelenggara_diklatIII` set('Bandiklat','Diklat Prov.') NOT NULL,
  `tempat_diklatIII` varchar(20) NOT NULL,
  `diklatIV` varchar(100) NOT NULL,
  `jam_diklatIV` time NOT NULL,
  `tgl_diklatIV` date NOT NULL,
  `tahun_diklatIV` year(4) NOT NULL,
  `angkatan_diklatIV` varchar(20) NOT NULL,
  `no_diklatIV` varchar(20) NOT NULL,
  `penyelenggara_diklatIV` set('Bandiklat','Diklat Prov.') NOT NULL,
  `tempat_diklatIV` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL,
  `golongan` set('I/A','I/B','I/C','I/D','II/A','II/B','II/C','II/D','III/A','III/B','III/C','III/D','IV/A','IV/B','IV/C','IV/D') NOT NULL,
  `tunjangan` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_pegawai`, `nama_jabatan`, `golongan`, `tunjangan`) VALUES
(153, 'BAYU PANCOROADI, ST, MT', 'Kepala Dinas', 'I/A', 500000);

-- --------------------------------------------------------

--
-- Table structure for table `kelpeg`
--

CREATE TABLE `kelpeg` (
  `id_kelpeg` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `nama_ayah` varchar(100) NOT NULL,
  `tempat_ayah` varchar(20) NOT NULL,
  `tgllahir_ayah` date NOT NULL,
  `pekerjaan_ayah` varchar(50) NOT NULL,
  `alamat_ayah` varchar(100) NOT NULL,
  `nama_ibu` varchar(100) NOT NULL,
  `tempat_ibu` varchar(20) NOT NULL,
  `tgllahir_ibu` date NOT NULL,
  `pekerjaan_ibu` varchar(50) NOT NULL,
  `alamat_ibu` varchar(100) NOT NULL,
  `nama_is` varchar(100) NOT NULL,
  `tempat_is` varchar(20) NOT NULL,
  `tgllahir_is` date NOT NULL,
  `tgl_kawin` date NOT NULL,
  `pend_akhir` set('SD/MI','SMP/MTS','SMA/MA','D3','S1','S2') NOT NULL,
  `pekerjaan_is` varchar(20) NOT NULL,
  `nip_is` int(20) NOT NULL,
  `pangkat` varchar(100) NOT NULL,
  `no_kk` int(20) NOT NULL,
  `nik_is` int(20) NOT NULL,
  `opd` varchar(100) NOT NULL,
  `nama_anak1` varchar(100) NOT NULL,
  `tempat_anak1` varchar(20) NOT NULL,
  `tgllahir_anak1` date NOT NULL,
  `pekerjaan_anak1` varchar(50) NOT NULL,
  `status_anak1` set('AK','AS','AA') NOT NULL,
  `pend_anak1` set('SD','SMP','SMA','Perkuliahan') NOT NULL,
  `jk_anak1` enum('Laki-laki','Wanita') NOT NULL,
  `nama_anak2` varchar(100) NOT NULL,
  `tempat_anak2` varchar(20) NOT NULL,
  `tgllahir_anak2` date NOT NULL,
  `pekerjaan_anak2` varchar(50) NOT NULL,
  `status_anak2` set('AK','AS','AA') NOT NULL,
  `pend_anak2` set('SD','SMP','SMA','Perkuliahan') NOT NULL,
  `jk_anak2` enum('Laki-laki','Wanita') NOT NULL,
  `nama_anak3` varchar(100) NOT NULL,
  `tempat_anak3` varchar(20) NOT NULL,
  `tgllahir_anak3` date NOT NULL,
  `pekerjaan_anak3` varchar(50) NOT NULL,
  `status_anak3` set('AK','AS','AA') NOT NULL,
  `pend_anak3` set('SD','SMP','SMA','Perkuliahan') NOT NULL,
  `jk_anak3` enum('Laki-laki','Wanita') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `id_jabatan` int(110) NOT NULL,
  `id_riwayat_pegawai` int(11) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `npwp` varchar(100) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `gelar_kesarjanaan` enum('ST, MT','SE.','ST.','ST., MT') NOT NULL,
  `tempat` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` enum('Laki-laki','Perempuan') NOT NULL,
  `foto` blob NOT NULL,
  `agama` varchar(100) NOT NULL,
  `pendidikan` varchar(100) NOT NULL,
  `status_kep` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `goldar` enum('A','B','AB','O') NOT NULL,
  `status_kawin` enum('Kawin','Belum Kawin') NOT NULL,
  `tgl_pensiun` date NOT NULL,
  `no_karpeg` int(50) NOT NULL,
  `no_taspen` int(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id_pendidikan` int(11) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `SD/MI` varchar(20) NOT NULL,
  `SMP/MTS` varchar(20) NOT NULL,
  `SMA/MA` varchar(20) NOT NULL,
  `D3` varchar(20) NOT NULL,
  `S1` varchar(20) NOT NULL,
  `S2` varchar(20) NOT NULL,
  `pend_akhir` set('SD/MI','SMP/MTS','SMA/MA','D3','S1','S2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pengangkatancpns`
--

CREATE TABLE `pengangkatancpns` (
  `id_angkat_cpns` int(11) NOT NULL,
  `tgl_persetujuan_bakn` date NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_nota_persetujuan_bakn` varchar(50) NOT NULL,
  `pejabat_ygmenetapkan` set('A','B','C') NOT NULL,
  `no_sk_cpns` varchar(50) NOT NULL,
  `tgl_sk_cpns` date NOT NULL,
  `gaji` bigint(20) NOT NULL,
  `ijazah` set('SD/MI','SMP/MTS','SMA/MA','D3','S1','S2') NOT NULL,
  `ijazah_tahun` year(4) NOT NULL,
  `gol_ruang` set('I/a','II/a','III/a','I/b','II/b','III/b','I/c','II/c','III/c') NOT NULL,
  `tmt_cpns` date NOT NULL,
  `tahun` year(4) NOT NULL,
  `bulan` set('Januari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','November','Desember') NOT NULL,
  `jabatan` set('Teknik/Arsitektur','Staf Teknik','Staf','Teknik Jalan') NOT NULL,
  `opd` varchar(50) NOT NULL,
  `tmt_spmt` date NOT NULL,
  `tahun_tambah_mk` year(4) NOT NULL,
  `bulan_tambah_mk` set('Januari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','November','Desember') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengangkatancpns`
--

INSERT INTO `pengangkatancpns` (`id_angkat_cpns`, `tgl_persetujuan_bakn`, `nama`, `no_nota_persetujuan_bakn`, `pejabat_ygmenetapkan`, `no_sk_cpns`, `tgl_sk_cpns`, `gaji`, `ijazah`, `ijazah_tahun`, `gol_ruang`, `tmt_cpns`, `tahun`, `bulan`, `jabatan`, `opd`, `tmt_spmt`, `tahun_tambah_mk`, `bulan_tambah_mk`) VALUES
(6, '2021-12-06', 'BAYU PANCOROADI, ST, MT', '23455', 'A', '162788', '2021-12-08', 0, 'SD/MI', 0000, 'I/a', '0000-00-00', 0000, 'Januari', 'Teknik/Arsitektur', '', '0000-00-00', 0000, 'Januari');

-- --------------------------------------------------------

--
-- Table structure for table `pengangkatanpns`
--

CREATE TABLE `pengangkatanpns` (
  `id_angkat_pns` int(11) NOT NULL,
  `tgl_sk` date NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_sk` varchar(50) NOT NULL,
  `pejabat_ygmenetapkan` set('Bupati Jombang','Gubernur','BKD Kab Jombang','Walikota Jombang') NOT NULL,
  `gapok_sk` bigint(20) NOT NULL,
  `pangkat_sk` set('Penata Muda','Pengatur Muda','Pengatur','Penata Tingkat') NOT NULL,
  `gol_ruang` set('I/a','II/a','III/a','IV/a','I/b','II/b','III/b','IV/b','I/c','II/c','III/c','IV/c','I/d','II/d','III/d','IV/d') NOT NULL,
  `tmt_pns` date NOT NULL,
  `tahun` year(4) NOT NULL,
  `bulan` set('Januari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','November','Desember') NOT NULL,
  `suket_kesehatan` varchar(50) NOT NULL,
  `sttpl` varchar(50) NOT NULL,
  `sumpah_janji_pns` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `penggajian`
--

CREATE TABLE `penggajian` (
  `id_penggajian` int(11) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `pejabat_ygmenetapkan` set('Kaban BKDP','B') NOT NULL,
  `nomor` int(20) NOT NULL,
  `tgl_gaji` date NOT NULL,
  `gaji_pokok` bigint(20) NOT NULL,
  `tmt_kgb` date NOT NULL,
  `tahun` year(4) NOT NULL,
  `bulan` set('Januari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','November','Desember') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penggajian`
--

INSERT INTO `penggajian` (`id_penggajian`, `nip`, `nama`, `pejabat_ygmenetapkan`, `nomor`, `tgl_gaji`, `gaji_pokok`, `tmt_kgb`, `tahun`, `bulan`) VALUES
(78, '26377848', 'JOKO TRIYONO, SE.', 'Kaban BKDP', 76688, '2021-12-13', 5000000, '2021-12-16', 2003, 'Oktober');

-- --------------------------------------------------------

--
-- Table structure for table `penghargaan`
--

CREATE TABLE `penghargaan` (
  `id_penghargaan` int(11) NOT NULL,
  `id_pegawai` varchar(10) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `no_skpenghargaan` varchar(50) NOT NULL,
  `tgl_skpenghargaan` date NOT NULL,
  `asal_skpenghargaan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penghargaan`
--

INSERT INTO `penghargaan` (`id_penghargaan`, `id_pegawai`, `nama_pegawai`, `no_skpenghargaan`, `tgl_skpenghargaan`, `asal_skpenghargaan`) VALUES
(7, '', 'BAYU PANCOROADI, ST, MT', '01222', '2021-12-06', 'Jombang');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pegawai`
--

CREATE TABLE `riwayat_pegawai` (
  `id_riwayat_pegawai` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `id_angkat_cpns` int(11) NOT NULL,
  `id_angkat_pns` int(11) NOT NULL,
  `id_penghargaan` int(11) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `id_pendidikan` int(11) NOT NULL,
  `id_diklatstruktural` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tpp`
--

CREATE TABLE `tpp` (
  `id_tpp` int(11) NOT NULL,
  `id_penggajian` int(11) NOT NULL,
  `id_kelpeg` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jumlah_tpp` varchar(100) NOT NULL,
  `jumlah_potongan` varchar(100) NOT NULL,
  `bulan_t` int(100) NOT NULL,
  `tahun` int(100) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id_absen`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `diklat_struktural`
--
ALTER TABLE `diklat_struktural`
  ADD PRIMARY KEY (`id_diklatstruktural`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `kelpeg`
--
ALTER TABLE `kelpeg`
  ADD PRIMARY KEY (`id_kelpeg`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `id_riwayat_pegawai` (`id_riwayat_pegawai`),
  ADD KEY `nama` (`nama`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`);

--
-- Indexes for table `pengangkatancpns`
--
ALTER TABLE `pengangkatancpns`
  ADD PRIMARY KEY (`id_angkat_cpns`);

--
-- Indexes for table `pengangkatanpns`
--
ALTER TABLE `pengangkatanpns`
  ADD PRIMARY KEY (`id_angkat_pns`);

--
-- Indexes for table `penggajian`
--
ALTER TABLE `penggajian`
  ADD PRIMARY KEY (`id_penggajian`);

--
-- Indexes for table `penghargaan`
--
ALTER TABLE `penghargaan`
  ADD PRIMARY KEY (`id_penghargaan`);

--
-- Indexes for table `riwayat_pegawai`
--
ALTER TABLE `riwayat_pegawai`
  ADD PRIMARY KEY (`id_riwayat_pegawai`),
  ADD KEY `id_angkat_cpns` (`id_angkat_cpns`),
  ADD KEY `id_angkat_pns` (`id_angkat_pns`),
  ADD KEY `id_penghargaan` (`id_penghargaan`),
  ADD KEY `id_jabatan` (`id_jabatan`),
  ADD KEY `id_pendidikan` (`id_pendidikan`),
  ADD KEY `id_diklatstruktural` (`id_diklatstruktural`);

--
-- Indexes for table `tpp`
--
ALTER TABLE `tpp`
  ADD PRIMARY KEY (`id_tpp`),
  ADD UNIQUE KEY `id_penggajian` (`id_penggajian`),
  ADD KEY `id_kelpeg` (`id_kelpeg`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absen`
--
ALTER TABLE `absen`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `kelpeg`
--
ALTER TABLE `kelpeg`
  MODIFY `id_kelpeg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pengangkatancpns`
--
ALTER TABLE `pengangkatancpns`
  MODIFY `id_angkat_cpns` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pengangkatanpns`
--
ALTER TABLE `pengangkatanpns`
  MODIFY `id_angkat_pns` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `penggajian`
--
ALTER TABLE `penggajian`
  MODIFY `id_penggajian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `penghargaan`
--
ALTER TABLE `penghargaan`
  MODIFY `id_penghargaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tpp`
--
ALTER TABLE `tpp`
  MODIFY `id_tpp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absen`
--
ALTER TABLE `absen`
  ADD CONSTRAINT `absen_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kelpeg`
--
ALTER TABLE `kelpeg`
  ADD CONSTRAINT `kelpeg_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`id_riwayat_pegawai`) REFERENCES `riwayat_pegawai` (`id_riwayat_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `riwayat_pegawai`
--
ALTER TABLE `riwayat_pegawai`
  ADD CONSTRAINT `riwayat_pegawai_ibfk_1` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id_jabatan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayat_pegawai_ibfk_2` FOREIGN KEY (`id_pendidikan`) REFERENCES `pendidikan` (`id_pendidikan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayat_pegawai_ibfk_3` FOREIGN KEY (`id_diklatstruktural`) REFERENCES `diklat_struktural` (`id_diklatstruktural`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayat_pegawai_ibfk_4` FOREIGN KEY (`id_penghargaan`) REFERENCES `penghargaan` (`id_penghargaan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayat_pegawai_ibfk_5` FOREIGN KEY (`id_angkat_pns`) REFERENCES `pengangkatanpns` (`id_angkat_pns`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayat_pegawai_ibfk_6` FOREIGN KEY (`id_angkat_cpns`) REFERENCES `pengangkatancpns` (`id_angkat_cpns`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tpp`
--
ALTER TABLE `tpp`
  ADD CONSTRAINT `tpp_ibfk_2` FOREIGN KEY (`id_penggajian`) REFERENCES `penggajian` (`id_penggajian`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tpp_ibfk_3` FOREIGN KEY (`id_kelpeg`) REFERENCES `kelpeg` (`id_kelpeg`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
