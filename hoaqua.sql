-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 18, 2023 lúc 12:34 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hoaqua`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(3, 'Giỏ trái cây'),
(1, 'Trái cây nhập khẩu'),
(2, 'Trái cây nội địa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `comm_id` int(11) NOT NULL,
  `prd_id` int(11) NOT NULL,
  `comm_name` varchar(255) NOT NULL,
  `comm_mail` varchar(255) NOT NULL,
  `comm_date` datetime NOT NULL,
  `comm_details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`comm_id`, `prd_id`, `comm_name`, `comm_mail`, `comm_date`, `comm_details`) VALUES
(1, 1, 'Lê Gia Quyết', 'lqg@gmail.com', '2023-04-17 11:29:20', 'Giao hàng nhanh. Trái cây chất lượng ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `footer`
--

CREATE TABLE `footer` (
  `logo_footer` varchar(100) DEFAULT NULL,
  `conten_logo` text DEFAULT NULL,
  `adress` varchar(200) DEFAULT NULL,
  `content_address` text DEFAULT NULL,
  `service` varchar(200) DEFAULT NULL,
  `content_service` text DEFAULT NULL,
  `hotline` varchar(200) DEFAULT NULL,
  `content_hotline` text DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `footer`
--

INSERT INTO `footer` (`logo_footer`, `conten_logo`, `adress`, `content_address`, `service`, `content_service`, `hotline`, `content_hotline`, `id`) VALUES
('logo.png', '<p>Fresh Fruits l&agrave; hệ thống chuy&ecirc;n cung cấp những loại tr&aacute;i c&acirc;y chất lượng nhất gồm cả tr&aacute;i c&acirc;y nhập khẩu v&agrave; tr&aacute;i c&acirc;y nội địa. Ch&uacute;ng t&ocirc;i sẽ li&ecirc;n tục cập nhật những sản phẩm mới, chất lượng nhất, gi&uacute;p bạn c&oacute; những trải nghiệm tuyệt vời!!!</p>\r\n', 'Địa chỉ', '<p>Số 562 Trần Cung, phường Cổ Nhuế, th&agrave;nh phố H&agrave; Nội&nbsp;</p>\r\n', 'Dịch vụ', '<p>Cung cấp tr&aacute;i c&acirc;y tươi</p>\r\n\r\n<p>Giao h&agrave;ng nhanh ch&oacute;ng</p>\r\n\r\n<p>Phục vụ 24/7&nbsp;</p>\r\n', 'Hotline', '<p><strong><a href=\"http://localhost:85/btl/gioithieu.php#\">Sdt :090 914 587</a></strong></p>\r\n\r\n<p><strong><a href=\"http://localhost:85/btl/gioithieu.php#\">Email:freshfruits@gmail.com</a></strong></p>\r\n', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `product_id` text NOT NULL,
  `total_product` text NOT NULL,
  `total_price` int(11) NOT NULL,
  `status` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `full_name`, `email`, `address`, `phone_number`, `product_id`, `total_product`, `total_price`, `status`) VALUES
(10, 'Đỗ Trang ', 'dhsjdg@gmail.com', 'Cầu Giấy, Hà Nội', 9468395, 'a:1:{i:0;i:6;}', 'a:1:{i:0;s:1:\"1\";}', 100000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `prd_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prd_name` varchar(255) NOT NULL,
  `prd_image` varchar(255) NOT NULL,
  `prd_price` int(11) UNSIGNED NOT NULL,
  `prd_new` varchar(255) NOT NULL,
  `prd_promotion` varchar(255) NOT NULL,
  `prd_status` int(1) NOT NULL,
  `prd_featured` int(1) NOT NULL,
  `prd_details` text NOT NULL,
  `prd_title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`prd_id`, `cat_id`, `prd_name`, `prd_image`, `prd_price`, `prd_new`, `prd_promotion`, `prd_status`, `prd_featured`, `prd_details`, `prd_title`) VALUES
(3, 1, 'Quả dưa vàng ', 'dua-vang.png', 100000, 'Hết hàng ', '', 0, 1, 'Hoa quả chất lượng ', ''),
(4, 2, 'Quả táo', 'qua-tao.png', 50000, 'Còn hàng ', '', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.', ''),
(5, 1, 'Quả việt quất ', 'viet-quat.png', 100000, 'Còn hàng ', 'Tặng 1 cân quýt', 0, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.', ''),
(6, 1, 'Quả nho', 'nho.png', 100000, 'Còn hàng', 'tặng cc', 1, 1, 'Sản phẩm chất lượng ', ''),
(7, 2, 'Kiwi', 'kiwi.png', 199000, 'Còn hàng ', 'Tặng thêm 10 bọc thực phẩm ', 1, 1, 'Sản phẩm chất lượng', 'Sản phẩm chất lượng'),
(8, 2, 'Quả quýt', 'quyt.png', 50000, 'Còn hàng ', 'Không ', 1, 1, 'Sản phẩm chất lượng', ''),
(9, 3, 'Giỏ 4 loại', 'gio1.png', 200000, 'Còn hàng ', ' giỏ và nơ ', 1, 1, 'Gồm nho, táo, cam, dưa', 'Giỏ 4 loại');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `logo_web` text NOT NULL,
  `number_comment` int(11) NOT NULL,
  `number_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`id`, `logo_web`, `number_comment`, `number_product`) VALUES
(4, 'logo.png', 5, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `title`
--

CREATE TABLE `title` (
  `id` int(11) NOT NULL,
  `trang_chu` varchar(50) NOT NULL,
  `search` varchar(50) NOT NULL,
  `cart` varchar(50) NOT NULL,
  `success` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `title`
--

INSERT INTO `title` (`id`, `trang_chu`, `search`, `cart`, `success`) VALUES
(1, 'Trang chủ', 'Tìm kiếm', 'Giỏ hàng', 'Đặt hàng thành công');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_full` varchar(255) NOT NULL,
  `user_mail` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_full`, `user_mail`, `user_pass`, `user_level`) VALUES
(1, 'Đỗ Trang ', 'dtt@gmail.com', '123456', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_name` (`cat_name`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comm_id`);

--
-- Chỉ mục cho bảng `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prd_id`);

--
-- Chỉ mục cho bảng `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_mail` (`user_mail`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `comm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT cho bảng `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `prd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT cho bảng `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `title`
--
ALTER TABLE `title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
