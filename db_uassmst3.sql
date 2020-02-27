-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Feb 2020 pada 05.14
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uassmst3`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `input_barang`
--

CREATE TABLE `input_barang` (
  `id_barang` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `satuan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `input_barang`
--

INSERT INTO `input_barang` (`id_barang`, `nama`, `kategori_id`, `satuan_id`) VALUES
(133, 'meja', 112, 233),
(134, 'kursi', 113, 234),
(135, 'bedak', 114, 235),
(136, 'lipstik', 115, 236),
(137, 'kerudung', 116, 237),
(138, 'baju', 117, 238),
(139, 'celana', 118, 239),
(140, 'sepatu', 119, 240),
(141, 'sendal', 120, 241),
(142, 'rinso', 121, 242),
(143, 'molto', 122, 243),
(144, 'sapu', 123, 244),
(145, 'handuk', 124, 245),
(146, 'pasta gigi', 125, 246),
(147, 'tv', 126, 247);

-- --------------------------------------------------------

--
-- Struktur dari tabel `input_kategori`
--

CREATE TABLE `input_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `input_kategori`
--

INSERT INTO `input_kategori` (`id_kategori`, `nama`) VALUES
(112, 'meja'),
(113, 'kursi'),
(114, 'bedak'),
(115, 'lipstik'),
(116, 'kerudung'),
(117, 'baju'),
(118, 'celana'),
(119, 'sepatu'),
(120, 'sendal'),
(121, 'rinso'),
(122, 'molto'),
(123, 'sapu'),
(124, 'handuk'),
(125, 'pasta gigi'),
(126, 'tv');

-- --------------------------------------------------------

--
-- Struktur dari tabel `input_satuan`
--

CREATE TABLE `input_satuan` (
  `id_satuan` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `input_satuan`
--

INSERT INTO `input_satuan` (`id_satuan`, `nama`) VALUES
(233, 'meja'),
(234, 'kursi'),
(235, 'bedak'),
(236, 'lipstik'),
(237, 'kerudung'),
(238, 'baju'),
(239, 'celana'),
(240, 'sepatu'),
(241, 'sendal'),
(242, 'rinso'),
(243, 'molto'),
(244, 'sapu'),
(245, 'handuk'),
(246, 'pasta gigi'),
(247, 'tv');

-- --------------------------------------------------------

--
-- Struktur dari tabel `input_tranksaksi`
--

CREATE TABLE `input_tranksaksi` (
  `id_transaksi` int(11) NOT NULL,
  `nama_transaksi` varchar(100) NOT NULL,
  `tgl_transaksi` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `input_tranksaksi`
--

INSERT INTO `input_tranksaksi` (`id_transaksi`, `nama_transaksi`, `tgl_transaksi`, `harga`, `qty`, `id_barang`) VALUES
(151, 'kredit', '0000-00-00', 10000, 0, 0),
(152, 'rekening', '0000-00-00', 10000, 0, 0),
(153, 'giro', '0000-00-00', 50000, 0, 0),
(154, 'cek', '0000-00-00', 60000, 0, 0),
(155, 'kredit', '0000-00-00', 80000, 0, 0),
(156, 'rekening', '0000-00-00', 10000, 0, 0),
(157, 'giro', '0000-00-00', 120000, 0, 0),
(158, 'cek', '0000-00-00', 100000, 0, 0),
(159, 'kredit', '0000-00-00', 150000, 0, 0),
(160, 'rekening', '0000-00-00', 50000, 0, 0),
(161, 'giro', '0000-00-00', 30000, 0, 0),
(162, 'cek', '0000-00-00', 60000, 0, 0),
(163, 'kredit', '0000-00-00', 40000, 0, 0),
(164, 'rekening', '0000-00-00', 20000, 0, 0),
(165, 'giro', '0000-00-00', 700000, 0, 0),
(151, 'kredit', '0000-00-00', 10000, 12, 133),
(152, 'rekening', '0000-00-00', 10000, 13, 134),
(153, 'giro', '0000-00-00', 50000, 14, 135),
(154, 'cek', '0000-00-00', 60000, 15, 136),
(155, 'kredit', '0000-00-00', 80000, 16, 137),
(156, 'rekening', '0000-00-00', 10000, 17, 138),
(157, 'giro', '0000-00-00', 120000, 18, 139),
(158, 'cek', '0000-00-00', 100000, 19, 140),
(159, 'kredit', '0000-00-00', 150000, 20, 141),
(160, 'rekening', '0000-00-00', 50000, 21, 142),
(161, 'giro', '0000-00-00', 30000, 22, 143),
(162, 'cek', '0000-00-00', 60000, 23, 144),
(163, 'kredit', '0000-00-00', 40000, 24, 145),
(164, 'rekening', '0000-00-00', 20000, 25, 146),
(165, 'giro', '0000-00-00', 700000, 26, 147),
(151, 'kredit', '0000-00-00', 10000, 12, 133),
(152, 'rekening', '0000-00-00', 10000, 13, 134),
(153, 'giro', '0000-00-00', 50000, 14, 135),
(154, 'cek', '0000-00-00', 60000, 15, 136),
(155, 'kredit', '0000-00-00', 80000, 16, 137),
(156, 'rekening', '0000-00-00', 10000, 17, 138),
(157, 'giro', '0000-00-00', 120000, 18, 139),
(158, 'cek', '0000-00-00', 100000, 19, 140),
(159, 'kredit', '0000-00-00', 150000, 20, 141),
(160, 'rekening', '0000-00-00', 50000, 21, 142),
(161, 'giro', '0000-00-00', 30000, 22, 143),
(162, 'cek', '0000-00-00', 60000, 23, 144),
(163, 'kredit', '0000-00-00', 40000, 24, 145),
(164, 'rekening', '0000-00-00', 20000, 25, 146),
(165, 'giro', '0000-00-00', 700000, 26, 147),
(151, 'kredit', '01/04/2019', 10000, 12, 133),
(152, 'rekening', '02/04/2019', 10000, 13, 134),
(153, 'giro', '03/04/2019', 50000, 14, 135),
(154, 'cek', '04/04/2019', 60000, 15, 136),
(155, 'kredit', '05/04/2019', 80000, 16, 137),
(156, 'rekening', '06/04/2019', 10000, 17, 138),
(157, 'giro', '07/04/2019', 120000, 18, 139),
(158, 'cek', '08/04/2019', 100000, 19, 140),
(159, 'kredit', '09/04/2019', 150000, 20, 141),
(160, 'rekening', '10/04/2019', 50000, 21, 142),
(161, 'giro', '11/04/2019', 30000, 22, 143),
(162, 'cek', '12/04/2019', 60000, 23, 144),
(163, 'kredit', '13/04/2019', 40000, 24, 145),
(164, 'rekening', '14/04/2019', 20000, 25, 146),
(165, 'giro', '15/04/2019', 700000, 26, 147);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
