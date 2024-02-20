-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2024 at 01:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mrp`
--

-- --------------------------------------------------------

--
-- Table structure for table `damage`
--

CREATE TABLE `damage` (
  `sno` int(11) NOT NULL,
  `materialNamew` varchar(500) NOT NULL,
  `materialTypew` varchar(255) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `damage`
--

INSERT INTO `damage` (`sno`, `materialNamew`, `materialTypew`, `quantity`, `timestamp`) VALUES
(1, '182*182 mm(Eff.22.9%)/(7.56)Wp', 'NOS', 1000.00, '2024-02-17 11:54:18'),
(3, '182*182 mm(Eff.22.9%)/(7.56)Wp', 'NOS', 50.00, '2024-02-17 12:02:12'),
(4, '182*182 mm(Eff.22.9%)/(7.56)Wp', 'NOS', 50.00, '2024-02-17 12:20:53'),
(5, '182*182 mm(Eff.22.9%)/(7.56)Wp', 'NOS', 2.00, '2024-02-17 14:22:28'),
(6, '182*182 mm(Eff.22.9%)/(7.56)Wp', 'NOS', 100.00, '2024-02-17 15:18:01'),
(7, 'RFID', 'NOS', 41.00, '2024-02-17 16:07:50'),
(8, '182*182 mm(Eff.22.9%)/(7.56)Wp', 'NOS', 5.00, '2024-02-17 16:50:01');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `sno` int(11) NOT NULL,
  `materialName` varchar(500) NOT NULL,
  `materialType` varchar(255) NOT NULL,
  `quantity` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`sno`, `materialName`, `materialType`, `quantity`) VALUES
(1, '182*182 mm(Eff.22.9%)/(7.56)Wp', 'NOS', 91122.00),
(2, 'INTC RIBBON 0.350 mm Sn/Pb/ 60/40', 'KG', 968.02),
(5, 'BUS RIBBON 6mmxo.400 mm or 5*0.450 mm Sn/Pb/ 60/40', 'KG', 992.62),
(6, 'Solder wire(1mm dia) Sn 63/Pb 37 No Clean 2.2% ', 'KG', 1010.77),
(7, 'TEMPERED GLASS 2274X1128x3.2mm', 'NOS', 683.89),
(8, 'EVA 0.450mm or 450GSM +/- 0.3mm x1133mm', 'SQM', 562.86),
(9, 'BACK SHEET 1135(W)x0.330mm(T) mm', 'SQM', 681.43),
(10, 'Soldering Flux (952S)', 'LTR', 997.54),
(11, 'SPLIT JUNCTION BOX 25A fusing Rating', 'NOS', 877.00),
(12, '0.9', 'LTR', 816.25),
(13, 'Transparent Back LABEL 30x120mm', 'NOS', 877.00),
(14, 'SILICON PV SEALANT forJunction Box ', 'LTR', 996.31),
(25, 'Front Logo Sticker Size (mm) (22x50)', 'NOS', 877.00),
(26, 'Carton packing ', 'NOS', 877.00),
(27, 'RFID', 'NOS', 951.00),
(31, 'Aluminium (Frame:2280x35mm, Frame:1134x35mm, Corner Key: 23x42)', 'KG', 678.97);

-- --------------------------------------------------------

--
-- Table structure for table `inventorypanels`
--

CREATE TABLE `inventorypanels` (
  `sno` int(11) NOT NULL,
  `ModelName` varchar(500) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventorypanels`
--

INSERT INTO `inventorypanels` (`sno`, `ModelName`, `Quantity`) VALUES
(1, '550 Wp', 80),
(2, 'model 2', 8),
(3, 'model 3', 5),
(4, 'model 4', 26);

-- --------------------------------------------------------

--
-- Table structure for table `panelmodel`
--

