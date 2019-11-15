-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 14, 2019 lúc 11:58 AM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `pttk`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietgiohang`
--

CREATE TABLE `chitietgiohang` (
  `id` int(11) NOT NULL,
  `id_giohang` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietgiohang`
--

INSERT INTO `chitietgiohang` (`id`, `id_giohang`, `id_sanpham`, `soluong`) VALUES
(56, 10, 61, 4),
(61, 10, 56, 3),
(69, 11, 61, 4),
(70, 11, 63, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id` int(11) NOT NULL,
  `id_hoadon` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `so_luong` tinyint(4) NOT NULL,
  `thanh_tien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id`, `id_hoadon`, `id_sanpham`, `so_luong`, `thanh_tien`) VALUES
(103, 105, 50, 1, 4000000),
(104, 106, 52, 1, 8500000),
(105, 107, 52, 1, 8500000),
(106, 107, 50, 1, 4000000),
(107, 108, 52, 1, 8500000),
(108, 108, 51, 1, 500000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diachigiao`
--

CREATE TABLE `diachigiao` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `sdt` varchar(15) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `dia_chi` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `diachigiao`
--

INSERT INTO `diachigiao` (`id`, `ten`, `email`, `sdt`, `dia_chi`, `created_at`) VALUES
(1, 'nguyễn văn a', NULL, '0123456789', '105 tôn đản, phường hòa an,quận cẩm lệ, đà nẵng', '2018-08-29 18:48:07'),
(2, 'nguyễnmạnh', '', '097143152', '5002  Vernon Street', '2018-12-25 14:15:47'),
(3, 'nguyễn mạnh', '', '097143152', '5002  Vernon Street', '2018-12-25 14:16:21'),
(4, 'nguyễn sss', '', '7606036753', '5002  Vernon Street', '2018-12-25 14:18:39'),
(5, 'nguyễn gỗ b', '', '7606036753', '5002  Vernon Street', '2018-12-25 14:18:56'),
(6, 'nguyễn gỗ 222', '', '07142542958', '2230 Parkview Driv', '2018-12-25 14:19:37'),
(7, 'nguyễn gỗ 222', '', '07142542958', '2230 Parkview Driv', '2018-12-25 14:19:58'),
(8, 'nguyễn gỗ b', '', '07142542958', '2230 Parkview Driv', '2018-12-25 14:20:14'),
(9, 'nguyễn sdasdsad', '', '7606036753', '5002  Vernon Street', '2018-12-25 14:21:03'),
(10, 'nguyễn gỗ b', '', '07142542958', '2230 Parkview Driv', '2018-12-25 14:26:10'),
(11, 'nguyễn ss', '', '7606036753', '5002  Vernon Street', '2018-12-25 14:28:56'),
(12, 'nguyễn gỗ b', '', '7606036753', '5002  Vernon Street', '2018-12-25 14:30:25'),
(13, 'nguyễn sss', '', '7606036753', '5002  Vernon Street', '2018-12-25 14:36:38'),
(14, 'nguyễn sss', '', '7606036753', '5002  Vernon Street', '2018-12-25 14:37:55'),
(15, 'nguyễn gỗ b', '', '7606036753', '5002  Vernon Street', '2018-12-25 14:44:34'),
(16, 'nguyễn sss', '', '07142542958', '2230 Parkview Driv', '2018-12-25 14:45:05'),
(17, 'nguyễn gỗ b', '', '07142542958', '2230 Parkview Driv', '2018-12-25 15:24:52'),
(18, 'nguyễn gỗ b', '', '07142542958', '2230 Parkview Driv', '2018-12-25 15:28:49'),
(19, 'nguyễn gỗ b', '', '07142542958', '2230 Parkview Driv', '2018-12-25 15:28:52'),
(20, 'nguyễn phương', '', '7606036753', '5002  Vernon Street', '2018-12-25 23:40:54'),
(21, 'trần lúa', '', '7606036753', '5002  Vernon Street', '2018-12-26 00:00:29'),
(22, 'cao lứa', '', '7606036753', '5002  Vernon Street', '2018-12-26 00:03:20'),
(23, 'đoàn tú', '', '7606036753', '5002  Vernon Street', '2018-12-26 00:12:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaohang`
--

CREATE TABLE `giaohang` (
  `id` int(11) NOT NULL,
  `id_hoadon` int(11) NOT NULL,
  `trang_thai` tinyint(4) NOT NULL DEFAULT 1,
  `tien_thu_ho` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `trang_thai_thu` tinyint(4) NOT NULL DEFAULT 1,
  `ghi_chu` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `giaohang`
--

INSERT INTO `giaohang` (`id`, `id_hoadon`, `trang_thai`, `tien_thu_ho`, `trang_thai_thu`, `ghi_chu`, `created_at`) VALUES
(15, 16, 3, '10500000', 2, NULL, '2018-12-26 00:27:36'),
(16, 14, 2, '9400000', 1, NULL, '2018-12-28 13:35:05'),
(17, 15, 1, '0', 1, NULL, '2019-01-01 14:22:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`id`, `id_user`, `created_at`) VALUES
(10, 5, '2019-01-01 23:13:54'),
(11, 2, '2019-01-02 00:32:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gopy`
--

CREATE TABLE `gopy` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `y_kien` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sdt` varchar(13) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `thanh_toan` varchar(110) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `tong_tien` varchar(120) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `trang_thai` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=REDUNDANT;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id`, `id_user`, `ten`, `sdt`, `diachi`, `thanh_toan`, `tong_tien`, `trang_thai`, `created_at`) VALUES
(105, 13, 'binh', '12345678', '28 hòa nam 2', '0', '4000000', 2, '2019-08-12 15:39:05'),
(106, 11, 'Nguyen Van Tu', '0353136067', '105 tôn đản', '0', '8500000', 2, '2019-08-13 09:49:09'),
(107, 11, 'Nguyen Van Tu', '0353136067', '105 tôn đản', '1', '12500000', 2, '2019-08-14 13:33:23'),
(108, 11, 'Nguyen Van Tu', '0353136067', '105 tôn đản', '1', '9085000', 1, '2019-08-14 14:48:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang_users`
--

CREATE TABLE `khachhang_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sdt` varchar(120) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `khachhang_users`
--

INSERT INTO `khachhang_users` (`id`, `name`, `username`, `email`, `diachi`, `sdt`, `password`, `remember_token`, `created_at`) VALUES
(11, 'Nguyen Van Tu', 'tunguyen', 'nguyenvantu@gmail.com', '105 tôn đản', '0353136067', '202cb962ac59075b964b07152d234b70', NULL, '2019-07-30 15:47:14'),
(12, 'Nhat anh', 'nhatanh', 'nhatanh@gmail.com', '105 tôn đản', '012345678', '0e3442d022f04f39dc2456eafe27ada2', NULL, '2019-07-31 15:36:24'),
(14, 'binh', 'binh123', 'nguyen@gmail.com', '123 đn', '234234525', '202cb962ac59075b964b07152d234b70', NULL, '2019-08-14 14:21:16'),
(15, 'Nguyen Van A', 'binh1233', 'nguyenvana@gmail.com', '12 đa nang', '123123123', '202cb962ac59075b964b07152d234b70', NULL, '2019-08-14 14:22:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kichthuoc`
--

CREATE TABLE `kichthuoc` (
  `id` int(11) NOT NULL,
  `kich_thuoc` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gia` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `kichthuoc`
--

INSERT INTO `kichthuoc` (`id`, `kich_thuoc`, `gia`, `id_sanpham`) VALUES
(31, '5x5x5', 444444, 33),
(33, '3x3x4', 22222, 33),
(34, '3x3x4', 33333, 30),
(36, '5x5x6', 66666, 30),
(37, '6x6x7', 77777, 30);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `linkanh`
--

CREATE TABLE `linkanh` (
  `id` int(11) NOT NULL,
  `link` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `id_sanpham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `linkanh`
--

INSERT INTO `linkanh` (`id`, `link`, `id_sanpham`) VALUES
(9, 'fb.com/23', 33),
(10, 'fb.com', 33),
(11, 'https://scontent.fsgn2-2.fna.fbcdn.net/v/t1.0-9/40029812_942886232579811_2937995279594422272_n.jpg?_nc_cat=0&_nc_eui2=AeHo-JwLnMklCHPZVgtHyUpWpaA9MDjSh2vnkssRL_SQivTfBzwUXCf-kql1AcwsERpsacOvASS8muvNYl5CGSYJoz3pRyxAs2sK5AvQne8JhQ&oh=9a392601c6c3b3729fcf75103dc0d15a&oe=5BF1DB44', 33),
(12, 'https://scontent.fsgn2-2.fna.fbcdn.net/v/t1.0-9/40029812_942886232579811_2937995279594422272_n.jpg?_nc_cat=0&_nc_eui2=AeHo-JwLnMklCHPZVgtHyUpWpaA9MDjSh2vnkssRL_SQivTfBzwUXCf-kql1AcwsERpsacOvASS8muvNYl5CGSYJoz3pRyxAs2sK5AvQne8JhQ&oh=9a392601c6c3b3729fcf75103dc0d15a&oe=5BF1DB44', 33),
(13, 'http://imgs.vietnamnet.vn/Images/2015/08/28/08/20150828081926-1.JPG', 30),
(16, 'jEC89_3x4.jpg', 23),
(17, '7nyNe_2018-10-22 08.41.46 1.jpg', 23),
(18, '4XWCP_3x4.jpg', 23),
(20, 'mwJs1_2018-10-22 08.41.46 1.jpg', 23),
(22, 'FoHye_2018-10-22 08.41.46 1.jpg', 23),
(23, 'yCThY_animal-animal-photography-canidae-45242.jpg', 23),
(24, 'z5Y8G_3x4.jpg', 23),
(26, '88A3l_animal-animal-photography-canidae-45242.jpg', 23),
(27, 'cPBSq_3x4.jpg', 23),
(32, 'D2aEN_44054633_1864064220309724_718422147424321536_n.jpg', 47),
(33, 'Qnlgv_44056829_244819956198642_6156855448680005632_n.jpg', 47),
(34, 'zHZ2X_38749125_175549283227459_4242023324336521216_n.jpg', 48),
(35, 'llhpi_38814132_311916822710957_4143031367615119360_n.jpg', 48),
(36, '4XSSY_38860192_1882106898513667_8533786166711812096_n.jpg', 48),
(37, 'cNbAE_43951456_2207254936229653_5973388949899444224_n.jpg', 49),
(38, 'Wh0Qe_43951793_694035280960232_4435733328707977216_n.jpg', 50),
(39, 'j3TKY_44052113_252871668756526_5583275751848804352_n.jpg', 50),
(40, 'kVxdl_44052502_353618005185077_5218402968495194112_n.jpg', 50),
(41, 'ysmWx_44081551_305406343385573_5423871807344082944_n.jpg', 50),
(42, 'fc7Ue_44161326_1328704067272664_8132468713245900800_n.jpg', 50),
(43, 'h0QkF_44083856_330781917729679_8097958603777900544_n.jpg', 51),
(44, 'izE5L_44159389_295232827981006_914987562018275328_n.jpg', 51),
(45, 'LwT14_44028236_2028405117198641_2570407960945623040_n.jpg', 52),
(46, '8lOVB_44037804_1939810022987250_6770204176145186816_n.jpg', 52),
(47, 'qf6Mx_44065125_334429123986014_1226809502037180416_n.jpg', 52),
(48, 'se3VP_44067994_703098986735531_4817516094090641408_n.jpg', 52),
(49, 'vHc4H_44079827_174232836774206_8754558175899811840_n.jpg', 52),
(50, 'zKDaU_44236255_406505456550297_5723131354569244672_n.jpg', 52),
(51, '1dVBm_44023477_1613007855472644_4516887405780795392_n.jpg', 53),
(52, '13iJh_44081555_476032162884600_9130285630100602880_n.jpg', 53),
(53, 'C1rsp_44088266_2188341158156698_3674683605101051904_n.jpg', 53),
(54, 'melnz_44023477_1613007855472644_4516887405780795392_n.jpg', 54),
(55, 'qnNME_44065329_2381995341827664_1984682002112053248_n.jpg', 54),
(56, 's4PVq_44088266_2188341158156698_3674683605101051904_n.jpg', 54),
(57, 'jzP2j_44100023_290522091785650_2981088095224463360_n.jpg', 54),
(58, '1aIOs_44028212_340817126668201_1457996755378372608_n.jpg', 55),
(59, '0DEsQ_44031547_2033580833612849_7770474949550014464_n.jpg', 55),
(60, 'Fdb0j_44032459_586095681819604_6778265099615338496_n.jpg', 55),
(61, 'MjZnE_44050137_347600472641640_1610364104638201856_n.jpg', 55),
(62, 'LB752_44094722_376475056229192_6987198671402041344_n.jpg', 55),
(63, 'hPV2S_44091318_1832634343458294_3596485474845196288_n.jpg', 56),
(64, 'iLAAB_43952203_2354033141334378_1571063487432491008_n.jpg', 57),
(65, 'pB8nQ_44096308_278639879430934_7682040507773485056_n.jpg', 57),
(66, 'aNxHC_44113610_541462222982049_7707351600452337664_n.jpg', 57),
(67, 'DsgDq_44091813_191037028462135_5240214483166560256_n.jpg', 59),
(68, 'Fw5dm_44126471_538770389908499_233634014605344768_n.jpg', 59),
(69, 'wzV1D_44086239_2168682270018595_4015114640106192896_n.jpg', 61),
(70, 'w4eKS_44099740_267977350581812_2376790487349592064_n.jpg', 61),
(71, 'tszs1_44106500_268126853836598_5130504091960606720_n.jpg', 61),
(72, 'ZitPh_44118607_336408833591607_2298496132646436864_n.jpg', 61),
(73, 'BXoXp_44126935_2017250451698003_6838663661330890752_n.jpg', 61),
(74, 'cFRqp_44271252_2289428721335731_8844209777048289280_n.jpg', 61),
(75, 'TeCFs_44088764_2089035354451911_1069207094449668096_n.jpg', 62),
(76, 'UKuqC_44121568_239402810088460_8233699013648449536_n.jpg', 62),
(77, 'gNH4y_43570809_240651786801472_3584906483533348864_n.jpg', 63),
(78, 'yLl3E_43952434_1387018231432788_8979344235752849408_n.jpg', 63),
(79, 'nDLRF_44028847_552059071908773_3663695472440115200_n.jpg', 63),
(80, 'wJ7uL_44029843_169081967358960_7353383739063271424_n.jpg', 63),
(81, 'Lp8wk_44047473_2185547341668674_3034501025777057792_n.jpg', 63),
(82, '7I56C_44098190_2182321788692780_3767226153031434240_n.jpg', 63),
(83, 'NLQKD_44113604_255263945160224_2578272282287800320_n.jpg', 63),
(84, 'YdS0e_44029755_253644488677699_9063711523888693248_n.jpg', 64),
(85, 'CCanK_44050902_2023181094573504_1130295299063939072_n.jpg', 64),
(86, 'NYUIn_44123847_481504032345240_1530469788717940736_n.jpg', 64),
(87, 'khLic_44159365_725114491176163_9214416287013273600_n.jpg', 64),
(88, 'PTx4a_43952086_489611221535396_7141648315296251904_n.jpg', 65),
(89, 'VYwmj_44035768_188669485357166_8277817523303350272_n.jpg', 65),
(90, 'YNYqu_44060366_293213277951866_4091307338462396416_n.jpg', 65),
(91, 'akTSc_44099942_307428669840637_456880070984728576_n.jpg', 65),
(92, 'TPOS0_44098771_241981563337548_395697523118833664_n.jpg', 66),
(93, '1feJt_44162512_552339038542556_5453291865170247680_n.jpg', 66),
(94, '56kOv_44183958_2274470416105941_2035303977016360960_n.jpg', 66);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaigo`
--

CREATE TABLE `loaigo` (
  `id` int(11) NOT NULL,
  `ten_loai_go` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `loaigo`
--

INSERT INTO `loaigo` (`id`, `ten_loai_go`) VALUES
(56, 'Trang sức bạc'),
(58, 'Trang sức cưới'),
(59, 'Đồng hồ'),
(60, 'Kim cương'),
(65, 'Trang sức vàng trắng'),
(66, 'Khác'),
(67, 'Trang sức vàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `ten_go` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `id_loaigo` int(11) NOT NULL,
  `hinhanh` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `so_luong` int(11) NOT NULL,
  `chi_tiet` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gia` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `noi_bat` int(4) DEFAULT 0,
  `soluongban` int(11) DEFAULT 0,
  `chat_lieu` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `xuat_xu` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `kich_thuoc` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `ten_go`, `id_loaigo`, `hinhanh`, `so_luong`, `chi_tiet`, `gia`, `noi_bat`, `soluongban`, `chat_lieu`, `xuat_xu`, `kich_thuoc`) VALUES
(50, 'Mặt dây chuyền Vàng trắng 10K đính đá Suncut Swarovski PNJ Sunflower', 67, 'gmnmwk98743.100-mat-day-chuyen-pnj-sunflower-vang-trang-10k-dinh-da-suncut-swarovski.gif', 99, 'THÔNG SỐ\r\nThương hiệu:\r\nPNJ\r\n \r\nBộ sưu tập:\r\nSunflower\r\n \r\nLoại đá chính:\r\nSuncut Swarovski\r\n \r\nMàu đá chính:\r\nTrắng\r\n \r\nLoại đá phụ (nếu có):\r\nECZ - Swarovski\r\n \r\nMàu đá phụ (nếu có):\r\nTrắng\r\n \r\nGiới tính:\r\nNữ\r\n \r\nDịp tặng quà:\r\nSinh nhật\r\nTình yêu\r\nNgày kỷ niệm\r\nCác dịp lễ tết\r\n \r\nQuà tặng cho người thân:\r\nCho Nàng\r\nCho Mẹ\r\n \r\nTrọng lượng vàng tham khảo (phân vàng):\r\n5.10085\r\n \r\nChủng loại:\r\nMặt dây chuyền\r\n \r\nTuổi vàng:\r\nVàng 10K', '4000000', 1, 1, ' Gỗ Trắc Đỏ đen Đaklak.', 'PNJ', ' 6 chén: Cao 4cm, Rộng 5,5cm , 1 ấm: Đường kính 13cm (cả Vòi-quai: 20cm), Cao 9cm'),
(51, 'MẶT DÂY CHUYỀN VÀNG TRẮNG 10K ĐÍNH ĐÁ SUNCUT SWAROVSKI PNJ SUNFLOWER XMXMW060154', 66, 'gmnmwk98742.100-mat-day-chuyen-pnj-sunflower-vang-trang-10k-dinh-da-suncut-swarovski.gif', 98, 'Thương hiệu:\r\nPNJ\r\n \r\nBộ sưu tập:\r\nSunflower\r\n \r\nLoại đá chính:\r\nSuncut Swarovski\r\n \r\nMàu đá chính:\r\nTrắng\r\n \r\nLoại đá phụ (nếu có):\r\nECZ - Swarovski\r\n \r\nMàu đá phụ (nếu có):\r\nTrắng\r\n \r\nGiới tính:\r\nNữ\r\n \r\nDịp tặng quà:\r\nSinh nhật\r\nTình yêu\r\nNgày kỷ niệm\r\nCác dịp lễ tết\r\n \r\nQuà tặng cho người thân:\r\nCho Nàng\r\nCho Mẹ\r\n \r\nTrọng lượng vàng tham khảo (phân vàng):\r\n3.88559\r\n \r\nChủng loại:\r\nMặt dây chuyền\r\n \r\nTuổi vàng:\r\nVàng 10K', '500000', 0, 2, 'Gỗ xà cừ cổ thụ', 'PNJ', 'Cao 22cm, rộng 10cm, sâu 20cm'),
(52, 'MẶT DÂY CHUYỀN VÀNG TRẮNG 10K ĐÍNH ĐÁ SUNCUT SWAROVSKI PNJ SUNFLOWER XMXMW060152', 58, 'gmnmwk98740.100-mat-day-chuyen-pnj-sunflower-vang-trang-10k-dinh-da-suncut-swarovski-1.gif', 94, 'Bộ Tam Đa gỗ hương liền khối cao 0,5m đục siêu kỹ và sắt nét.Gỗ khổ to dầy dặn, mỗi bức nặng tầm 80kg, cả bộ tượng nặng hơn 2 tạ.', '8500000', 0, 6, 'gỗ hương liền khối', 'PNJ', 'cao 50 rộng 20 sâu 17cm'),
(53, 'MẶT DÂY CHUYỀN VÀNG TRẮNG 10K ĐÍNH ĐÁ SUNCUT SWAROVSKI PNJ SUNFLOWER', 58, 'gmdrwb97497.100-mat-day-chuyen-pnj-vang-trang-10k-dinh-da-swarovski.png', 100, 'Tượng di lặc nằm trên núi tiền để trên ô tô, sản phẩm được làm bằng gỗ sưa , với nét chạm tinh xảo và có hồn . sp có thể để trong xe hơi hoặc trong tủ bầy ở phòng khách .', '5500000', 0, 0, 'gỗ hương liền khối', 'PNJ', 'cao 28 rộng 50 sâu 25cm'),
(54, 'NHẪN VÀNG TRẮNG 10K ĐÍNH ĐÁ SUNCUT SWAROVSKI', 58, 'gndrwb97495.100-nhan-pnj-vang-trang-10k-dinh-da-swarovski.png', 98, 'Điểm đặc trưng riêng biệt tạo nên giá trị cho bức tượng gỗ Di Lặc đẹp mà chất liệu gỗ hương ta cực quý. Toàn bộ bức tượng là một màu đỏ thẫm đặc trưng của gỗ. Đường vân nổi đẹp như hoa, mùi hương dịu dàng dễ chịu. Tượng to lớn nhưng hoàn toàn là liền khối. Quý khách sẽ không thấy bất cứ 1 dấu vết chấp nối nào trên tác phẩm phong thủy đẹp đặc biệt này.', '22000000', 0, 2, 'Gỗ hương ta, gỗ gốc già đanh rất nặng', 'PNJ', 'Dài 85 Sâu 55 Cao 48'),
(55, 'Nhẫn Vàng 10K đính đá Suncut Swarovski', 67, 'gndrcb97494.400-nhan-pnj-vang-10k-mix-da-swarovski.png', 100, 'Khay đựng bánh Kẹo bằng Bát Giác Gỗ Trắc có hộp đi kèm làm quà tặng cực sang trọng\r\nVới chiếc nắp đậy kín có thể bảo quản thực phẩm lâu hơn.\r\nSản phẩm thích hợp cho mọi gia đình, vì vậy bạn có thể mua sử dụng hoặc làm quà tặng người thân, đồng nghiệp.', '300000', 0, 0, 'Gỗ Trăc', 'PNJ', ' 33*20cm'),
(56, 'NHẪN VÀNG 10K ĐÍNH ĐÁ SUNCUT SWAROVSKI', 58, 'gndryb97434.100-nhan-pnj-vang-10k-dinh-da-swarovski.png', 998, 'Tượng phượng hoang được', '60000000', 1, 2, 'Gỗ hương', 'PNJ', 'Cao 45cm x Ngang 32cm x Đường kính miệng 22cm'),
(57, 'DÂY CỔ VÀNG 10K ĐÍNH ĐÁ SUNCUT SWAROVSKI', 58, 'gchrcb97430.100-day-co-pnj-vang-10k-dinh-da-swarovski.png', 100, 'uan Công đứng chống đao bằng gỗ hương nghệ', '7900000', 0, 0, 'Gỗ Hương nghệ ', 'PNJ', 'Cao 70cm x Ngang 33cm x Sâu 17cm'),
(58, 'BÔNG TAI VÀNG 10K ĐÍNH ĐÁ SUNCUT SWAROVSKI', 60, 'gbdryb97432.100-bong-tai-pnj-vang-10k-dinh-da-swarovski.png', 100, 'Lục Bình hay có tên khác nữa là Lộc bình, ngày nay người miền Bắc người ta vẫn thường gọi là lục bình. Lục bình có hình dạng thân phình to, cổ thắt lại, trên miệng thường loe ra. Trong phong thủy dân gian nước ta, lục bình có ý nghĩa tượng trưng cho sự sang giàu, tiền bạc sung túc, phát tài phát lộc, sự sinh sôi nảy nở, may mắn đầy nhà và đồng thời lục bình đó là nơi được ví như cái kho cất giữ, bảo quản tài sản và của cải cho gia chủ.', '16000000', 1, 0, 'Gỗ Mít rừng nguyên khối', 'PNJ', 'Cao: 140 cm, đường kính 37 cm'),
(59, 'NHẪN VÀNG TRẮNG 10K ĐÍNH ĐÁ ECZ SWAROVSKI', 59, 'gndrwb96484.100-nhan-pnj-vang-trang-10k-dinh-da-ecz-swarovski.png', 100, 'Sản phẩm bao gồm: 1 lư hương, 2 đèn chân nến, 2 bát nước,1 bát cấm nhang, một lọ hoa, một ống đựng nhang và một dĩa trái cây', '200000', 1, 0, 'Gỗ gõ', 'PNJ', 'Lư hương cao 50cm, Chân nến cao 50cm và đường kính 15cm <br> 1 Đỉnh thờ : cao 50cm, rộng 40cm <br> 2 chân đèn: cao 52cm, đường kính đĩa 25cm <br> 1 bình hoa: cao 25cm <br> 2 ly nước: cao 12 cm <br> 1 đĩa trái cây: đường kính 25cm'),
(61, 'Bộ trang sức bạc PNJSilver hình con heo ôm trái tim màu đỏ', 58, 'bo-trang-suc-bac-pnjsilver-hinh-con-heo-om-trai-tim-mau-do-98365.png', 100, '<p>Tượng phật đứng c&oacute; nhiều h&igrave;nh dạng như phật di lăc, phật bồ t&aacute;t...</p>\r\n\r\n<p>K&iacute;ch thước từ r15xc40 đến&nbsp; r20x60</p>', '1500000', 0, 0, NULL, 'PNJ', NULL),
(62, 'Lắc tay bạc PNJSilver hình con heo ôm trái tim', 58, 'slnmkk98366.000-lac-tay-bac-pnjsilver-hinh-con-heo-om-trai-tim.png', 100, '<p>Tượng c&oacute;c thần t&agrave;i cỡ trung c&oacute; k&iacute;ch cỡ c40xr30</p>\r\n\r\n<p>v&agrave; c&oacute; loại nhỏ hơn &nbsp;từ c15xr15 đến c35xr30</p>', '1000000', 1, 0, NULL, 'PNJ', NULL),
(63, 'Bộ trang sức bạc PNJSilver hình con heo', 65, 'bo-trang-suc-bac-pnjsiver-hinh-con-heo-om-trai-tim-98365.png', 99, '<p>Đồng hồ gỗ treo tường&nbsp;được l&agrave;m từ gỗ hương c&oacute; k&iacute;ch thước khoảng r30 x c80</p>', '3000000', 0, 2, NULL, 'PNJ', NULL),
(64, 'Đồng hồ nam dây da Tissot', 65, 'dong-ho-nam-day-da-tissot-t006-408-36-057-00.png', 100, '<p>Đồng hồ đứng c&oacute; k&iacute;ch thước d&agrave;i 50cm, r&ocirc;ng 40cm v&agrave; chiều cao 120cm</p>\r\n\r\n<p>c&oacute; nhiều mẫu m&atilde;, m&agrave;u sắc m&agrave; k&iacute;ch cỡ chiều cao từ 90 đến 130cm</p>', '7000000', 0, 0, NULL, 'PNJ', NULL),
(65, 'Đồng hồ nam dây thép cao cấp không gỉ chống nước Citizen', 60, 'dong-ho-nam-day-thep-cao-cap-khong-gi-chong-nuoc-citizen-an8170-59e.png', 100, '<p>Lục b&igrave;nh gỗ cỡ lớn c&oacute; b&aacute;n k&igrave;nh 30 đến 40cm v&agrave; chiều cao từ 80 đến 110cm</p>', '2500000', 0, 0, NULL, 'PNJ', NULL),
(66, 'Đồng hồ nam dây thép không gỉ Tissot', 60, 'dong-ho-nam-day-thep-cao-cap-khong-gi-chong-nuoc-citizen-bm7330-67l.png', 10, '<p>Lục b&igrave;nh cỡ trung v&agrave; nhỏ c&oacute; nhiều k&iacute;ch cỡ kh&aacute;c nhau để lựa chọn</p>\n<p>K&iacute;ch cỡ từ r10xc30 đến r20xc70 v&agrave; gi&aacute; cũng t&ugrave;y theo k&iacute;ch cỡ</p>', '200000', 0, 0, NULL, 'PNJ', NULL),
(83, 'Kim cương 4.5*4.5 VVS1 D PNJ+GIA', 56, 'kim-cuong-4.34.3-vvs1-e-pnj-gia-10203.30043043.png', 50, 'Trang trí nhà                                                                                                                                    ', '2500000', 1, 0, 'xà cừ', 'PNJ', '30x20'),
(84, 'Kim cương 4.5*4.5 VVS1 E PNJ+GIA', 58, 'kim-cuong-3.63.6-vvs1-e-pnj-10203.10036036.png', 50, 'Đẹp                        ', '250000', 1, 0, NULL, 'PNJ', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `quyen` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hoadon` (`id_hoadon`);

--
-- Chỉ mục cho bảng `diachigiao`
--
ALTER TABLE `diachigiao`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giaohang`
--
ALTER TABLE `giaohang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gopy`
--
ALTER TABLE `gopy`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zxc` (`id`);

--
-- Chỉ mục cho bảng `khachhang_users`
--
ALTER TABLE `khachhang_users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `kichthuoc`
--
ALTER TABLE `kichthuoc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `linkanh`
--
ALTER TABLE `linkanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaigo`
--
ALTER TABLE `loaigo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `PK_sanpham_loaigo` (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT cho bảng `diachigiao`
--
ALTER TABLE `diachigiao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `giaohang`
--
ALTER TABLE `giaohang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `gopy`
--
ALTER TABLE `gopy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT cho bảng `khachhang_users`
--
ALTER TABLE `khachhang_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `kichthuoc`
--
ALTER TABLE `kichthuoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `linkanh`
--
ALTER TABLE `linkanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT cho bảng `loaigo`
--
ALTER TABLE `loaigo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`id_hoadon`) REFERENCES `hoadon` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
