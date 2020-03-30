-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2020 at 05:37 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db6`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan_brg` varchar(225) NOT NULL,
  `kategori_brg` varchar(60) NOT NULL,
  `harga_brg` int(11) NOT NULL,
  `stok_brg` int(4) NOT NULL,
  `gambar_brg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan_brg`, `kategori_brg`, `harga_brg`, `stok_brg`, `gambar_brg`) VALUES
(16, 'ASUS A407UA', 'Laptop Asus dengan prosessor i3 selebar 14 inci dengan resolusi 1366 x 768 piksel', 'Electronics', 5500000, 10, 'A407UB.jpg'),
(17, 'ASUS Zenbook Duo UX481FL', 'Laptop asus zenbook dengan GRaphics NVIDIA® GeForce® MX250 2GB GDDR5 VRAM RAM 8GB 2133MHz LPDDR3 Storage 512GB PCIe® Gen3 x2', 'Electronics', 17500000, 10, 'download-_2_.jpg'),
(18, 'ASUS A412FA', 'Laptop Asus dengan Spesifikasi Processor Core i5 8265U Ram 8 GB ddr 4 PCLe 512 GB No odd Layar 14', 'Electronics', 11000000, 10, '5cecae3b5fc9c.jpg'),
(19, 'ASUS A46CB-WX023D', 'Laptop Asus dengan spesifikasi Intel Core i3 3217U Processor,  NVIDIA GeForce GT 740M 2GB DDR3 VRAM, dan Storage  500GB HDD', 'Electronics', 8500000, 10, '2904265_48d0d8bc-678c-11e3-a872-128b4908a8c2.jpg'),
(20, 'ASUS X550VX-DM701', 'Asus X550VX-DM701 Laptop- Intel Ci7-7700HQ-8GB-1TB-15.6 -Dos - Black Intel Kaby Lake 7th Core i7 7700HQ 2.8GHz up to 3.8GHz (6MB Cache) 8GB RAM DDR4 OnBoard (1 Slot Available) 1TB HDD 5400RPM Intel HD Graphics 530 & nVidia Ge', 'Electronics', 10200000, 10, 'asus-x550vx-dm7011.jpg'),
(21, 'Nike Court Vintage Premium', 'Sepatu putih Nike dengan nuansa Vintage ukuran 44', 'Clothes', 899000, 10, 'court-vintage-shoe-bvP4d41.jpg'),
(22, 'Nike Air Max 97', 'Air Max 97 dengan warna yang hitam yang elegan ukuran 42', 'Clothes', 1799000, 10, 'jd_068652_a1.jpg'),
(23, 'Nike Air Force 1 React', 'Seri Air Force 1 terbaru dengan warna dan bentuk yang bagus ukuran 44', 'Clothes', 1799000, 9, 'air-force-1-react-shoe-gfv33P1.jpg'),
(24, 'Nike Air Jordan 1 Mid', 'Seri Air Jordan 1 MId dengan campuran warna putih, merah dan hitam ukuran 43', 'Clothes', 1650000, 10, 'air-jordan-1-mid-shoe-BpARGV1.jpg'),
(25, 'Nike Air Max 2090', 'Seri terbaru dari Nike dengan desain yang futuristik ukuran 42', 'Clothes', 2099000, 10, 'air-max-2090-shoe-cJ657M1.jpg'),
(26, 'NANORAY 900SE', 'Racket Bulu tangkis dari merk YONEX', 'Sports', 2700893, 10, 'yonex1.jpg'),
(27, 'BOLA VOLLEY / VOLI MIKASA', 'BOLA VOLLEY / VOLI MIKASA  MG MV2200 SUPERGOLD EMPUK SIZE 5', 'Sports', 75000, 20, 'download1.jpg'),
(28, 'BOLA BASKET SPALDING NBA SILVER', 'Bola basket cocok dimainkan di indoor maupun outdoor', 'Sports', 360000, 10, 'Basket1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(256) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(8, 'Bagus Surapadi', 'Dimana mana Saja', '2019-12-28 09:53:47', '2019-12-29 09:53:47'),
(9, 'Sodara Osas', 'Di Afrika Selatan Deket Perumahan OShas', '2019-12-28 13:48:06', '2019-12-29 13:48:06'),
(10, 'M Thalut Nadhil Q', 'jln. Bumi Marina Emas Barat 1 nomor 28', '2020-03-29 22:20:44', '2020-03-30 22:20:44'),
(11, 'samuel', 'jalan keputih permai', '2020-03-29 22:25:06', '2020-03-30 22:25:06'),
(12, 'Gill Ashcroft', 'Jalan Wisma permai nomor 163', '2020-03-30 10:27:14', '2020-03-31 10:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah_brg` int(3) NOT NULL,
  `harga_brg` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah_brg`, `harga_brg`, `pilihan`) VALUES
(9, 8, 8, 'Laptop Dewa', 1, 680000, ''),
(10, 8, 13, 'Henphone', 1, 245000, ''),
(11, 8, 14, 'Sepatu Boljug', 2, 120000, ''),
(12, 8, 15, 'Sepatu Lagi Dungz', 1, 35000, ''),
(13, 9, 8, 'Laptop Dewa', 3, 680000, ''),
(14, 9, 15, 'Sepatu Lagi Dungz', 1, 35000, ''),
(15, 9, 14, 'Sepatu Boljug', 2, 120000, ''),
(16, 9, 3, 'Kamera', 1, 450000, ''),
(17, 10, 3, 'Kamera', 1, 450000, ''),
(18, 11, 14, 'Sepatu Boljug', 2, 120000, ''),
(19, 12, 23, 'Nike Air Force 1 React', 1, 1799000, '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
		UPDATE tb_barang SET stok_brg = stok_brg-NEW.jumlah_brg
    	WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `username` varchar(56) NOT NULL,
  `password` varchar(56) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', 'admin123', 1),
(2, 'user', 'user', '123', 2),
(7, 'akmal', 'akmal', '345', 2),
(8, 'joko', 'joko', '123', 2),
(9, 'Bobbi', 'Bobbi', '123', 2),
(10, 'samuel', 'samuel', '123', 2),
(11, 'gil', 'gil', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
