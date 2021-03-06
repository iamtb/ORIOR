DROP DATABASE [ORIOR]
CREATE DATABASE [ORIOR]
USE [ORIOR]
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 12/11/18 8:27:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMIN](
	[MaAdmin] [int] IDENTITY(1,1) NOT NULL,
	[HoTenAdmin] [nvarchar](50) NULL,
	[DiaChiAdmin] [nvarchar](50) NULL,
	[DienThoaiAdmin] [varchar](10) NULL,
	[TenDNAdmin] [varchar](15) NULL,
	[MatKhauAdmin] [varchar](15) NULL,
	[NgaySinhAdmin] [smalldatetime] NULL,
	[GioiTinhAdmin] [bit] NULL DEFAULT ((1)),
	[EmailAdmin] [varchar](50) NULL,
	[QuyenAdmin] [int] NULL DEFAULT ((1)),
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[MaAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 12/11/18 8:27:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comment](
	[idcmt] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [int] NOT NULL,
	[TenDN] [varchar](15) NULL,
	[titlecmt] [nvarchar](100) NULL,
	[cmt] [ntext] NULL,
	[ngaycmt] [smalldatetime] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[idcmt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTDATHANG]    Script Date: 12/11/18 8:27:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDATHANG](
	[SoDH] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](9, 2) NULL,
	[ThanhTien]  AS ([SoLuong]*[DonGia]),
 CONSTRAINT [PK_CTDatHang] PRIMARY KEY CLUSTERED 
(
	[SoDH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 12/11/18 8:27:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[SoDH] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[NgayDH] [smalldatetime] NULL,
	[TriGia] [money] NULL,
	[DaGiao] [bit] NULL CONSTRAINT [DF__DONDATHAN__DaGia__1CF15040]  DEFAULT ((0)),
	[LoiNhan] [ntext] NULL,
	[TenNguoiNhan] [varchar](50) NULL,
	[DiaChiNhan] [nvarchar](50) NULL,
	[DienThoaiNhan] [varchar](15) NULL,
	[HTThanhToan] [bit] NULL CONSTRAINT [DF__DONDATHAN__HTTha__1DE57479]  DEFAULT ((0)),
	[HTGiaoHang] [bit] NULL CONSTRAINT [DF__DONDATHAN__HTGia__1ED998B2]  DEFAULT ((0)),
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[SoDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 12/11/18 8:27:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTenKH] [nvarchar](50) NULL,
	[DiaChiKH] [nvarchar](50) NULL,
	[DienThoaiKH] [varchar](10) NULL,
	[TenDN] [varchar](15) NULL,
	[MatKhau] [varchar](15) NULL,
	[NgaySinh] [smalldatetime] NULL,
	[GioiTinh] [bit] NULL DEFAULT ((1)),
	[Email] [varchar](50) NULL,
	[DaDuyet] [bit] NULL DEFAULT ((0)),
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 12/11/18 8:27:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[MaMenu] [int] IDENTITY(1,1) NOT NULL,
	[TenMenu] [nvarchar](50) NOT NULL,
	[HinhMinhHoa] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChuDe] PRIMARY KEY CLUSTERED 
(
	[MaMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SP]    Script Date: 12/11/18 8:27:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SP](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[DonViTinh] [nvarchar](50) NULL DEFAULT ('cái'),
	[DonGia] [money] NULL,
	[MoTa] [ntext] NULL,
	[HinhMinhHoa] [varchar](50) NULL,
	[MaMenu] [int] NULL,
	[NgayCapNhat] [smalldatetime] NULL,
	[SoLuongBan] [int] NULL,
	[SoLanXem] [int] NULL DEFAULT ((0)),
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ADMIN] ON 

INSERT [dbo].[ADMIN] ([MaAdmin], [HoTenAdmin], [DiaChiAdmin], [DienThoaiAdmin], [TenDNAdmin], [MatKhauAdmin], [NgaySinhAdmin], [GioiTinhAdmin], [EmailAdmin], [QuyenAdmin]) VALUES (1, N'Hà Gia Bảo', N'Bình Dương', N'0948866263', N'admin1', N'12345', NULL, 1, N'baobaovabao@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[ADMIN] OFF
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([idcmt], [MaSP], [TenDN], [titlecmt], [cmt], [ngaycmt]) VALUES (49, 55, N'luongvq', N'Đẹp xinh', N'Mụi người ơi mụi người ơi ! hàng đẹp lắm mụi người ơi . nhàu vô hô coi chừng phỏng tay mụi người ơi mụi người ơi <3 ', CAST(N'2018-11-19 16:49:00' AS SmallDateTime))
INSERT [dbo].[Comment] ([idcmt], [MaSP], [TenDN], [titlecmt], [cmt], [ngaycmt]) VALUES (50, 55, N'luongvq', N'Wa Xa Da', N'Hàng tốt bền đẹp mụi người ơi . nhìn là mê ô kìa con bê đê hí hí hí ', CAST(N'2018-11-19 16:51:00' AS SmallDateTime))
INSERT [dbo].[Comment] ([idcmt], [MaSP], [TenDN], [titlecmt], [cmt], [ngaycmt]) VALUES (51, 55, N'baobtd', N'Trới ơi đẹp bá cháy', N'Mọi người ơi . nhàu vô mua đi . Flack Sunday sale tẹt gaaaaaa', CAST(N'2018-11-24 14:21:00' AS SmallDateTime))
INSERT [dbo].[Comment] ([idcmt], [MaSP], [TenDN], [titlecmt], [cmt], [ngaycmt]) VALUES (52, 55, N'baobtd', N'Tui viết nhầm cmt rồi', N'Mụi người ơi .. cmt phía dưới tui viết nhầm . mọi người thông cảm nha :( hết sức buồn lòng', CAST(N'2018-11-24 14:22:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Comment] OFF
SET IDENTITY_INSERT [dbo].[CTDATHANG] ON 

INSERT [dbo].[CTDATHANG] ([SoDH], [MaSP], [SoLuong], [DonGia]) VALUES (40, 4, 1, CAST(500000.00 AS Decimal(9, 2)))
INSERT [dbo].[CTDATHANG] ([SoDH], [MaSP], [SoLuong], [DonGia]) VALUES (40, 55, 1, CAST(2000000.00 AS Decimal(9, 2)))
INSERT [dbo].[CTDATHANG] ([SoDH], [MaSP], [SoLuong], [DonGia]) VALUES (41, 12, 1, CAST(9500000.00 AS Decimal(9, 2)))
INSERT [dbo].[CTDATHANG] ([SoDH], [MaSP], [SoLuong], [DonGia]) VALUES (41, 23, 1, CAST(1800000.00 AS Decimal(9, 2)))
INSERT [dbo].[CTDATHANG] ([SoDH], [MaSP], [SoLuong], [DonGia]) VALUES (41, 43, 1, CAST(2000000.00 AS Decimal(9, 2)))
INSERT [dbo].[CTDATHANG] ([SoDH], [MaSP], [SoLuong], [DonGia]) VALUES (42, 29, 2, CAST(2000000.00 AS Decimal(9, 2)))
INSERT [dbo].[CTDATHANG] ([SoDH], [MaSP], [SoLuong], [DonGia]) VALUES (42, 57, 1, CAST(5000000.00 AS Decimal(9, 2)))
INSERT [dbo].[CTDATHANG] ([SoDH], [MaSP], [SoLuong], [DonGia]) VALUES (43, 23, 1, CAST(1800000.00 AS Decimal(9, 2)))
SET IDENTITY_INSERT [dbo].[CTDATHANG] OFF
SET IDENTITY_INSERT [dbo].[DONDATHANG] ON 

INSERT [dbo].[DONDATHANG] ([SoDH], [MaKH], [NgayDH], [TriGia], [DaGiao], [LoiNhan], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [HTThanhToan], [HTGiaoHang]) VALUES (40, 15, CAST(N'2018-12-09 00:00:00' AS SmallDateTime), 2530000.0000, 0, N'', N'Hà Gia B?o', N'Kiên Giang', N'0948866263', 0, 0)
INSERT [dbo].[DONDATHANG] ([SoDH], [MaKH], [NgayDH], [TriGia], [DaGiao], [LoiNhan], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [HTThanhToan], [HTGiaoHang]) VALUES (41, 15, CAST(N'2018-12-09 00:00:00' AS SmallDateTime), 13300000.0000, 0, N'Nhớ gọi trước khi Ship . Ok hông ??', N'Hà Gia B?o', N'Kiên Giang', N'0948866263', 1, 0)
INSERT [dbo].[DONDATHANG] ([SoDH], [MaKH], [NgayDH], [TriGia], [DaGiao], [LoiNhan], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [HTThanhToan], [HTGiaoHang]) VALUES (42, 1, CAST(N'2018-12-09 00:00:00' AS SmallDateTime), 9000000.0000, 0, N'Giao gấp trong chiều nay ok ', N'Võ Qu?c Luong', N'Phú Hòa', N'0988936592', 0, 0)
INSERT [dbo].[DONDATHANG] ([SoDH], [MaKH], [NgayDH], [TriGia], [DaGiao], [LoiNhan], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [HTThanhToan], [HTGiaoHang]) VALUES (43, 15, CAST(N'2018-12-10 00:00:00' AS SmallDateTime), 1830000.0000, 0, N'', N'Hà Gia B?o', N'Kiên Giang', N'0948866263', 0, 0)
SET IDENTITY_INSERT [dbo].[DONDATHANG] OFF
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email], [DaDuyet]) VALUES (1, N'Võ Quốc Lương', N'Phú Hòa', N'0988936592', N'luongvq', N'12345', CAST(N'1962-07-08 00:00:00' AS SmallDateTime), 1, N'luongvq@tdmu.edu.vn', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email], [DaDuyet]) VALUES (2, N'Nguyễn Tiến Luân', N'Quận 6', N'Chua có', N'thang', N'123456', CAST(N'1974-07-15 00:00:00' AS SmallDateTime), 1, N'ntluan@hcmuns.edu.vn', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email], [DaDuyet]) VALUES (3, N'Đặng Quốc Hòa', N'Sư Vạn Hạnh', N'Chua có', N'dqhoa', N'hoa', CAST(N'1965-07-24 00:00:00' AS SmallDateTime), 1, N'dqhoa@hcmuns.edu.vn', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email], [DaDuyet]) VALUES (4, N'Ngô Ngọc Ngân', N'Khu chung cư', N'0918544699', N'nnngan', N'ngan', CAST(N'1946-08-15 00:00:00' AS SmallDateTime), 1, N'nnngan@hcmuns.edu.vn', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email], [DaDuyet]) VALUES (5, N'Đỗ Quỳnh Hương', N'Cống Quỳnh', N'0908123456', N'dqhuong', N'huong', CAST(N'1982-03-24 00:00:00' AS SmallDateTime), 0, N'dqhuong@hcmuns.edu.vn', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email], [DaDuyet]) VALUES (6, N'Trần Thị Thu Trang', N'Nơ Trang Long', N'Chua có', N'ttttrang       ', N'trang          ', CAST(N'1962-08-05 00:00:00' AS SmallDateTime), 0, N'ttrang@yahoo.com', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email], [DaDuyet]) VALUES (7, N'Nguyễn Thiên Thanh', N'Hai Bà Trưng', N'0908320111', N'ntthanh', N'thanh', CAST(N'1979-04-04 00:00:00' AS SmallDateTime), 0, N'ntthanh@t3h.hcmuns.edu.vn', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email], [DaDuyet]) VALUES (8, N'Trần Thị Hải Yến', N'Trần Hưng Đạo', N'8111111   ', N'tthyen', N'yen', CAST(N'1975-07-15 00:00:00' AS SmallDateTime), 0, N'tthyan@vol.vnn.vn', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email], [DaDuyet]) VALUES (9, N'Nguyễn Thị Thanh Mai', N'Trần Quang Diệu', N'81111222', N'nttmai         ', N'mai            ', CAST(N'1982-09-15 00:00:00' AS SmallDateTime), 0, NULL, 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email], [DaDuyet]) VALUES (10, N'Nguyễn Thành Danh', N'Cộng Hòa', N'8103751   ', N'ntdanh', N'danh', CAST(N'1977-07-16 00:00:00' AS SmallDateTime), 1, N'ntdanh@yahoo.com', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email], [DaDuyet]) VALUES (11, N'Phạm Thị Nga', N'Q6 - Tp.HCM', N'0831564512', N'ptnga', N'nga', CAST(N'2003-08-18 00:00:00' AS SmallDateTime), 0, N'ptnhung@hcmuns.edu.vn', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email], [DaDuyet]) VALUES (12, N'Lê Doanh Doanh', N'2Bis Hùng Vương', N'07077865', N'lddoanh', N'doanh', CAST(N'1977-05-06 00:00:00' AS SmallDateTime), 0, N'lddoanh@yahoo.com', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email], [DaDuyet]) VALUES (13, N'Đòan Ngọc Minh Tâm', N'2 Đinh Tiên Hòang', N'0909092222', N'dnmtam', N'tam', CAST(N'1978-05-15 00:00:00' AS SmallDateTime), 0, N'ndmtam@yahoo.com', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email], [DaDuyet]) VALUES (14, N'Trần Khải Nhi', N'3 Bùi Hữu Nghĩa', N'0909095555', N'tknhi', N'nhi', CAST(N'1980-04-01 00:00:00' AS SmallDateTime), 1, N'tknhi@yahoo.com', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email], [DaDuyet]) VALUES (15, N'Hà Gia Bảo', N'Kiên Giang', N'0948866263', N'baobtd', N'12345678', NULL, 1, N'baobaovabao@gmail.com', 0)
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([MaMenu], [TenMenu], [HinhMinhHoa]) VALUES (1, N'Living Room', N'home-banner-bg.jpg')
INSERT [dbo].[Menu] ([MaMenu], [TenMenu], [HinhMinhHoa]) VALUES (2, N'Bed Room', N'intro-bed.jpg')
INSERT [dbo].[Menu] ([MaMenu], [TenMenu], [HinhMinhHoa]) VALUES (3, N'Work Room', N'intro-work.jpg')
INSERT [dbo].[Menu] ([MaMenu], [TenMenu], [HinhMinhHoa]) VALUES (4, N'Kitchen', N'intro-kit.jpg')
INSERT [dbo].[Menu] ([MaMenu], [TenMenu], [HinhMinhHoa]) VALUES (5, N'Bath Room', N'intro-bath.jpg')
SET IDENTITY_INSERT [dbo].[Menu] OFF
SET IDENTITY_INSERT [dbo].[SP] ON 

INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (2, N'Tủ ngủ trắng tinh tơm', N'cái', 1800000.0000, N'<p>M&agrave;u sắc : Trắng</p>

<p>K&iacute;ch thước :&nbsp;</p>

<p>+ Chiều rộng&nbsp;: 50 cm</p>

<p>+ Chiều cao : 50 cm</p>
', N'bed3.jpg', 2, CAST(N'2018-11-17 13:09:00' AS SmallDateTime), 11, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (3, N'Tủ Phòng Ngủ Harvey', N'cái', 1800000.0000, N'<p>M&agrave;u sắc : Gỗ - Trắng</p>

<p>K&iacute;ch thước :&nbsp;</p>

<p>+ Chiều rộng : 50 cm</p>

<p>+ Chiều cao : 50 cm</p>
', N'bed1.jpg', 2, CAST(N'2018-11-17 13:53:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (4, N'Tủ phòng ngủ Benley', N'cái', 500000.0000, N'<p>M&agrave;u sắc : Trắng</p>

<p>K&iacute;ch thước :&nbsp;</p>

<p>+ Chiều rộng : 50 cm</p>

<p>+ Chiều cao : 1m</p>
', N'bed2.JPG', 2, CAST(N'2018-11-17 13:53:00' AS SmallDateTime), 10, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (5, N'Tủ phòng ngủ BM', N'cái', 2000000.0000, N'<p>M&agrave;u sắc : Trắng</p>

<p>K&iacute;ch thước :&nbsp;</p>

<p>+ Chiều rộng : 50 cm</p>

<p>+ Chiều cao : 1m</p>
', N'bed4.jpg', 2, CAST(N'2018-11-17 13:54:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (6, N'Tủ phòng ngủ Beddy', N'cái', 1800000.0000, N'<p>M&agrave;u sắc : Trắng</p>

<p>K&iacute;ch thước :&nbsp;</p>

<p>+ Chiều rộng : 50 cm</p>

<p>+ Chiều cao : 1m</p>
', N'bed5.jpg', 2, CAST(N'2018-11-17 13:54:00' AS SmallDateTime), 12, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (7, N'Bộ ghế phòng khách Hawait', N'bộ', 5000000.0000, N'<p>M&agrave;u sắc : Trắng</p>

<p>K&iacute;ch thước :&nbsp;</p>

<p>+ Chiều rộng : 10 m</p>

<p>+ Chiều cao : 1m</p>
', N'g1.jpg', 1, CAST(N'2018-11-17 13:55:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (8, N'Phòng Ăn Cao Cấp BMW', N'bộ', 9500000.0000, N'<p>M&agrave;u sắc : Trắng</p>

<p>K&iacute;ch thước :&nbsp;</p>

<p>+ Chiều rộng : 10 m</p>

<p>+ Chiều cao : 1m</p>
', N'g2.jpg', 4, CAST(N'2018-11-17 13:56:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (9, N'Phòng làm việc Dora', N'bộ', 9000000.0000, N'<p>M&agrave;u sắc : Đủ m&agrave;u sắc</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 5&nbsp;m</p>

<p>+ Chiều cao : 1 m</p>
', N'g3.jpg', 3, CAST(N'2018-11-17 14:07:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (10, N'Phòng Bếp Dolley', N'bộ', 9000000.0000, N'<p>M&agrave;u sắc : Trắng</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 5&nbsp;m</p>

<p>+ Chiều cao : 1 m</p>
', N'g4.jpg', 4, CAST(N'2018-11-17 14:08:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (11, N'Bộ Ghế Phòng Khách 3.0', N'bộ', 5000000.0000, N'<p>M&agrave;u sắc : Trắng</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 2&nbsp;m</p>

<p>+ Chiều cao : 1 m</p>
', N'g5.jpg', 1, CAST(N'2018-11-17 14:09:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (12, N'Phòng Khách Thượng Hạng', N'bộ', 9500000.0000, N'<p>M&agrave;u sắc : Trắng</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 10&nbsp;m</p>

<p>+ Chiều cao : 1 m</p>
', N'g6.jpg', 1, CAST(N'2018-11-17 14:10:00' AS SmallDateTime), 20, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (13, N'Bộ Ghế Sofa BW', N'bộ', 9900000.0000, N'<p>M&agrave;u sắc : Trắng</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 10&nbsp;m</p>

<p>+ Chiều cao : 1 m</p>
', N'g8.jpg', 1, CAST(N'2018-11-17 14:11:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (14, N'Ghế Nghỉ Dưỡng TenStar', N'bộ', 1800000.0000, N'<p>M&agrave;u sắc : Trắng</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 1&nbsp;m</p>

<p>+ Chiều cao : 1 m</p>
', N'g9.jpg', 3, CAST(N'2018-11-17 14:12:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (15, N'Ghế Sofa Uyên Ương Mộng Hồ Điệp', N'bộ', 9000000.0000, N'<p>M&agrave;u sắc : X&aacute;m</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 1&nbsp;m</p>

<p>+ Chiều cao : 1 m</p>
', N'g10.jpg', 1, CAST(N'2018-11-17 14:13:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (16, N'Tủ Bếp Woody', N'cái', 9000000.0000, N'<p>M&agrave;u sắc : X&aacute;m</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 5&nbsp;m</p>

<p>+ Chiều cao : 2&nbsp;m</p>
', N'g11.jpg', 4, CAST(N'2018-11-17 14:14:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (17, N'Giường Ngủ Hoàng Hôn', N'cái', 5000000.0000, N'<p>M&agrave;u sắc : X&aacute;m</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 2&nbsp;m</p>

<p>+ Chiều cao : 2&nbsp;m</p>
', N'g12.jpg', 2, CAST(N'2018-11-17 14:14:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (18, N'Phòng Ngủ Hoàng Kim', N'bộ', 9000000.0000, N'<p>M&agrave;u sắc : V&agrave;ng</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 2&nbsp;m</p>

<p>+ Chiều cao : 2&nbsp;m</p>
', N'g13.jpg', 2, CAST(N'2018-11-17 14:15:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (20, N'Tủ Sách Triết Gia', N'cái', 5800000.0000, N'<p>M&agrave;u sắc : Trắng</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 2&nbsp;m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'g15.jpg', 3, CAST(N'2018-11-17 14:17:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (21, N'Bộ Gối Sofa Classic', N'bộ', 1800000.0000, N'<p>M&agrave;u sắc : Xanh l&aacute;</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 50&nbsp;cm</p>

<p>+ Chiều cao : 50&nbsp;cm</p>
', N'g16.jpg', 1, CAST(N'2018-11-17 14:17:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (22, N'Ghế Sofa Xanh Ngọc', N'cái', 5000000.0000, N'<p>M&agrave;u sắc : Xanh l&aacute;</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 5&nbsp;cm</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'g17.jpg', 1, CAST(N'2018-11-17 14:18:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (23, N'Ghế Dị XXI', N'cái', 1800000.0000, N'<p>M&agrave;u sắc : Gỗ</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 1&nbsp;m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'g18.jpg', 5, CAST(N'2018-11-17 14:19:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (24, N'Bàn Làm Việc HighBar', N'cái', 1800000.0000, N'<p>M&agrave;u sắc : Gỗ</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 1&nbsp;m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'g19.jpg', 3, CAST(N'2018-11-17 14:19:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (25, N'Phòng Khách Hoàng Gia Tây Ban Nha', N'bộ', 9800000.0000, N'<p>M&agrave;u sắc : Ho&agrave;ng Kim</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 15 m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'g20.jpg', 1, CAST(N'2018-11-17 14:20:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (26, N'Phòng Vệ Sinh XXII', N'bộ', 9900000.0000, N'<p>M&agrave;u sắc : X&aacute;m</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 5 m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'g21.jpg', 5, CAST(N'2018-11-17 14:21:00' AS SmallDateTime), 30, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (27, N'Bàn Làm Việc MacClear', N'cái', 1800000.0000, N'<p>M&agrave;u sắc : Gỗ</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 1&nbsp;m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'g22.jpg', 3, CAST(N'2018-11-17 14:22:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (28, N'Bàn Học Nobi', N'cái', 1800000.0000, N'<p>M&agrave;u sắc : Gỗ - Đen</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 1&nbsp;m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'g23.jpg', 3, CAST(N'2018-11-17 14:22:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (29, N'Bàn Học Sinh Nobito', N'cái', 2000000.0000, N'<p>M&agrave;u sắc : Gỗ - V&agrave;ng</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 1&nbsp;m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'g24.jpg', 3, CAST(N'2018-11-17 14:23:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (30, N'Ghế Valak', N'cái', 1800000.0000, N'<p>M&agrave;u sắc : Đen</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 1&nbsp;m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'g25.jpg', 2, CAST(N'2018-11-17 14:24:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (31, N'Ghế Sofa Rainbow', N'cái', 5000000.0000, N'<p>M&agrave;u sắc : Cầu vồng</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 3&nbsp;m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'lv1.jpg', 1, CAST(N'2018-11-17 14:25:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (32, N'Phòng Khách VanGoth', N'bộ', 9000000.0000, N'<p>M&agrave;u sắc : Classic</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 3&nbsp;m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'lv2.jpg', 1, CAST(N'2018-11-17 14:30:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (33, N'Phòng Khách So Ez', N'bộ', 9700000.0000, N'<p>M&agrave;u sắc : Đủ m&agrave;u sắc</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 13&nbsp;m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'lv3.jpg', 1, CAST(N'2018-11-17 14:31:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (34, N'Ghế Sofa Vintage', N'cái', 5000000.0000, N'<p>M&agrave;u sắc : Classic</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 13&nbsp;m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'lv4.jpg', 1, CAST(N'2018-11-17 14:32:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (35, N'Phòng Khách DarkHouse', N'bộ', 7800000.0000, N'<p>M&agrave;u sắc : Tối</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 13&nbsp;m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'lv5.jpg', 1, CAST(N'2018-11-17 14:33:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (36, N'Ghế Sofa Huyết Tộc', N'cái', 5000000.0000, N'<p>M&agrave;u sắc : Đỏ</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 13&nbsp;m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'lv6.jpg', 1, CAST(N'2018-11-17 14:35:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (37, N'Ghế Sofa Trong Trắng', N'bộ', 5000000.0000, N'<p>M&agrave;u sắc : Đủ m&agrave;u sắc</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 13&nbsp;m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'lv7.jpg', 1, CAST(N'2018-11-17 14:35:00' AS SmallDateTime), 19, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (38, N'Phòng Khách Artisc', N'bộ', 9800000.0000, N'<p>M&agrave;u sắc : Đủ m&agrave;u sắc</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 13&nbsp;m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'lv8.jpg', 1, CAST(N'2018-11-17 14:37:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (39, N'Ghế Sofa Organe', N'bộ', 1800000.0000, N'<p>M&agrave;u sắc : Cam</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 13&nbsp;m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'lv9.jpg', 1, CAST(N'2018-11-17 14:37:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (40, N'Ghế Sofa Organe 2.0', N'bộ', 2000000.0000, N'<p>M&agrave;u sắc : Cam</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 1&nbsp;m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'lv10.jpg', 1, CAST(N'2018-11-17 14:38:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (41, N'Ghế Organe Circle', N'cái', 1800000.0000, N'<p>M&agrave;u sắc : Cam</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 1&nbsp;m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'lv11.png', 2, CAST(N'2018-11-17 14:38:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (42, N'Ghế Kotex', N'cái', 500000.0000, N'<p>M&agrave;u sắc : Đỏ</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 1&nbsp;m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'lv12.jpg', 1, CAST(N'2018-11-17 14:39:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (43, N'Ghế Diana', N'cái', 2000000.0000, N'<p>M&agrave;u sắc : Đỏ</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 1&nbsp;m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'lv13.jpeg', 1, CAST(N'2018-11-17 14:40:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (44, N'Ghế Classical', N'cái', 1800000.0000, N'<p>M&agrave;u sắc : Đen</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 1&nbsp;m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'lv14.jpg', 2, CAST(N'2018-11-17 14:41:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (45, N'Ghế Sofa Kì Lạ', N'cái', 5000000.0000, N'<p>M&agrave;u sắc : Đen</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 1&nbsp;m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'lv16.jpg', 1, CAST(N'2018-11-17 14:41:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (46, N'Ghế Sofa Classic White', N'cái', 2000000.0000, N'<p>M&agrave;u sắc : Đen</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 1&nbsp;m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'lv17.jpg', 1, CAST(N'2018-11-17 14:43:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (47, N'Ghế Sofa Yellow', N'cái', 5000000.0000, N'<p>M&agrave;u sắc : V&agrave;ng</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 1&nbsp;m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'lv18.jpg', 1, CAST(N'2018-11-17 14:43:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (48, N'Bàn Uống Trà HighLands', N'cái', 1800000.0000, N'<p>M&agrave;u sắc : Đen</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 1&nbsp;m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'lv19.jpg', 1, CAST(N'2018-11-17 14:44:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (49, N'Phòng làm việc Artisc', N'bộ', 9600000.0000, N'<p>M&agrave;u sắc : Đen</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 10 m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'lv20.jpg', 3, CAST(N'2018-11-17 14:45:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (50, N'Phòng Khách Cổ Điển Ameri', N'bộ', 9400000.0000, N'<p>M&agrave;u sắc : Đủ m&agrave;u sắc</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 10 m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'lv21.jpg', 1, CAST(N'2018-11-17 14:46:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (51, N'Phòng Khách Trong Trắng Trẻo', N'bộ', 8200000.0000, N'<p>M&agrave;u sắc : Đủ m&agrave;u sắc</p>

<p>K&iacute;ch thước :<br />
+ Chiều rộng&nbsp;: 10 m</p>

<p>+ Chiều cao : 1&nbsp;m</p>
', N'lv22.jpg', 1, CAST(N'2018-11-17 14:47:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (52, N'Ghế Nghỉ Dưỡng Style Resort', N'cái', 1800000.0000, N'<p>M&agrave;u sắc : Trắng</p>

<p>K&iacute;ch thước:</p>

<p>+ Chiều rộng : 1m</p>

<p>+ Chiều cao : 500 cm</p>
', N'n (1).png', 2, CAST(N'2018-11-17 18:01:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (53, N'Ghế Xanh Lá AAA', N'cái', 2000000.0000, N'<p>M&agrave;u sắc : Xanh l&aacute;</p>

<p>K&iacute;ch thước:</p>

<p>+ Chiều rộng : 1m</p>

<p>+ Chiều cao : 500 cm</p>
', N'n (2).png', 1, CAST(N'2018-11-17 18:02:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (54, N'Ghế Sofa Vintage Blue', N'cái', 1800000.0000, N'<p>M&agrave;u sắc : Xanh nước biển</p>

<p>K&iacute;ch thước:</p>

<p>+ Chiều rộng : 1m</p>

<p>+ Chiều cao : 500 cm</p>
', N'n (3).png', 1, CAST(N'2018-11-17 18:02:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (55, N'Ghế Sofa Hòn Ngọc Biển Đông', N'cái', 2000000.0000, N'<p>M&agrave;u sắc : Xanh nước biển</p>

<p>K&iacute;ch thước:</p>

<p>+ Chiều rộng : 1m</p>

<p>+ Chiều cao : 500 cm</p>
', N'n (4).png', 1, CAST(N'2018-11-17 18:03:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (56, N'Bàn Làm Việc Lamborghini', N'cái', 1800000.0000, N'<p>M&agrave;u sắc : Xanh nước biển</p>

<p>K&iacute;ch thước:</p>

<p>+ Chiều rộng : 1m</p>

<p>+ Chiều cao : 500 cm</p>
', N'n (5).png', 3, CAST(N'2018-11-17 18:03:00' AS SmallDateTime), NULL, 0)
INSERT [dbo].[SP] ([MaSP], [TenSP], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaMenu], [NgayCapNhat], [SoLuongBan], [SoLanXem]) VALUES (57, N'Ghế Sofa Classical', N'bộ', 5000000.0000, N'<p>M&agrave;u sắc : Vintage</p>

<p>K&iacute;ch thước:</p>

<p>+ Chiều rộng : 1m</p>

<p>+ Chiều cao : 500 cm</p>
', N'n (6).png', 1, CAST(N'2018-11-17 18:04:00' AS SmallDateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[SP] OFF
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_SP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SP] ([MaSP])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_SP]
GO
ALTER TABLE [dbo].[CTDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_CTDatHang_DonDatHang] FOREIGN KEY([SoDH])
REFERENCES [dbo].[DONDATHANG] ([SoDH])
GO
ALTER TABLE [dbo].[CTDATHANG] CHECK CONSTRAINT [FK_CTDatHang_DonDatHang]
GO
ALTER TABLE [dbo].[CTDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_CTDatHang_SP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SP] ([MaSP])
GO
ALTER TABLE [dbo].[CTDATHANG] CHECK CONSTRAINT [FK_CTDatHang_SP]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DonDatHang_KhachHang]
GO
ALTER TABLE [dbo].[SP]  WITH CHECK ADD  CONSTRAINT [FK_Menu] FOREIGN KEY([MaMenu])
REFERENCES [dbo].[Menu] ([MaMenu])
GO
ALTER TABLE [dbo].[SP] CHECK CONSTRAINT [FK_Menu]
GO
ALTER TABLE [dbo].[CTDATHANG]  WITH CHECK ADD  CONSTRAINT [CK__CTDATHANG__DonGi__22AA2996] CHECK  (([DonGia]>=(0)))
GO
ALTER TABLE [dbo].[CTDATHANG] CHECK CONSTRAINT [CK__CTDATHANG__DonGi__22AA2996]
GO
ALTER TABLE [dbo].[CTDATHANG]  WITH CHECK ADD  CONSTRAINT [CK__CTDATHANG__SoLuo__21B6055D] CHECK  (([SoLuong]>(0)))
GO
ALTER TABLE [dbo].[CTDATHANG] CHECK CONSTRAINT [CK__CTDATHANG__SoLuo__21B6055D]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [CK__DONDATHAN__TriGi__1BFD2C07] CHECK  (([TriGia]>(0)))
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [CK__DONDATHAN__TriGi__1BFD2C07]
GO
ALTER TABLE [dbo].[SP]  WITH CHECK ADD CHECK  (([DonGia]>=(0)))
GO
ALTER TABLE [dbo].[SP]  WITH CHECK ADD CHECK  (([SoLuongBan]>(0)))
GO
