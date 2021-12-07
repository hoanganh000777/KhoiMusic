-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 07, 2021 lúc 03:29 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `banhangweb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `IdDanhMuc` int(11) NOT NULL,
  `tenDanhMuc` varchar(100) NOT NULL,
  `maDanhMuc` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`IdDanhMuc`, `tenDanhMuc`, `maDanhMuc`) VALUES
(5, 'Ukulele', 'U01'),
(6, 'Cajon', 'CJ01'),
(7, 'Guitar', 'G01'),
(9, 'Sáo trúc', 'ST11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `idSP` int(11) NOT NULL,
  `IdDanhMuc` int(11) NOT NULL,
  `tenSP` varchar(255) NOT NULL,
  `maSP` varchar(5) NOT NULL,
  `giaSP` varchar(50) NOT NULL,
  `soLuong` int(11) NOT NULL,
  `hinhAnh` varchar(50) NOT NULL,
  `noiDung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`idSP`, `IdDanhMuc`, `tenSP`, `maSP`, `giaSP`, `soLuong`, `hinhAnh`, `noiDung`) VALUES
(16, 7, 'Guitar Rosen 3', 'GR33', '1800000', 10, '1638801293_sp1.jpg', ' Guitar Rosen 3                      '),
(18, 5, 'Ukulele MSI18', 'UM18', '120000', 8, '1638779593_sp6.png', ' sdfdsfd    '),
(19, 6, 'CAJONS SUP-PRO04', 'PRO04', '860000', 12, '1638547759_CAJONS-SUP-PRO04-3.jpg', ' Cajon PRO04'),
(20, 9, 'Sáo La Trầm HL592V', 'ST592', '300000', 25, '1638779543_saotrucA4.jpg', 'ĐẶC TÍNH:  TONE LA TRẦM A4, \r\nchuẩn âm trên từng phím bấm, là dòng sản phẩm sáo trúc cơ bản cho người mới tập,\r\nCHUẨN ÂM 19 NỐT, FULL 3 QUẢNG , có tính thẩm mỹ cao, quấn chỉ trang trí nhiều vòng...\r\ncó tặng kèm 1 DÂY TREO MÀU NGẪU NHIÊN :)\r\n\r\n         '),
(21, 7, 'Guitar Taylor 114e', 'G114e', '18300000', 20, '1638776408_sp2.jpg', 'Tương tự Series 200, Series 100 cung cấp khả năng phục hồi trong điều kiện khí hậu biến đổi, và cần đàn hẹp hơn một chút.'),
(23, 6, 'Sela SE 053 Varios Cajon Green', 'CJ053', '950000', 20, '1638778402_cajon2.jpg', 'Cajon Sela SE 053 Varios Cajon Green'),
(24, 7, 'Guitar Acoustic Yamaha FX370C', 'GFX30', '7500000', 18, '1638778565_sp4.jpg', ' Đàn Acoustic Yamaha dòng FX là dòng đàn đang được ưa thích nhất hiện nay của Yamaha, với chất lượng âm thanh tốt độ bền cao.'),
(25, 7, ' Guitar Điện Tokai AST104 SOB', 'GT104', '20400000', 3, '1638778765_guitardien.jpg', 'Đàn mới 100% Full Box, Đầy đủ hóa đơn chứng từ: CO-CQ, Bảo hành 12 tháng chính hãng.');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`IdDanhMuc`),
  ADD KEY `IdDanhMuc` (`IdDanhMuc`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idSP`),
  ADD KEY `IdDanhMuc` (`IdDanhMuc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `IdDanhMuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`IdDanhMuc`) REFERENCES `danhmuc` (`IdDanhMuc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
