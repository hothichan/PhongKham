-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2024 at 06:35 AM
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
-- Database: `phongkham`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `Ten` int(11) NOT NULL,
  `TenTaiKhoan` varchar(30) NOT NULL,
  `MatKhau` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bacsi`
--

CREATE TABLE `bacsi` (
  `MaBS` int(11) NOT NULL,
  `TenBS` varchar(30) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` varchar(10) NOT NULL,
  `MaKhoa` int(11) NOT NULL,
  `GioiThieu` longtext NOT NULL,
  `DanhGia` int(11) NOT NULL,
  `anh` varchar(100) NOT NULL,
  `GiaKham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bacsi`
--

INSERT INTO `bacsi` (`MaBS`, `TenBS`, `sdt`, `email`, `NgaySinh`, `GioiTinh`, `MaKhoa`, `GioiThieu`, `DanhGia`, `anh`, `GiaKham`) VALUES
(34, 'Giáo sư, Tiến sĩ Hà Văn Quyết', '09234231134', '', '1976-07-08', 'Nam', 15, '<h2>Gi&aacute;o sư, Tiến sĩ, B&aacute;c sĩ H&agrave; Văn Quyết</h2>\r\n\r\n<ul>\r\n	<li>Gi&aacute;o sư, Tiến sỹ, B&aacute;c sĩ chuy&ecirc;n khoa Ngoại Ti&ecirc;u h&oacute;a</li>\r\n	<li>Chuy&ecirc;n gia đầu ng&agrave;nh trong lĩnh vực bệnh l&yacute; Ti&ecirc;u h&oacute;a</li>\r\n	<li>Kinh nghiệm l&agrave;m việc tr&ecirc;n 35 năm trong lĩnh vực bệnh l&yacute; Ti&ecirc;u h&oacute;a</li>\r\n	<li>Chuy&ecirc;n ng&agrave;nh Ngoại &ndash; Phẫu thuật Nội soi Ti&ecirc;u h&oacute;a, Ổ bụng &amp;&nbsp;c&aacute;c bệnh l&yacute; hậu m&ocirc;n, trực tr&agrave;ng.</li>\r\n	<li>B&aacute;c sĩ Nội tr&uacute; Bệnh viện Việt Đức&nbsp;</li>\r\n	<li>Nguy&ecirc;n Chủ nhiệm Bộ m&ocirc;n Ngoại - Đại học Y H&agrave; Nội&nbsp;</li>\r\n	<li>Nguy&ecirc;n Gi&aacute;m đốc Bệnh viện Đại học Y H&agrave; Nội</li>\r\n	<li>Nguy&ecirc;n Ph&oacute; Gi&aacute;m đốc Bệnh viện Việt Đức.</li>\r\n	<li>B&aacute;c sĩ kh&aacute;m cho người bệnh từ 3 tuổi trở l&ecirc;n</li>\r\n</ul>\r\n\r\n<h2><strong>Kh&aacute;m v&agrave; điều trị</strong></h2>\r\n\r\n<ul>\r\n	<li>Gi&aacute;o sư nhận kh&aacute;m, điều trị c&aacute;c bệnh l&yacute; kh&oacute; về Ti&ecirc;u h&oacute;a, hậu m&ocirc;n, trực tr&agrave;ng, gan mật.</li>\r\n	<li>Trực tiếp tiến h&agrave;nh Nội soi ti&ecirc;u h&oacute;a, dạ d&agrave;y, đại tr&agrave;ng</li>\r\n	<li>Kh&aacute;m, Nội soi, X&eacute;t nghiệm s&agrave;ng lọc ung thư đại trực tr&agrave;ng</li>\r\n	<li>Kh&aacute;m, Nội soi, X&eacute;t nghiệm s&agrave;ng lọc ung thư dạ d&agrave;y</li>\r\n	<li>Kh&aacute;m, Nội soi, X&eacute;t nghiệm s&agrave;ng lọc bệnh l&yacute; ung thư đường ti&ecirc;u h&oacute;a</li>\r\n	<li>Kh&aacute;m, Nội soi, tư vấn điều trị bệnh l&yacute; Hậu m&ocirc;n, Bệnh Trĩ Nội, Trĩ Ngoại.</li>\r\n</ul>\r\n\r\n<p>Kh&aacute;m v&agrave; điều trị c&aacute;c bệnh l&yacute; dạ d&agrave;y</p>\r\n\r\n<ul>\r\n	<li>Gắp dị vật đường ti&ecirc;u h&oacute;a</li>\r\n	<li>Đau dạ d&agrave;y</li>\r\n	<li>Chảy m&aacute;u dạ d&agrave;y&nbsp;</li>\r\n	<li>Đau thượng vị&nbsp;</li>\r\n	<li>Vi&ecirc;m dạ d&agrave;y</li>\r\n	<li>Lo&eacute;t dạ d&agrave;y t&aacute; tr&agrave;ng</li>\r\n	<li>Nhiễm Helicobacter pylori dạ d&agrave;y (HP)</li>\r\n	<li>Tr&agrave;o ngược dạ d&agrave;y thực quản (Gerd)</li>\r\n	<li>Tắc ruột&nbsp;</li>\r\n	<li>Polyp dạ d&agrave;y&nbsp;</li>\r\n	<li>Chảy m&aacute;u dạ d&agrave;y&nbsp;</li>\r\n	<li>Vi&ecirc;m dạ d&agrave;y ruột Virus</li>\r\n	<li>Vi&ecirc;m ruột thừa</li>\r\n	<li>Polyp dạ d&agrave;y</li>\r\n	<li>Ung thư dạ d&agrave;y</li>\r\n	<li>T&aacute;o b&oacute;n</li>\r\n	<li>Kh&oacute; nuốt</li>\r\n	<li>Kh&oacute; ti&ecirc;u</li>\r\n	<li>Ợ n&oacute;ng, Ợ chua</li>\r\n	<li>T&aacute;o b&oacute;n</li>\r\n</ul>\r\n\r\n<p>Bệnh l&yacute; đại tr&agrave;ng, trực tr&agrave;ng, hậu m&ocirc;n&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Hội chứng ruột k&iacute;ch th&iacute;ch (vi&ecirc;m đại tr&agrave;ng co thắt)</li>\r\n	<li>Vi&ecirc;m đại tr&agrave;ng</li>\r\n	<li>Vi&ecirc;m đại tr&agrave;ng m&agrave;ng giả</li>\r\n	<li>Vi&ecirc;m lo&eacute;t đại tr&agrave;ng</li>\r\n	<li>Bệnh trĩ, trĩ chảy m&aacute;u, r&ograve; hậu m&ocirc;n</li>\r\n	<li>R&ograve; hậu m&ocirc;n, ngứa hậu m&ocirc;n</li>\r\n	<li>Nứt kẽ hậu m&ocirc;n, đại tiện ra m&aacute;u, đại tiện kh&oacute;</li>\r\n	<li>Apxe hậu m&ocirc;n</li>\r\n	<li>Đi ngo&agrave;i ra m&aacute;u&nbsp;</li>\r\n</ul>\r\n\r\n<p><strong>Kh&aacute;m v&agrave; điều trị c&aacute;c bệnh l&yacute; về gan, mật&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Vi&ecirc;m t&uacute;i mật, sỏi mật&nbsp;</li>\r\n	<li>Vi&ecirc;m tụy</li>\r\n	<li>Vi&ecirc;m xơ đường mật</li>\r\n	<li>Vi&ecirc;m xơ gan do rượu</li>\r\n	<li>Xơ gan</li>\r\n	<li>U gan</li>\r\n</ul>\r\n\r\n<p><strong>Nội soi ti&ecirc;u h&oacute;a&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Gắp dị vật đường ti&ecirc;u h&oacute;a&nbsp;</li>\r\n	<li>Kh&aacute;m, Nội soi, tư vấn điều trị bệnh l&yacute; Hậu m&ocirc;n, Bệnh Trĩ Nội, Trĩ Ngoại</li>\r\n	<li>Kh&aacute;m, Nội soi, X&eacute;t nghiệm s&agrave;ng lọc ung thư đại trực tr&agrave;ng</li>\r\n	<li>Kh&aacute;m, Nội soi, X&eacute;t nghiệm s&agrave;ng lọc bệnh l&yacute; ung thư đường ti&ecirc;u h&oacute;a</li>\r\n	<li>Kh&aacute;m, nội soi dạ d&agrave;y&nbsp;</li>\r\n	<li>Nội soi dạ d&agrave;y (c&oacute; g&acirc;y m&ecirc;)</li>\r\n	<li>Nội soi đại tr&agrave;ng (c&oacute; g&acirc;y m&ecirc;)</li>\r\n	<li>Nội soi cắt polyp dạ d&agrave;y</li>\r\n	<li>Nội soi cắt polyp đại trực tr&agrave;ng&nbsp;&nbsp;</li>\r\n	<li>Phẫu thuật nội soi cắt u dưới ni&ecirc;m mạc dạ d&agrave;y &ndash; t&aacute; tr&agrave;ng, đại tr&agrave;ng</li>\r\n	<li>Phẫu thuật nội soi tr&agrave;o ngược dạ d&agrave;y thực quản&nbsp;</li>\r\n</ul>\r\n\r\n<h3><strong>Qu&aacute; tr&igrave;nh Đ&agrave;o tạo</strong></h3>\r\n\r\n<ul>\r\n	<li>Tốt nghiệp B&aacute;c sĩ Đa khoa, Đại học Y H&agrave; Nội.</li>\r\n	<li>B&aacute;c sĩ Nội tr&uacute; tại c&aacute;c bệnh viện ở Paris, Cộng h&ograve;a Ph&aacute;p</li>\r\n	<li>Thực tập sinh khoa Ti&ecirc;u h&oacute;a trường Đại học Tokai, Nhật Bản</li>\r\n	<li>Tu nghiệp về chuy&ecirc;n khoa Ti&ecirc;u h&oacute;a tại Mỹ, Singapore, H&agrave;n Quốc&nbsp;</li>\r\n</ul>\r\n\r\n<h3><strong>S&aacute;ch v&agrave; c&aacute;c c&ocirc;ng tr&igrave;nh nghi&ecirc;n cứu, b&aacute;o c&aacute;o khoa học</strong></h3>\r\n\r\n<ul>\r\n	<li>Chủ bi&ecirc;n nhiều bộ s&aacute;ch gi&aacute;o khoa về Ngoại khoa phẫu thuật ti&ecirc;u h&oacute;a v&agrave; chuy&ecirc;n s&acirc;u về ti&ecirc;u h&oacute;a.</li>\r\n	<li>Tham gia c&aacute;c đề t&agrave;i nghi&ecirc;n cứu khoa học về ung thư dạ d&agrave;y, đại trực tr&agrave;ng; c&aacute;c chủ đề về bệnh l&yacute; tụy; c&aacute;c loại phẫu thuật nội soi, nội soi can thiệp; bệnh l&yacute; về hậu m&ocirc;n trực tr&agrave;ng.&nbsp;</li>\r\n</ul>\r\n\r\n<h3><strong>Th&agrave;nh vi&ecirc;n c&aacute;c Hội khoa học, tổ chức chuy&ecirc;n m&ocirc;n</strong></h3>\r\n\r\n<ul>\r\n	<li>Nguy&ecirc;n Tổng thư k&iacute; Hội Ngoại khoa Việt Nam&nbsp;</li>\r\n	<li>Ph&oacute; Chủ tịch Hội Khoa học về Hậu m&ocirc;n trực tr&agrave;ng&nbsp;</li>\r\n</ul>\r\n\r\n<h3><strong>Tham gia c&aacute;c chuy&ecirc;n đề sức khỏe&nbsp;</strong></h3>\r\n\r\n<ul>\r\n	<li>Ban bi&ecirc;n tập Tạp ch&iacute; Y học thực h&agrave;nh</li>\r\n	<li>Ban bi&ecirc;n tập Tạp ch&iacute; Ngoại khoa</li>\r\n	<li>Ban bi&ecirc;n tập Tạp ch&iacute; Hậu m&ocirc;n Trực tr&agrave;ng</li>\r\n</ul>\r\n', 4, 'gs-ha-van-quyet.jpg', 130000),
(35, ' Bác sĩ Tiết Kim Phong', '', '', '1980-02-09', 'Nam', 15, '<h2>B&aacute;c sĩ Tiết Kim Phong</h2>\r\n\r\n<ul>\r\n	<li>B&aacute;c sĩ đang c&ocirc;ng t&aacute;c tại Ph&ograve;ng kh&aacute;m Đa khoa Quốc tế Nh&acirc;n Hậu</li>\r\n</ul>\r\n\r\n<h3>Qu&aacute; tr&igrave;nh c&ocirc;ng t&aacute;c</h3>\r\n\r\n<ul>\r\n	<li>B&aacute;c sĩ chuy&ecirc;n khoa Nội Ti&ecirc;u h&oacute;a, Ph&ograve;ng kh&aacute;m Đa khoa Quốc tế Nh&acirc;n Hậu (2009 - nay)</li>\r\n</ul>\r\n\r\n<h3>Qu&aacute; tr&igrave;nh đ&agrave;o tạo</h3>\r\n\r\n<ul>\r\n	<li>Tốt nghiệp B&aacute;c sĩ Đa khoa, Đại học Y dược TP.HCM (2009)</li>\r\n</ul>\r\n\r\n<h2>Kh&aacute;m v&agrave; điều trị</h2>\r\n\r\n<p><strong>B&aacute;c sĩ kh&aacute;m v&agrave; điều trị c&aacute;c bệnh l&yacute; Nội ti&ecirc;u h&oacute;a</strong></p>\r\n\r\n<ul>\r\n	<li>Đau dạ d&agrave;y</li>\r\n	<li>Tr&agrave;o ngược dạ d&agrave;y - thực quản</li>\r\n	<li>Vi&ecirc;m hang vị dạ d&agrave;y</li>\r\n	<li>Vi&ecirc;m, lo&eacute;t dạ d&agrave;y</li>\r\n	<li>Vi&ecirc;m, lo&eacute;t t&aacute; tr&agrave;ng</li>\r\n	<li>Đau thượng vị</li>\r\n	<li>Kh&oacute; nuốt</li>\r\n	<li>Kh&oacute; ti&ecirc;u</li>\r\n	<li>Tăng huyết &aacute;p: đau đầu do huyết &aacute;p</li>\r\n	<li>Nhiễm si&ecirc;u vi: sốt</li>\r\n</ul>\r\n\r\n<p><strong>C&aacute;c bệnh l&yacute; về ruột</strong></p>\r\n\r\n<ul>\r\n	<li>Hội chứng ruột k&iacute;ch th&iacute;ch</li>\r\n	<li>Bệnh l&yacute; kh&ocirc;ng dung nạp lactose</li>\r\n	<li>Vi&ecirc;m đại tr&agrave;ng</li>\r\n	<li>Polyp, ung thư đại tr&agrave;ng &hellip;</li>\r\n	<li>Đi ngo&agrave;i ra m&aacute;u</li>\r\n	<li>Nứt kẽ hậu m&ocirc;n, đại tiện kh&oacute;</li>\r\n</ul>\r\n\r\n<p><strong>Kh&aacute;m v&agrave; điều trị c&aacute;c bệnh l&yacute; gan, mật</strong></p>\r\n\r\n<ul>\r\n	<li>Vi&ecirc;m xơ gan do rượu</li>\r\n	<li>Gan nhiễm mỡ</li>\r\n</ul>\r\n', 5, 'bs-tiet-kim-phong.jpg', 120000),
(36, ' Bác sĩ Chuyên khoa I Bùi Minh', '', '', '1982-07-23', 'Nữ', 15, '<h2>B&aacute;c sĩ Chuy&ecirc;n khoa I B&ugrave;i Minh H&agrave;</h2>\r\n\r\n<ul>\r\n	<li>B&aacute;c sĩ Chuy&ecirc;n khoa Nội Ti&ecirc;u h&oacute;a, Ph&ograve;ng kh&aacute;m 28B Điện Bi&ecirc;n Phủ</li>\r\n	<li>Từng c&ocirc;ng t&aacute;c tại&nbsp;Bệnh viện Hữu nghị Việt X&ocirc;</li>\r\n	<li>B&aacute;c sĩ nhận kh&aacute;m cho bệnh nh&acirc;n từ 10 tuổi trở l&ecirc;n</li>\r\n</ul>\r\n\r\n<h2>Kh&aacute;m v&agrave; điều trị</h2>\r\n\r\n<ul>\r\n	<li>Tr&agrave;o ngược dạ d&agrave;y thực quản</li>\r\n	<li>Vi&ecirc;m lo&eacute;t đại tr&agrave;ng</li>\r\n	<li>Bệnh trĩ</li>\r\n	<li>Bệnh l&yacute; về gan: vi&ecirc;m gan, ung thư gan</li>\r\n	<li>Bệnh vi&ecirc;m tụy</li>\r\n	<li>Sỏi t&uacute;i mật</li>\r\n	<li>Hội chứng ruột k&iacute;ch th&iacute;ch</li>\r\n	<li>Bệnh ti&ecirc;u chảy, t&aacute;o b&oacute;n.</li>\r\n</ul>\r\n\r\n<h3>Qu&aacute; tr&igrave;nh c&ocirc;ng t&aacute;c</h3>\r\n\r\n<ul>\r\n	<li>B&aacute;c sĩ khoa Ti&ecirc;u ho&aacute;, Ph&ograve;ng kh&aacute;m Đa khoa 28B Điện Bi&ecirc;n Phủ (2004-nay)</li>\r\n	<li>B&aacute;c sĩ khoa Ti&ecirc;u h&oacute;a, Bệnh viện Hữu nghị Việt X&ocirc; (1981- 2004)</li>\r\n</ul>\r\n\r\n<h3>Qu&aacute; tr&igrave;nh đ&agrave;o tạo</h3>\r\n\r\n<ul>\r\n	<li>B&aacute;c sĩ Đa khoa, Đại học Y H&agrave; Nội (1975 - 1981)</li>\r\n</ul>\r\n\r\n<h3>Th&agrave;nh vi&ecirc;n c&aacute;c Hội khoa học, tổ chức chuy&ecirc;n m&ocirc;n</h3>\r\n\r\n<ul>\r\n	<li>Hội Ti&ecirc;u h&oacute;a Việt Nam</li>\r\n</ul>\r\n', 4, 'bs-bui-minh-ha.jpg', 110000),
(37, ' Thạc sĩ, Bác sĩ Hứa Thúy Vi', '', '', '1986-04-23', 'Nữ', 15, '<h2>Thạc sĩ, B&aacute;c sĩ Hứa Th&uacute;y Vi</h2>\r\n\r\n<ul>\r\n	<li>Gi&aacute;m đốc Ph&ograve;ng kh&aacute;m Chuy&ecirc;n khoa Nội An Phước</li>\r\n	<li>B&aacute;c sĩ chuy&ecirc;n khoa Ti&ecirc;u h&oacute;a - Gan mật - Nội soi ti&ecirc;u h&oacute;a</li>\r\n	<li>B&aacute;c sĩ nhận kh&aacute;m cho bệnh nh&acirc;n từ 15 tuổi trở l&ecirc;n</li>\r\n	<li>Hơn 15 năm c&ocirc;ng t&aacute;c tại Bệnh viện Nh&acirc;n d&acirc;n 115</li>\r\n</ul>\r\n\r\n<h3>Qu&aacute; tr&igrave;nh c&ocirc;ng t&aacute;c</h3>\r\n\r\n<ul>\r\n	<li>Hiện l&agrave;&nbsp;Gi&aacute;m đốc Ph&ograve;ng kh&aacute;m Chuy&ecirc;n khoa Nội An Phước (2018 - nay)</li>\r\n	<li>B&aacute;c sĩ điều trị, khoa Ti&ecirc;u h&oacute;a, Bệnh viện Nh&acirc;n d&acirc;n 115 (2004 - 2018)</li>\r\n	<li>B&aacute;c sĩ nội soi ti&ecirc;u h&oacute;a, khoa Nội soi,&nbsp;Bệnh viện Nh&acirc;n d&acirc;n 115 (2004 - 2018)</li>\r\n	<li>B&aacute;c sĩ lu&acirc;n khoa,&nbsp;Bệnh viện Nh&acirc;n d&acirc;n 115 (2003 - 2004)</li>\r\n</ul>\r\n\r\n<h3>Qu&aacute; tr&igrave;nh đ&agrave;o tạo</h3>\r\n\r\n<ul>\r\n	<li>Tốt nghiệp Thạc sĩ chuy&ecirc;n ng&agrave;nh Nội tổng qu&aacute;t, Đại học Y dược TPHCM (2012)</li>\r\n	<li>Tốt nghiệp B&aacute;c sĩ đa khoa, Đại học Y khoa Phạm Ngọc Thạch (2002)</li>\r\n	<li>Chứng chỉ Nội soi đại tr&agrave;ng, Bệnh viện Chợ Rẫy (2015)</li>\r\n	<li>Chứng chỉ Nội soi dạ d&agrave;y - t&aacute; tr&agrave;ng, Bệnh viện Nh&acirc;n d&acirc;n 115 (2014)</li>\r\n	<li>Chứng chỉ Si&ecirc;u &acirc;m tổng qu&aacute;t thực h&agrave;nh, Bệnh viện Đại học Y dược TPHCM (2005)</li>\r\n</ul>\r\n\r\n<h3>Th&agrave;nh vi&ecirc;n c&aacute;c Hội khoa học, tổ chức chuy&ecirc;n m&ocirc;n</h3>\r\n\r\n<ul>\r\n	<li>Hội Ti&ecirc;u h&oacute;a - Gan mật</li>\r\n</ul>\r\n\r\n<h2>Kh&aacute;m v&agrave; điều trị</h2>\r\n\r\n<p><strong>B&aacute;c sĩ kh&aacute;m v&agrave; điều trị:</strong></p>\r\n\r\n<ul>\r\n	<li>Vi&ecirc;m lo&eacute;t dạ d&agrave;y: đau bụng, n&ocirc;n &oacute;i, đầy bụng</li>\r\n	<li>Vi&ecirc;m thực quản tr&agrave;o ngược: nghẹn, nuốt nghẹn, kh&oacute; thở, ho k&eacute;o d&agrave;i</li>\r\n	<li>Nhiễm HP dạ d&agrave;y: đau bụng, n&ocirc;n &oacute;i, đầy bụng</li>\r\n	<li>Lo&eacute;t thực quản: nuốt vướng</li>\r\n	<li>Đầy bụng chưa r&otilde; nguy&ecirc;n nh&acirc;n: đầy, chướng bụng</li>\r\n	<li>Đau bụng chưa r&otilde; nguy&ecirc;n nh&acirc;n: đau bụng</li>\r\n	<li>Vi&ecirc;m đại tr&agrave;ng: rối loạn đi ti&ecirc;u l&uacute;c t&aacute;o b&oacute;n l&uacute;c ti&ecirc;u chảy</li>\r\n	<li>Vi&ecirc;m ruột: đau bụng, ti&ecirc;u lỏng, ti&ecirc;u m&aacute;u, sốt</li>\r\n	<li>Hội chứng ruột k&iacute;ch th&iacute;ch: rối loạn đi ti&ecirc;u l&uacute;c t&aacute;o b&oacute;n l&uacute;c ti&ecirc;u chảy</li>\r\n	<li>Bệnh Crohn: đau bụng, ti&ecirc;u m&aacute;u, sụt c&acirc;n</li>\r\n	<li>Rối loạn ti&ecirc;u ho&aacute;: rối loạn đi ti&ecirc;u</li>\r\n	<li>Vi&ecirc;m gan si&ecirc;u vi B tăng men gan, đầy bụng, v&agrave;ng da, v&agrave;ng mắt</li>\r\n	<li>Vi&ecirc;m gan si&ecirc;u vi C: c&oacute; thể chưa c&oacute; triệu chứng qua kh&aacute;m sức khoẻ</li>\r\n	<li>Xơ gan do rượu: v&agrave;ng da, v&agrave;ng mắt, tiểu v&agrave;ng</li>\r\n	<li>Xơ gan do vi&ecirc;m gan si&ecirc;u vi: v&agrave;ng da, v&agrave;ng mắt, tiểu v&agrave;ng</li>\r\n	<li>Vi&ecirc;m gan chưa r&otilde; nguy&ecirc;n nh&acirc;n: tăng men gan, ngứa, ăn k&eacute;m</li>\r\n	<li>Tăng men gan: tăng men gan, ngứa, ăn k&eacute;m</li>\r\n	<li>D&atilde;n tĩnh mạch thực quản: ti&ecirc;u ph&acirc;n đen, hoặc c&oacute; tiền căn xơ gan trước đ&oacute;</li>\r\n	<li>V&agrave;ng da chưa r&otilde; nguy&ecirc;n nh&acirc;n: v&agrave;ng da, v&agrave;ng mắt, tiều v&agrave;ng</li>\r\n	<li>THA, Đ&aacute;i th&aacute;o đường</li>\r\n</ul>\r\n', 5, '104940-bs-vi.jpg', 160000),
(38, ' Thạc sĩ Bác sĩ Trần Thị Kim N', '', '', '1974-12-18', 'Nữ', 16, '<h2>Thạc sĩ B&aacute;c sĩ Trần Thị Kim Nguy&ecirc;n</h2>\r\n\r\n<ul>\r\n	<li>Gần 35 năm kinh nghiệm kh&aacute;m v&agrave; điều trị bệnh l&yacute; Nội Tổng qu&aacute;t, Tim mạch v&agrave; c&aacute;c bệnh ở người cao tuổi</li>\r\n	<li>C&ocirc;ng t&aacute;c nhiều năm tại khoa Tim mạch kỹ thuật chuy&ecirc;n s&acirc;u, Bệnh viện Thống Nhất TP. HCM</li>\r\n	<li>Nguy&ecirc;n Ph&oacute; khoa Nội Tổng qu&aacute;t, Bệnh viện Đa khoa Quốc tế Vũ Anh</li>\r\n	<li>Tốt nghiệp B&aacute;c sĩ, Đại học Y khoa Odessa mang t&ecirc;n N.I PIRAGOV (Li&ecirc;n X&ocirc; cũ)</li>\r\n</ul>\r\n\r\n<h2>Kh&aacute;m v&agrave; điều trị</h2>\r\n\r\n<ul>\r\n	<li>C&aacute;c bệnh l&yacute; tim mạch: rối loạn nhịp tim, tăng huyết &aacute;p, rối loạn mỡ m&aacute;u,...</li>\r\n	<li>C&aacute;c bệnh l&yacute; nội khoa, c&aacute;c bệnh ở người cao tuổi</li>\r\n</ul>\r\n\r\n<h3>Qu&aacute; tr&igrave;nh c&ocirc;ng t&aacute;c</h3>\r\n\r\n<ul>\r\n	<li>B&aacute;c sĩ Tim mạch v&agrave; Nội Tổng qu&aacute;t, Ph&ograve;ng kh&aacute;m SIM Med (Nay)</li>\r\n	<li>B&aacute;c sĩ điều trị, Ph&ograve;ng kh&aacute;m Đa khoa Th&aacute;nh Mẫu (2017 - 2021)</li>\r\n	<li>B&aacute;c sĩ, ki&ecirc;m Gi&aacute;m đốc Chuy&ecirc;n m&ocirc;n, Ph&ograve;ng kh&aacute;m Đa khoa Th&aacute;nh Mẫu (2009 - 2017)</li>\r\n	<li>B&aacute;c sĩ, ki&ecirc;m Ph&oacute; khoa Nội Tổng qu&aacute;t, Bệnh viện Đa khoa Quốc tế Vũ Anh (2009)</li>\r\n	<li>B&aacute;c sĩ điều trị Trung t&acirc;m Tim mạch người cao tuổi, Khoa Tim mạch kỹ thuật chuy&ecirc;n s&acirc;u, Bệnh viện Thống Nhất TP. HCM (1989 - 2008)</li>\r\n</ul>\r\n\r\n<h3>Qu&aacute; tr&igrave;nh đ&agrave;o tạo</h3>\r\n\r\n<ul>\r\n	<li>Thạc sĩ Y học, Đại học Y Dược TP. HCM (1997)</li>\r\n	<li>Tốt nghiệp B&aacute;c sĩ, Đại học Y khoa Odessa mang t&ecirc;n N.I PIRAGOV (Li&ecirc;n X&ocirc; cũ) (1988)</li>\r\n</ul>\r\n\r\n<h3>Chứng chỉ trong nước hoặc nước ngo&agrave;i</h3>\r\n\r\n<ul>\r\n	<li>Kiến thức về bệnh Vi&ecirc;m gan si&ecirc;u vi B, C,&nbsp;Đại học Y khoa Phạm Ngọc Thạch (06/2022)</li>\r\n	<li>Chẩn đo&aacute;n v&agrave; điều trị suy tim,&nbsp;Bệnh viện Đại học Y Dược TP. HCM (04/2022)</li>\r\n	<li>C&aacute;c c&aacute;ch tiếp cận trong điều trị COPD - Qu&aacute; khứ hiện tại v&agrave; tương lai, Hội h&ocirc; hấp TP. HCM (03/2022)</li>\r\n	<li>Tiếp cận &amp; quản l&yacute; đa chiều bệnh l&yacute; tim mạch,&nbsp;Hội Y học TP. HCM (05/2021)</li>\r\n	<li>Xu hướng mới trong điều trị bệnh l&yacute; tim mạch hiện nay,&nbsp;Đại học Y Dược TP. HCM (11/2019)</li>\r\n	<li>Điều trị tối ưu v&agrave; to&agrave;n diện bệnh l&yacute; tim mạch - cập nhật ACC, ESC, HRS, Hội Y học TP. HCM (09/2019)</li>\r\n	<li>Cập nhật điều trị COPD v&agrave; hen theo khuyến c&aacute;o mới v&agrave; thực tế &aacute;p dụng tại Việt Nam, Bệnh viện Chợ Rẫy (12/2018)</li>\r\n	<li>Điều trị suy tim,&nbsp;Đại học Y Dược TP. HCM (06/2018)</li>\r\n	<li>Cập nhật c&aacute;c phương ph&aacute;p can thiệp nội mạch, điều trị bệnh l&yacute; mạch m&aacute;u c&oacute; sử dụng thuốc ti&ecirc;u sợi huyết,&nbsp;Bệnh viện Chợ Rẫy (05/2018)</li>\r\n	<li>...</li>\r\n</ul>\r\n\r\n<h3><strong>Giải thưởng</strong></h3>\r\n\r\n<ul>\r\n	<li>Giải thưởng Nh&agrave; Nghi&ecirc;n cứu trẻ của Hội Tim mạch Việt Nam (2005)</li>\r\n</ul>\r\n', 3, '164957-bs-kim-nguyen.jpg', 400000),
(39, 'Thạc sĩ, Bác sĩ Nguyễn Hữu Tùn', '', '', '1974-08-22', 'Nam', 16, '<h2>Thạc sĩ, B&aacute;c sĩ Nguyễn Hữu T&ugrave;ng</h2>\r\n\r\n<ul>\r\n	<li>Gần 25 năm kinh nghiệm trong lĩnh vực Tim mạch</li>\r\n	<li>Trưởng khoa Tim mạch, Bệnh viện Quốc tế City</li>\r\n	<li>B&aacute;c sĩ từng c&ocirc;ng t&aacute;c tại Bệnh viện Tim TP. HCM, Bệnh viện Tim T&acirc;m Đức</li>\r\n</ul>\r\n\r\n<h2>Kh&aacute;m v&agrave; điều trị</h2>\r\n\r\n<p>B&aacute;c sĩ nhận kh&aacute;m v&agrave; điều trị c&aacute;c vấn đề về tim mạch:</p>\r\n\r\n<ul>\r\n	<li>Bệnh mạch v&agrave;nh: đau ngực tr&aacute;i, kh&oacute; thở</li>\r\n	<li>Nhồi m&aacute;u cơ tim: đau ngực tr&aacute;i, kh&oacute; thở</li>\r\n	<li>Xơ vữa mạch m&aacute;u: đau ngực, đau ch&acirc;n khi đi lại, tai biến mạch n&atilde;o</li>\r\n	<li>Hẹp động mạch cảnh: đau đầu, ch&oacute;ng mặt, tai biến mạch n&atilde;o</li>\r\n	<li>Đột quỵ: yếu tay ch&acirc;n, liệt mặt</li>\r\n	<li>Tăng huyết &aacute;p: huyết &aacute;p cao, đau ngực, đau đầu</li>\r\n	<li>Bệnh tim do đ&aacute;i th&aacute;o đường: đau ngực, kh&oacute; thở</li>\r\n	<li>Rối loạn lipid m&aacute;u: tăng lipid m&aacute;u, bệnh mạch v&agrave;nh, đột quỵ</li>\r\n	<li>Tăng cholesterol m&aacute;u gia đ&igrave;nh: tăng LDL-C m&aacute;u &gt; 4.0 mmol/L, u v&agrave;ng ở da, bệnh mạch v&agrave;nh</li>\r\n	<li>Tăng triglycerid m&aacute;u: triglycerid m&aacute;u tăng cao, ăn kh&oacute; ti&ecirc;u, đau bụng, vi&ecirc;m tụy</li>\r\n	<li>Rối loạn lipid m&aacute;u hỗn hợp: tăng LDL-C m&aacute;u, tăng triglycerid m&aacute;u, bệnh mạch v&agrave;nh</li>\r\n	<li>Bệnh động mạch chủ di truyền: tiền sử gia đ&igrave;nh mắc bệnh hoặc động mạch chủ gi&atilde;n vỡ sớm</li>\r\n	<li>Bệnh tim bẩm sinh: th&ocirc;ng li&ecirc;n nhĩ, th&ocirc;ng li&ecirc;n thất, c&ograve;n ống động mạch, hẹp phổi, Fallot</li>\r\n	<li>C&oacute; tiếng thổi ở tim, kh&oacute; thở, đau ngực</li>\r\n	<li>Bệnh tim trẻ em: kh&oacute; thở, đau ngực, t&iacute;m t&aacute;i, chậm lớn, hay bị vi&ecirc;m phổi t&aacute;i ph&aacute;t&nbsp;</li>\r\n	<li>Hở van hai l&aacute;: kh&oacute; thở, đau ngực, mệt</li>\r\n	<li>Hẹp van hai l&aacute;: kh&oacute; thở, đau ngực, mệt</li>\r\n	<li>Hở van động mạch chủ: kh&oacute; thở, đau ngực, mệt</li>\r\n	<li>Hẹp van động mạch chủ: kh&oacute; thở, đau ngực, mệt</li>\r\n	<li>Suy tim: kh&oacute; thở, ph&ugrave;, mệt&nbsp;</li>\r\n	<li>Rung nhĩ: hồi hộp, tim đập kh&ocirc;ng đều</li>\r\n	<li>Ngoại t&acirc;m thu thất: tim đập kh&ocirc;ng đều</li>\r\n	<li>Rối loạn tim nhanh: tim đập nhanh, hồi hộp, đ&aacute;nh trống ngực</li>\r\n	<li>Suy gi&atilde;n tĩnh mạch chi dưới: t&ecirc; ch&acirc;n khi đứng, gi&atilde;n mạch m&aacute;u ở ch&acirc;n</li>\r\n	<li>Tăng &aacute;p động mạch phổi: kh&oacute; thở, đau ngực, mệt&nbsp;</li>\r\n</ul>\r\n\r\n<h3>Qu&aacute; tr&igrave;nh c&ocirc;ng t&aacute;c</h3>\r\n\r\n<ul>\r\n	<li>Hiện l&agrave; Trưởng khoa Tim mạch, Bệnh viện Quốc tế City (2013 - Nay)</li>\r\n	<li>B&aacute;c sĩ tại Bệnh viện Tim T&acirc;m Đức (2006 - 2012)</li>\r\n	<li>B&aacute;c sĩ Viện Tim TP.HCM (2004 - 2006)</li>\r\n	<li>L&agrave;m việc tại khoa Hỗ trợ sống n&acirc;ng cao d&agrave;nh cho người lớn tại Bệnh viện B&agrave; Rịa &ndash; Vũng T&agrave;u (1999 - 2001)</li>\r\n</ul>\r\n\r\n<h3>Qu&aacute; tr&igrave;nh đ&agrave;o tạo</h3>\r\n\r\n<ul>\r\n	<li>Tốt nghiệp B&aacute;c sĩ đa khoa, Đại học Y dược TP.HCM (1998)</li>\r\n	<li>Tốt nghiệp Thạc sĩ, Đại học Y dược TP.HCM (2004)</li>\r\n	<li>Chứng chỉ về Tim mạch của Viện Tim TP.HCM (2005)</li>\r\n	<li>Chứng chỉ về Điện sinh l&yacute; tim của Bệnh viện Đa khoa Cựu chiến binh Đ&agrave;i Bắc, Đ&agrave;i Loan (2010)</li>\r\n</ul>\r\n', 4, '145900-nht.png', 300000),
(40, ' Tiến sĩ, Bác sĩ chuyên khoa I', '', '', '1976-11-25', 'Nữ', 16, '<h2>Tiến sĩ, B&aacute;c sĩ chuy&ecirc;n khoa II Chu Minh H&agrave;</h2>\r\n\r\n<ul>\r\n	<li>Thầy thuốc ưu t&uacute;, B&aacute;c sĩ chuy&ecirc;n khoa Nội Tim mạch</li>\r\n	<li>Nguy&ecirc;n Trưởng khoa Tim mạch, Ph&oacute; Gi&aacute;m đốc trung t&acirc;m Tim mạch Bệnh viện E</li>\r\n	<li>Hơn 30 năm kinh nghiệm kh&aacute;m v&agrave; điều trị c&aacute;c bệnh Tim mạch&nbsp;Nội tổng qu&aacute;t</li>\r\n	<li>B&aacute;c sĩ nhận kh&aacute;m c&aacute;c bệnh nh&acirc;n từ 16 tuổi trở l&ecirc;n</li>\r\n</ul>\r\n\r\n<h2>Kh&aacute;m v&agrave; điều trị</h2>\r\n\r\n<ul>\r\n	<li>Tăng huyết &aacute;p</li>\r\n	<li>Bệnh mạch v&agrave;nh</li>\r\n	<li>Bệnh đột quỵ</li>\r\n	<li>Bệnh suy tim</li>\r\n	<li>Bệnh l&yacute; về cơ tim v&agrave; m&agrave;ng ngo&agrave;i tim</li>\r\n	<li>Bệnh l&yacute; rối loạn về nhịp</li>\r\n	<li>Kh&aacute;m tổng qu&aacute;t cho c&aacute; nh&acirc;n&nbsp;</li>\r\n</ul>\r\n\r\n<h3>Qu&aacute; tr&igrave;nh c&ocirc;ng t&aacute;c</h3>\r\n\r\n<ul>\r\n	<li>B&aacute;c sĩ Nội tim mạch,&nbsp;Tổ hợp y tế MediPlus (2020 - nay)</li>\r\n	<li>Trưởng khoa Nội Tổng hợp, Bệnh viện E (2016 - 2020)</li>\r\n	<li>Trưởng ph&ograve;ng tổ chức c&aacute;n bộ, Bệnh viện E (2013 - 2016)</li>\r\n	<li>Trưởng khoa Tim mạch , Ph&oacute; Gi&aacute;m đốc trung t&acirc;m Tim mạch, Bệnh viện E (2009 - 2013)</li>\r\n	<li>B&aacute;c sĩ Trưởng khoa Tim mạch, Bệnh viện E (2008 - 2009)</li>\r\n	<li>B&aacute;c sĩ Ph&oacute; khoa Tim mạch, Bệnh viện E (2006 - 2008)</li>\r\n	<li>B&aacute;c sĩ khoa Tim mạch, Bệnh viện E (2004 - 2006)</li>\r\n	<li>B&aacute;c sĩ Trưởng khoa Kh&aacute;m bệnh,&nbsp;Bệnh viện Việt Tiệp Hải Ph&ograve;ng (2000 - 2004)</li>\r\n	<li>B&aacute;c sĩ khoa Nội Tim mạch,&nbsp;Bệnh viện Việt Tiệp Hải Ph&ograve;ng (1989 - 2000)</li>\r\n</ul>\r\n\r\n<h3>Qu&aacute; tr&igrave;nh đ&agrave;o tạo</h3>\r\n\r\n<ul>\r\n	<li>Tiến sĩ Y học,&nbsp;Học viện Qu&acirc;n Y (2009)</li>\r\n	<li>B&aacute;c sĩ chuy&ecirc;n khoa II,&nbsp;Học viện Qu&acirc;n Y (2004)</li>\r\n	<li>B&aacute;c sĩ&nbsp;Chuy&ecirc;n khoa cấp I,&nbsp;Trường Đại Học Y H&agrave; Nội (1997)</li>\r\n	<li>Tốt nghiệp Đại học Y H&agrave; Nội</li>\r\n	<li>Chứng chỉ Tim Mạch, Nhật Bản (2012)</li>\r\n	<li>Chứng chỉ Si&ecirc;u &acirc;m tim,&nbsp;Viện Tim Mạch Bệnh Viện Bạch Mai (2004)</li>\r\n</ul>\r\n\r\n<h3>Giải thưởng</h3>\r\n\r\n<ul>\r\n	<li>Được Nh&agrave; Nước Trao tặng danh hiệu &ldquo;Thầy thuốc ưu t&uacute;&rdquo;</li>\r\n</ul>\r\n\r\n<h3>Th&agrave;nh vi&ecirc;n c&aacute;c Hội khoa học, tổ chức chuy&ecirc;n m&ocirc;n</h3>\r\n\r\n<ul>\r\n	<li>Th&agrave;nh vi&ecirc;n của Hội đồng khoa học Bệnh Viện E</li>\r\n</ul>\r\n', 4, '100159-bs-chu-minh-ha.png', 250000),
(41, 'Thạc sĩ, Bác sĩ Bùi Thị Xuân N', '', '', '1982-07-22', 'Nữ', 16, '<h2>Thạc sĩ, B&aacute;c sĩ B&ugrave;i Xu&acirc;n Nga</h2>\r\n\r\n<ul>\r\n	<li>Hơn 20 năm kinh nghiệm kh&aacute;m v&agrave; điều trị c&aacute;c bệnh l&yacute; về Nội Tim mạch</li>\r\n	<li>Từng c&ocirc;ng t&aacute;c tại khoa Nội Tim mạch, Bệnh viện Đại học Y Dược TP.HCM</li>\r\n</ul>\r\n\r\n<h2>Kh&aacute;m v&agrave; điều trị</h2>\r\n\r\n<p>B&aacute;c sĩ nhận kh&aacute;m v&agrave; điều trị bệnh l&yacute; về:</p>\r\n\r\n<ul>\r\n	<li>L&atilde;o khoa</li>\r\n	<li>Bệnh mạch v&agrave;nh: đau ngực tr&aacute;i, kh&oacute; thở</li>\r\n	<li>Nhồi m&aacute;u cơ tim: đau ngực tr&aacute;i, kh&oacute; thở</li>\r\n	<li>Xơ vữa mạch m&aacute;u: đau ngực, đau ch&acirc;n khi đi lại, tai biến mạch n&atilde;o</li>\r\n	<li>Hẹp động mạch cảnh: đau đầu, ch&oacute;ng mặt, tai biến mạch n&atilde;o</li>\r\n	<li>Đột quỵ: yếu tay ch&acirc;n, liệt mặt</li>\r\n	<li>Tăng huyết &aacute;p: huyết &aacute;p cao, đau ngực, đau đầu</li>\r\n	<li>Bệnh tim do đ&aacute;i th&aacute;o đường: đau ngực, kh&oacute; thở</li>\r\n	<li>Rối loạn lipid m&aacute;u: tăng lipid m&aacute;u, bệnh mạch v&agrave;nh, đột quỵ</li>\r\n	<li>Tăng cholesterol m&aacute;u gia đ&igrave;nh: tăng LDL-C m&aacute;u &gt; 4.0 mmol/L, u v&agrave;ng ở da, bệnh mạch v&agrave;nh</li>\r\n	<li>Tăng triglycerid m&aacute;u: triglycerid m&aacute;u tăng cao, ăn kh&oacute; ti&ecirc;u, đau bụng, vi&ecirc;m tụy</li>\r\n	<li>Rối loạn lipid m&aacute;u hỗn hợp: tăng LDL-C m&aacute;u, tăng triglycerid m&aacute;u, bệnh mạch v&agrave;nh</li>\r\n	<li>Bệnh động mạch chủ di truyền: tiền sử gia đ&igrave;nh mắc bệnh hoặc động mạch chủ gi&atilde;n vỡ sớm</li>\r\n	<li>Bệnh tim bẩm sinh: th&ocirc;ng li&ecirc;n nhĩ, th&ocirc;ng li&ecirc;n thất, c&ograve;n ống động mạch, hẹp phổi, Fallot</li>\r\n	<li>C&oacute; tiếng thổi ở tim, kh&oacute; thở, đau ngực</li>\r\n	<li>Hở van hai l&aacute;: kh&oacute; thở, đau ngực, mệt</li>\r\n	<li>Hở van động mạch chủ: kh&oacute; thở, đau ngực, mệt</li>\r\n	<li>Hẹp van động mạch chủ: kh&oacute; thở, đau ngực, mệt</li>\r\n	<li>Suy tim: kh&oacute; thở, ph&ugrave;, mệt&nbsp;</li>\r\n	<li>Rung nhĩ: hồi hộp, tim đập kh&ocirc;ng đều</li>\r\n	<li>Ngoại t&acirc;m thu thất: tim đập kh&ocirc;ng đều</li>\r\n	<li>Rối loạn tim nhanh: tim đập nhanh, hồi hộp, đ&aacute;nh trống ngực</li>\r\n	<li>Suy gi&atilde;n tĩnh mạch chi dưới: t&ecirc; ch&acirc;n khi đứng, gi&atilde;n mạch m&aacute;u ở ch&acirc;n</li>\r\n	<li>Tăng &aacute;p động mạch phổi: kh&oacute; thở, đau ngực, mệt&nbsp;</li>\r\n</ul>\r\n\r\n<h3>Qu&aacute; tr&igrave;nh c&ocirc;ng t&aacute;c</h3>\r\n\r\n<ul>\r\n	<li>B&aacute;c sĩ khoa Nội Tim mạch, Bệnh viện Quốc tế City (2013 - nay)</li>\r\n	<li>Bác sĩ điều trị khoa Nội Tim Mạch, Bệnh viện Đại học Y Dược TP.HCM (2005 - 2013)</li>\r\n</ul>\r\n\r\n<h3>Qu&aacute; tr&igrave;nh đ&agrave;o tạo</h3>\r\n\r\n<ul>\r\n	<li>Tốt nghiệp Thạc sĩ chuy&ecirc;n ng&agrave;nh L&atilde;o khoa, Đại học Y dược TP.HCM (2012)</li>\r\n	<li>Tốt Nghiệp B&aacute;c sĩ Đa khoa Đại học Y dược TP.HCM (2001)</li>\r\n</ul>\r\n', 3, '152530-drbuixuannga400x600.jpg', 360000);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(11) NOT NULL,
  `TenKH` varchar(30) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` varchar(10) NOT NULL,
  `MatKhauDangNhap` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `sdt`, `DiaChi`, `email`, `NgaySinh`, `GioiTinh`, `MatKhauDangNhap`) VALUES
(42, 'Hồ Thích An', '0123456789', 'Hà Nội', 'an@gmail.com', '2024-05-02', 'Nam', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `khoakham`
--

CREATE TABLE `khoakham` (
  `MaKhoa` int(11) NOT NULL,
  `TenKhoa` varchar(50) NOT NULL,
  `HinhAnh` varchar(100) NOT NULL,
  `GioiThieu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khoakham`
--

INSERT INTO `khoakham` (`MaKhoa`, `TenKhoa`, `HinhAnh`, `GioiThieu`) VALUES
(11, 'Cơ Xương Khớp', 'co-xuong-khop.png', ''),
(12, 'Sản phụ khoa', 'san-phu-khoa.png', ''),
(13, 'Tai mũi họng', 'tai-mui-hong.png', ''),
(14, 'Thần kinh', 'than-kinh.png', ''),
(15, 'Tiêu hóa', 'tieu-hoa.png', ''),
(16, 'Tim mạch', 'tim-mach.png', ''),
(17, 'Y học cổ truyền', 'y-hoc-co-truyen.png', ''),
(18, 'Siêu âm thai', 'sieu-am-thai.png', ''),
(22, 'Nhi khoa', 'nhi-khoa.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `lichkham`
--

CREATE TABLE `lichkham` (
  `MaLichKham` int(11) NOT NULL,
  `ThoiGianDat` datetime NOT NULL DEFAULT current_timestamp(),
  `ThoiGianKham` varchar(11) NOT NULL,
  `NgayKham` date NOT NULL,
  `NoiDungKham` text NOT NULL,
  `GhiChu` text NOT NULL,
  `MaKH` int(11) NOT NULL,
  `MaPhongKham` int(11) NOT NULL,
  `id_TrangThai` int(11) NOT NULL DEFAULT 1,
  `MaBS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lichkham`
--

INSERT INTO `lichkham` (`MaLichKham`, `ThoiGianDat`, `ThoiGianKham`, `NgayKham`, `NoiDungKham`, `GhiChu`, `MaKH`, `MaPhongKham`, `id_TrangThai`, `MaBS`) VALUES
(204, '2024-05-11 18:25:48', '8:00', '2024-05-11', 'cxg', 'fdg', 42, 4, 1, 37),
(205, '2024-05-12 11:32:41', '8:00', '2024-05-12', 'dfsadg', 'fgdsdfg', 42, 4, 1, 37);

-- --------------------------------------------------------

--
-- Table structure for table `phongkham`
--

CREATE TABLE `phongkham` (
  `MaPhongKham` int(11) NOT NULL,
  `TenPhongKham` varchar(11) NOT NULL,
  `MaKhoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phongkham`
--

INSERT INTO `phongkham` (`MaPhongKham`, `TenPhongKham`, `MaKhoa`) VALUES
(4, 'Phòng 101', 15),
(5, 'Phòng 112', 16);

-- --------------------------------------------------------

--
-- Table structure for table `soluoc`
--

CREATE TABLE `soluoc` (
  `maSL` int(11) NOT NULL,
  `mota` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taikhoanadmin`