CREATE TABLE `panelmodel` (
  `id` int(11) NOT NULL,
  `Model_Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `panelmodel`
--

INSERT INTO `panelmodel` (`id`, `Model_Name`) VALUES
(1, '550 Wp'),
(2, 'model 2'),
(3, 'model 3'),
(4, 'model 4');

-- --------------------------------------------------------

--
-- Table structure for table `panel_stock`
--

CREATE TABLE `panel_stock` (
  `sno` int(11) NOT NULL,
  `ModelName` varchar(500) NOT NULL,
  `CName` varchar(500) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `statusID` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `panel_stock`
--

INSERT INTO `panel_stock` (`sno`, `ModelName`, `CName`, `Quantity`, `timestamp`, `statusID`) VALUES
(33, '550 Wp', 'Gautam Solar', 5, '2024-02-16 16:20:06', 1),
(44, '550 Wp', 'Gautam Solar', 2, '2024-02-17 15:16:42', 1),
(46, 'model 2', 'Solid Solar', 4, '2024-02-17 15:19:52', 2),
(54, '550 Wp', 'Galo', 8, '2024-02-17 17:53:35', 1),
(55, '550 Wp', 'Galo', 8, '2024-02-17 18:02:12', 2);

-- --------------------------------------------------------

--
-- Table structure for table `raw_material`
--

CREATE TABLE `raw_material` (
  `sno` int(11) NOT NULL,
  `materialName` varchar(500) NOT NULL,
  `materialType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `raw_material`
--

INSERT INTO `raw_material` (`sno`, `materialName`, `materialType`) VALUES
(1, '182*182 mm(Eff.22.9%)/(7.56)Wp', 'NOS'),
(2, 'INTC RIBBON 0.350 mm Sn/Pb/ 60/40', 'KG'),
(5, 'BUS RIBBON 6mmxo.400 mm or 5*0.450 mm Sn/Pb/ 60/40', 'KG'),
(6, 'Solder wire(1mm dia) Sn 63/Pb 37 No Clean 2.2% ', 'KG'),
(7, 'TEMPERED GLASS 2274X1128x3.2mm', 'NOS'),
(8, 'EVA 0.450mm or 450GSM +/- 0.3mm x1133mm', 'SQM'),
(9, 'BACK SHEET 1135(W)x0.330mm(T) mm', 'SQM'),
(10, 'Soldering Flux (952S)', 'LTR'),
(11, 'SPLIT JUNCTION BOX 25A fusing Rating', 'NOS'),
(12, '0.9', 'LTR'),
(13, 'Transparent Back LABEL 30x120mm', 'NOS'),
(14, 'SILICON PV SEALANT forJunction Box ', 'LTR'),
(25, 'Front Logo Sticker Size (mm) (22x50)', 'NOS'),
(26, 'Carton packing ', 'NOS'),
(27, 'RFID', 'NOS'),
(31, 'Aluminium (Frame:2280x35mm, Frame:1134x35mm, Corner Key: 23x42)', 'KG');

-- --------------------------------------------------------

--
-- Table structure for table `raw_materialadded`
--

CREATE TABLE `raw_materialadded` (
  `sno` int(11) NOT NULL,
  `materialNamea` varchar(500) NOT NULL,
  `materialTypea` varchar(255) NOT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `raw_materialadded`
--

INSERT INTO `raw_materialadded` (`sno`, `materialNamea`, `materialTypea`, `quantity`, `timestamp`) VALUES
(7, '0.9', 'LTR', 45.00, '2024-02-15 14:46:24'),
(8, '0.9', 'LTR', 45.00, '2024-02-15 14:46:27'),
(9, '0.9', 'LTR', 65.28, '2024-02-15 15:35:00'),
(10, '182*182 mm(Eff.22.9%)/(7.56)Wp', 'NOS', 45.00, '2024-02-15 16:07:25'),
(11, '182*182 mm(Eff.22.9%)/(7.56)Wp', 'NOS', 2.00, '2024-02-15 16:09:15'),
(12, '182*182 mm(Eff.22.9%)/(7.56)Wp', 'NOS', 1.00, '2024-02-16 14:58:10'),
(13, '182*182 mm(Eff.22.9%)/(7.56)Wp', 'NOS', 4.00, '2024-02-16 14:58:17'),
(15, '0.9', 'LTR', 101.00, '2024-02-17 12:23:27'),
(16, 'EVA 0.450mm or 450GSM +/- 0.3mm x1133mm', 'SQM', 100.00, '2024-02-17 15:16:03'),
(17, 'EVA 0.450mm or 450GSM +/- 0.3mm x1133mm', 'SQM', 100.00, '2024-02-17 16:04:48'),
(18, 'RFID', 'NOS', 75.00, '2024-02-17 16:48:25'),
(19, 'RFID', 'NOS', 40.00, '2024-02-17 16:49:10'),
(20, 'Solder wire(1mm dia) Sn 63/Pb 37 No Clean 2.2% ', 'KG', 12.00, '2024-02-17 16:55:17');

-- --------------------------------------------------------

--
-- Table structure for table `req_material`
--

CREATE TABLE `req_material` (
  `sno` int(11) NOT NULL,
  `materialName` varchar(500) NOT NULL,
  `reqMaterial` decimal(10,2) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `req_material`
--

INSERT INTO `req_material` (`sno`, `materialName`, `reqMaterial`, `id`) VALUES
(1, '182*182 mm(Eff.22.9%)/(7.56)Wp', 72.00, 1),
(2, 'INTC RIBBON 0.350 mm Sn/Pb/ 60/40', 0.26, 1),
(3, 'BUS RIBBON 6mmxo.400 mm or 5*0.450 mm Sn/Pb/ 60/40', 0.06, 1),
(4, 'Solder wire(1mm dia) Sn 63/Pb 37 No Clean 2.2% ', 0.01, 1),
(5, 'TEMPERED GLASS 2274X1128x3.2mm', 2.57, 1),
(6, 'EVA 0.450mm or 450GSM +/- 0.3mm x1133mm', 5.18, 1),
(7, 'BACK SHEET 1135(W)x0.330mm(T) mm', 2.59, 1),
(8, 'Soldering Flux (952S)', 0.02, 1),
(9, 'SPLIT JUNCTION BOX 25A fusing Rating', 1.00, 1),
(10, '0.9', 0.25, 1),
(11, 'Transparent Back LABEL 30x120mm', 1.00, 1),
(12, 'SILICON PV SEALANT forJunction Box ', 0.03, 1),
(13, 'Front Logo Sticker Size (mm) (22x50)', 1.00, 1),
(14, 'Carton packing ', 1.00, 1),
(15, 'RFID', 1.00, 1),
(16, 'Aluminium (Frame:2280x35mm, Frame:1134x35mm, Corner Key: 23x42)', 2.61, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uom`
--

CREATE TABLE `uom` (
  `sno` int(11) NOT NULL,
  `materialType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uom`
--

INSERT INTO `uom` (`sno`, `materialType`) VALUES
(1, 'NOS'),
(2, 'KG'),
(3, 'SQM'),
(5, 'LTR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `damage`
--
ALTER TABLE `damage`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `inventorypanels`
--
ALTER TABLE `inventorypanels`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `panelmodel`
--
ALTER TABLE `panelmodel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panel_stock`
--
ALTER TABLE `panel_stock`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `raw_material`
--
ALTER TABLE `raw_material`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `raw_materialadded`
--
ALTER TABLE `raw_materialadded`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `req_material`
--
ALTER TABLE `req_material`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `uom`
--
ALTER TABLE `uom`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `damage`
--
ALTER TABLE `damage`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `inventorypanels`
--
ALTER TABLE `inventorypanels`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `panel_stock`
--
ALTER TABLE `panel_stock`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `raw_material`
--
ALTER TABLE `raw_material`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `raw_materialadded`
--
ALTER TABLE `raw_materialadded`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `req_material`
--
ALTER TABLE `req_material`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `uom`
--
ALTER TABLE `uom`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