--

CREATE TABLE `taikhoanadmin` (
  `MaTK` int(11) NOT NULL,
  `TenDangNhap` varchar(20) NOT NULL,
  `MatKhau` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taikhoanadmin`
--

INSERT INTO `taikhoanadmin` (`MaTK`, `TenDangNhap`, `MatKhau`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `MaTinTuc` int(11) NOT NULL,
  `TieuDe` varchar(150) NOT NULL,
  `HinhAnh` varchar(30) NOT NULL,
  `NoiDung` text NOT NULL,
  `ThoiGianDang` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trangthai`
--

CREATE TABLE `trangthai` (
  `id_TrangThai` int(11) NOT NULL,
  `TenTrangThai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trangthai`
--

INSERT INTO `trangthai` (`id_TrangThai`, `TenTrangThai`) VALUES
(1, 'Chờ xác nhận'),
(2, 'Xác nhận'),
(3, 'Bị hủy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bacsi`
--
ALTER TABLE `bacsi`
  ADD PRIMARY KEY (`MaBS`),
  ADD KEY `MaKhoa` (`MaKhoa`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Indexes for table `khoakham`
--
ALTER TABLE `khoakham`
  ADD PRIMARY KEY (`MaKhoa`);

--
-- Indexes for table `lichkham`
--
ALTER TABLE `lichkham`
  ADD PRIMARY KEY (`MaLichKham`),
  ADD KEY `MaKH` (`MaKH`,`MaPhongKham`),
  ADD KEY `MaPhongKham` (`MaPhongKham`),
  ADD KEY `id_TrangThai` (`id_TrangThai`),
  ADD KEY `MaBS` (`MaBS`);

--
-- Indexes for table `phongkham`
--
ALTER TABLE `phongkham`
  ADD PRIMARY KEY (`MaPhongKham`),
  ADD KEY `MaKhoa` (`MaKhoa`);

--
-- Indexes for table `soluoc`
--
ALTER TABLE `soluoc`
  ADD PRIMARY KEY (`maSL`);

--
-- Indexes for table `taikhoanadmin`
--
ALTER TABLE `taikhoanadmin`
  ADD PRIMARY KEY (`MaTK`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`MaTinTuc`);

--
-- Indexes for table `trangthai`
--
ALTER TABLE `trangthai`
  ADD PRIMARY KEY (`id_TrangThai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bacsi`
--
ALTER TABLE `bacsi`
  MODIFY `MaBS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `khoakham`
--
ALTER TABLE `khoakham`
  MODIFY `MaKhoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `lichkham`
--
ALTER TABLE `lichkham`
  MODIFY `MaLichKham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `phongkham`
--
ALTER TABLE `phongkham`
  MODIFY `MaPhongKham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `soluoc`
--
ALTER TABLE `soluoc`
  MODIFY `maSL` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taikhoanadmin`
--
ALTER TABLE `taikhoanadmin`
  MODIFY `MaTK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `MaTinTuc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trangthai`
--
ALTER TABLE `trangthai`
  MODIFY `id_TrangThai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bacsi`
--
ALTER TABLE `bacsi`
  ADD CONSTRAINT `bacsi_ibfk_1` FOREIGN KEY (`MaKhoa`) REFERENCES `khoakham` (`MaKhoa`);

--
-- Constraints for table `lichkham`
--
ALTER TABLE `lichkham`
  ADD CONSTRAINT `lichkham_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `lichkham_ibfk_2` FOREIGN KEY (`MaPhongKham`) REFERENCES `phongkham` (`MaPhongKham`),
  ADD CONSTRAINT `lichkham_ibfk_3` FOREIGN KEY (`id_TrangThai`) REFERENCES `trangthai` (`id_TrangThai`),
  ADD CONSTRAINT `lichkham_ibfk_4` FOREIGN KEY (`MaBS`) REFERENCES `bacsi` (`MaBS`);

--
-- Constraints for table `phongkham`
--
ALTER TABLE `phongkham`
  ADD CONSTRAINT `phongkham_ibfk_1` FOREIGN KEY (`MaKhoa`) REFERENCES `khoakham` (`MaKhoa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
