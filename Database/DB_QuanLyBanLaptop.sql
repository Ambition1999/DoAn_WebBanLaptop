USE [QuanLyBanLaptop]
GO
/****** Object:  Table [dbo].[tblChiTietHD]    Script Date: 12/07/2020 1:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietHD](
	[MaHD] [int] NOT NULL,
	[MaTB] [int] NOT NULL,
	[MaCauHinh] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [money] NOT NULL,
 CONSTRAINT [PK_tblChiTietHD_1] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaTB] ASC,
	[MaCauHinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblChiTietThietBi]    Script Date: 12/07/2020 1:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietThietBi](
	[MaTB] [int] NOT NULL,
	[MaCauHinh] [int] IDENTITY(1,1) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaTien] [int] NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[HinhAnhThem] [text] NULL,
	[CPU] [nvarchar](100) NOT NULL,
	[RAM] [nvarchar](100) NOT NULL,
	[OCung] [nvarchar](100) NOT NULL,
	[ManHinh] [nvarchar](100) NOT NULL,
	[DoHoa] [nvarchar](100) NOT NULL,
	[Pin] [nvarchar](100) NOT NULL,
	[Khac] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tblChiTietThietBi_1] PRIMARY KEY CLUSTERED 
(
	[MaTB] ASC,
	[MaCauHinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblGiaoHang]    Script Date: 12/07/2020 1:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGiaoHang](
	[MaHD] [int] NOT NULL,
	[MaVanChuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenNguoiNhan] [nvarchar](100) NOT NULL,
	[DiaChi1] [text] NOT NULL,
	[DiaChi2] [text] NULL,
	[DiaChi3] [text] NULL,
	[MaDonViVanChuyen] [char](10) NOT NULL,
	[SoDT1] [char](12) NOT NULL,
	[SoDT2] [char](12) NULL,
	[Email] [varchar](100) NULL,
 CONSTRAINT [PK_tblGiaoHang_1] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaVanChuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblHoaDon]    Script Date: 12/07/2020 1:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[TenHD] [nvarchar](100) NULL,
	[NgayHD] [datetime] NOT NULL,
	[MaNV] [int] NOT NULL,
	[TongTien] [money] NOT NULL,
 CONSTRAINT [PK_tblHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKhachHang]    Script Date: 12/07/2020 1:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblKhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](100) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [nchar](4) NOT NULL,
	[DienThoai] [varchar](11) NOT NULL,
	[DiaChi] [nvarchar](max) NULL,
	[Email] [varchar](100) NULL,
	[TaiKhoan] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLoaiNhanVien]    Script Date: 12/07/2020 1:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLoaiNhanVien](
	[MaLoaiNV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiNV] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_tblLoaiNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaLoaiNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblLoaiThietBi]    Script Date: 12/07/2020 1:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLoaiThietBi](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblLoaiThietBi] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNhaCungCap]    Script Date: 12/07/2020 1:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
	[DienThoai] [varchar](11) NOT NULL,
	[Email] [varchar](100) NULL,
 CONSTRAINT [PK_tblNhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNhanVien]    Script Date: 12/07/2020 1:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
	[DienThoai] [varchar](11) NOT NULL,
	[Email] [varchar](50) NULL,
	[MaLoaiNV] [int] NOT NULL,
 CONSTRAINT [PK_tblNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNhomTB]    Script Date: 12/07/2020 1:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhomTB](
	[MaNhomTB] [int] IDENTITY(1,1) NOT NULL,
	[TenNhom] [nvarchar](100) NULL,
 CONSTRAINT [PK_tblNhomTB] PRIMARY KEY CLUSTERED 
(
	[MaNhomTB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPhieuNhapHang]    Script Date: 12/07/2020 1:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhieuNhapHang](
	[MaPhieuNH] [int] IDENTITY(1,1) NOT NULL,
	[MaTB] [int] NOT NULL,
	[MaNVNhanHang] [int] NOT NULL,
	[MaNCC] [int] NOT NULL,
	[SoLuong] [nchar](10) NOT NULL,
	[NgayNhap] [nchar](10) NOT NULL,
 CONSTRAINT [PK_tblPhieuNhapHang] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPhieuXuatHang]    Script Date: 12/07/2020 1:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhieuXuatHang](
	[MaPhieuXH] [int] IDENTITY(1,1) NOT NULL,
	[MaTB] [int] NOT NULL,
	[MaNVXuatHang] [int] NOT NULL,
	[MaNVNhanHang] [int] NOT NULL,
	[MaHD] [int] NOT NULL,
	[SoLuong] [nchar](10) NOT NULL,
	[NgayXuat] [datetime] NOT NULL,
 CONSTRAINT [PK_tblPhieuXuatHang] PRIMARY KEY CLUSTERED 
(
	[MaPhieuXH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTaiKhoan]    Script Date: 12/07/2020 1:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTaiKhoan](
	[TaiKhoan] [varchar](50) NOT NULL,
	[MatKhau] [varchar](1000) NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[NgayDangKy] [date] NULL,
	[LoaiTK] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblThanhToan]    Script Date: 12/07/2020 1:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblThanhToan](
	[MaHD] [int] NOT NULL,
	[MaKH] [int] NOT NULL,
	[SoTienThanhToan] [money] NOT NULL,
	[NgayThanhToan] [date] NOT NULL,
	[PhuongThucThanhToan] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblThanhToan] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblThietBi]    Script Date: 12/07/2020 1:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblThietBi](
	[MaTB] [int] IDENTITY(1,1) NOT NULL,
	[TenTB] [nvarchar](100) NOT NULL,
	[NhanHieu] [nvarchar](50) NULL,
	[MaLoai] [int] NOT NULL,
	[MaNCC] [int] NOT NULL,
	[ThongTinMoTa] [text] NULL,
	[HinhAnhChung] [text] NULL,
	[NgayUpLoad] [date] NULL,
	[MaNhomTB] [int] NOT NULL,
 CONSTRAINT [PK_tblThietBi] PRIMARY KEY CLUSTERED 
(
	[MaTB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaTB], [MaCauHinh], [SoLuong], [ThanhTien]) VALUES (4, 4, 15, 3, 179700000.0000)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaTB], [MaCauHinh], [SoLuong], [ThanhTien]) VALUES (5, 4, 15, 3, 179700000.0000)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaTB], [MaCauHinh], [SoLuong], [ThanhTien]) VALUES (5, 12, 33, 4, 139960000.0000)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaTB], [MaCauHinh], [SoLuong], [ThanhTien]) VALUES (6, 10, 29, 2, 122000000.0000)
SET IDENTITY_INSERT [dbo].[tblChiTietThietBi] ON 

INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (1, 1, 10, 23990000, 1, N'null', N'AMD Ryzen 7 Pro 3700U 2.3Ghz, 4Mb Cache, Upto 4.0Gz
', N'8GB DDR4 2400Mhz
', N'256GB SSD NVMe
', N'13.3 inch FHD (1920 x 1080), IPS Anti-Glare
', N'AMD Vega 10
', N'3 Cells, 57Wh
', N'2 x USB 3.1 (Gen 1) 2 x USB-C (1 Thunderbolt™ 3) Khe thẻ MicroSD Khe thẻ Smartcard Khe cắm Micro-SIM Jack cắm tai nghe/ micro HDMI 1.4 RJ45
')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (1, 4, 7, 22990000, 1, N'null', N'AMD Ryzen 5 Pro 3500U 2.1Ghz, 4Mb Cache, Upto 3.7Ghz
', N'8GB DDR4 2400Mhz
', N'512GB SSD NVMe
', N'13.3 inch FHD (1920 x 1080), IPS Anti-Glare
', N'AMD Vega 8
', N'3 Cells, 57Wh
', N'2 x USB 3.1 (Gen 1) 2 x USB-C (1 Thunderbolt™ 3) Khe thẻ MicroSD Khe thẻ Smartcard Khe cắm Micro-SIM Jack cắm tai nghe/ micro HDMI 1.4 RJ45
')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (2, 8, 20, 22990000, 1, NULL, N'Intel Core i5-8265U 1.60 GHz, 6MB SmartCache Cache, Upto 4.10 GHz
', N'8GB DDR4 2400MHz
', N'256GB SSD M2 NVMe PCIe
', N'14 inch FHD (1920 x 1080), IPS Anti-Glare
', N'Intel UHD Graphics 620
', N'4 Cells 60 Whrs Battery
', N'1 Thunderbolt™ 3 with Power Delivery and DisplayPort 2 USB 3.1 Gen 1, one with PowerShare 1 HDMI 1.4 1 Optional external uSIM card tray 1 Optional Touch Fingerprint Reader in power button 1 DC-in 7.4 mm barrel 1 Optional SmartCard Reader 1 uSD 4.0 Memory card reader 1 Noble Wedge Lock slot
')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (2, 11, 12, 24490000, 1, N'null', N'Intel Core i5-8365U 1.60 GHz, 6MB SmartCache Cache, Upto 4.10 GHz
', N'8GB DDR4 2400MHz
', N'256GB SSD M2 NVMe PCIe
', N'14 inch FHD (1920 x 1080), IPS
', N'Intel UHD Graphics 620
', N'4 Cells 60 Whrs Battery
', N'1 Thunderbolt™ 3 with Power Delivery and DisplayPort 2 USB 3.1 Gen 1, one with PowerShare 1 HDMI 1.4 1 Optional external uSIM card tray 1 Optional Touch Fingerprint Reader in power button 1 DC-in 7.4 mm barrel 1 Optional SmartCard Reader 1 uSD 4.0 Memory card reader 1 Noble Wedge Lock slot
')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (2, 12, 10, 25990000, 1, NULL, N'Intel Core i7-8665U 1.9Ghz, 8MB SmartCache Cache, Upto 4.8Ghz
', N'8GB DDR4 2400Mhz
', N'256GB SSD M2 NVMe PCIe
', N'14 inch HD (1920 x 1080, Anti-Glare
', N'Intel UHD Graphics 620
', N'4 Cells 60 Whrs Battery
', N'1 Thunderbolt™ 3 with Power Delivery and DisplayPort 2 USB 3.1 Gen 1, one with PowerShare 1 HDMI 1.4 1 Optional external uSIM card tray 1 Optional Touch Fingerprint Reader in power button 1 DC-in 7.4 mm barrel 1 Optional SmartCard Reader 1 uSD 4.0 Memory card reader 1 Noble Wedge Lock slot
')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (4, 13, 5, 43990000, 1, NULL, N'Intel® Core™ i5-10300H 2.5GHz, 8 MB Intel® Smart Cache Cache, Upto 4.5GHz', N'8GB DDR4 2933MHz', N'256GB SSD', N'17 inches FHD+ (1920 x 1200), InfinityEdge Anti-Glare', N'Intel UHD Graphics 630 N/A', N'3-cell smart lithium-ion 56 Wh', N'4 x USB Type-C 3.1 Gen 2 với Thunderbolt™ 3 1 x jack 3.5mm tích hợp headphone/microphone')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (4, 15, 3, 59900000, 1, NULL, N'Intel® Core™ i5-10750H 2.6GHz, 12 MB Intel® Smart Cache Cache, Upto 5.0GHz', N'8GB DDR4 2933MHz', N'512GB SSD', N'17 inches FHD+ (1920 x 1200), InfinityEdge Anti-Glare', N'NVIDIA® GeForce® GTX 1650 Ti Max-Q 4GB', N'3-cell smart lithium-ion 56 Wh', N'4 x USB Type-C 3.1 Gen 2 với Thunderbolt™ 3 1 x jack 3.5mm tích hợp headphone/microphone')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (5, 17, 8, 21490000, 1, NULL, N'Intel® Core™ i5-9300H 2.4Ghz, 8 MB Intel® Smart Cache Cache, Upto 4.1Ghz', N'8GB DDR4 2666MHz', N'256GB SSD M2 NVMe PCIe', N'15.6 inch FHD (1920 x 1080), Anti-Glare', N'NVIDIA GTX 1050 3GB', N'56Whr', N'3 cổng USB 3.1 Gen 1(Type A), 1 Cổng Thunderbolt 3(Type C), 1 HDMI 2.0, Khe thẻ microSD')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (6, 20, 11, 15490000, 1, NULL, N'Intel Core i5-6300U 2.4GHz, 3MB SmartCache Cache, Upto 3.0GHz', N'NULL12GB DDR4 2133MHz', N'256GB SSD M.2', N'14 inch 1920 x 1080 (FHD), IPS AntiGlare Led Backlit', N' Intel HD Graphics 520 1.76Gb', N' 6 Cells (3 Li-Polymer + 3 Li-ion)', N'RJ45, Mini DisplayPort™ HDMI™, 4-in-1 Card Reader, Headphone / Microphone, Smart Card Reader(Optional), Fingerprint Reader(Optional), WWAN(Optional), WiGig(Optional)')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (6, 21, 15, 14990000, 1, NULL, N'Intel Core i5-6300U 2.4GHz, 3MB SmartCache Cache, Upto 3.0GHz', N'8GB DDR4 2133MHz', N'256GB SSD M.2', N'14 inch 1920 x 1080 (FHD), IPS AntiGlare Led Backlit', N'Intel HD Graphics 520 1.76Gb', N'6 Cells (3 Li-Polymer + 3 Li-ion)', N'RJ45, Mini DisplayPort™ HDMI™, 4-in-1 Card Reader, Headphone / Microphone, Smart Card Reader(Optional), Fingerprint Reader(Optional), WWAN(Optional), WiGig(Optional)')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (6, 23, 10, 16990000, 1, NULL, N'Intel Core i7-6600U 2.6GHz, 4 MB SmartCache Cache, Upto 3.4GHz', N'20GB DDR4 2133MHz', N'256GB SSD M.2', N'14 inch 1920 x 1080 (FHD), IPS AntiGlare Led Backlit
', N'Intel HD Graphics 520 1.76Gb', N'6 Cells (3 Li-Polymer + 3 Li-ion)', N'RJ45, Mini DisplayPort™ HDMI™, 4-in-1 Card Reader, Headphone / Microphone, Smart Card Reader(Optional), Fingerprint Reader(Optional), WWAN(Optional), WiGig(Optional)')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (7, 24, 9, 24990000, 1, NULL, N'Intel Core i5-7360U 2.3Ghz, 4MB Cache Cache, Upto 3.6Ghz', N'8GB LPDDR3 2133Mhz', N'256GB SSD', N'13.3 inch QHD+ (2560x1600), Retina LED', N' Intel Iris Plus Graphics 640 1.5GB', N'54.5Wh', N' 2 cổng Thunderbolt, 1 jack tai nghe 3.5mm')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (8, 26, 15, 19990000, 1, NULL, N'Intel® Core™ i5-9300H 2.40GHz, 8 MB Intel® Smart Cache Cache, Upto 4.10 GHz', N'8GB DDR4 2666MHz', N'256GB SSD', N'15.6 inch FHD (1920 x 1080), IPS Anti-Glare', N'NVIDIA GeForce GTX1650 4GB', N'57 Wh Lithium-Ion
', N'1 Cổng USB 3.1 (Type C), 1 Cổng USB 2.0, 2 Cổng USB 3.0 (Type A), HDMI , RJ-45, Cổng 3.5mm (Combo tai nghe và mic)')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (9, 27, 12, 24990000, 1, NULL, N'I5 8250U 1.60 GHz, 6 MB SmartCache Cache, Upto 3.40 GHz', N'8GB LPDDR3 2133', N'256GB SSD', N'13 inch FHD+ (2256 x 1504), Pixel Sense', N'Intel UHD Graphics 620', N'60+5W Power Supply', N'1 x Headset jack 1 x USB 3.0 1 x Surface port 1 x MiniDP')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (10, 29, 2, 61000000, 1, NULL, N'Intel® Core™ i7-9700K 3.6 GHz, 12MB SmartCache Cache, Upto 4.9 GHz', N'16GB DDR4 2666MHz', N'256GB SSD m2 NVMe PCIe', N'17.3 inch FHD (1920x1080), UltraSharp Anti-Glare IPS 60Hz', N' nVIDIA GeForce RTX 2060 6GB', N' Lithium Ion (90 Wh)', N'4 x USB 3.0 / 3.1 Gen1, 2 x USB 3.1 Gen2, 1 Thunderbolt 3, 1 x HDMI, 1 x DisplayPort, 1 x Kensington Lock, 1 jack cắm tai nghe/micro 3.5mm, Khe đọc thẻ nhớ SD
')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (11, 31, 8, 28990000, 1, NULL, N'Intel® Core™ i5-1035G7 1.2GHz, 6 MB Intel® Smart Cache Cache, Upto 3.7GHz', N'8GB DDR4 2400MHz', N'256GB M.2 2280 NVMe SSD', N'14-inch FHD (1920 x 1080), IPS', N'Intel® Iris® Plus Graphics N/A', N'4 Cell, 72Wh', N'2 cổng USB 3.0 1 cổng HDMI tiêu chuẩn 1 jack cắm tai nghe')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (11, 32, 6, 42490000, 1, NULL, N'Intel® Core™ i7-1065G7 1.3GHz, 8 MB Intel® Smart Cache Cache, Upto 3.9GHz', N'8GB DDR4 2400MHz', N'512GB M.2 2280 NVMe SSD', N'17-inch WQXGA (2560 x 1600), IPS', N'Intel® Iris® Plus Graphics N/A', N'4 Cell, 80Wh', N'3 cổng USB 3.0 1 cổng HDMI tiêu chuẩn 1 jack cắm tai nghe')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (12, 33, 7, 34990000, 1, NULL, N'Intel® Core™ i7-165G7 1.3 GHz, 8MB SmartCache Cache, Upto 3.9 GHz', N'16GB LPDDR3 2133MHz', N'512GB SSD m2 NVMe', N'13.3 inch FHD (1920x1080), IGZO,LED backlight, IPS', N'13.3 inch FHD (1920x1080), IGZO,LED backlight, IPS', N'53.1Wh', N'Thunderbolt™ 3 (USB-C™), power port, 4 lanes of PCI Express USB-C 3.1 Gen 2, power port 2x Type-A USB 3.1')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (12, 34, 5, 35990000, 1, NULL, N'Intel® Core™ i7-8565U 1.8 GHz, 8MB SmartCache Cache, Upto 4.6 GHz', N'16GB LPDDR3 2133MHz', N'256GB SSD m2 NVMe', N'13.3 inch FHD (1920x1080), IGZO,LED backlight, IPS', N'nVIDIA GeForce MX150 4GB', N'53.1Wh', N'Thunderbolt™ 3 (USB-C™), power port, 4 lanes of PCI Express USB-C 3.1 Gen 2, power port 2x Type-A USB 3.1')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (13, 36, 15, 14990000, 1, NULL, N'Intel® Core™ i5-8265U 1.6Ghz, 6MB Cache, Upto 3.9Ghz', N'12GB DDR4 2400Mhz', N'256GB SSD', N'14 inch FHD (1920 x 1080), IPS Anti-Glare', N' Intel UHD Graphics 620', N'48Whr', N'Khe thẻ SD, 2 Cổng USB 3.1 (Type A), 1 Cổng USB 3.1 (Type C), HDMI 1.4b, Cổng 3.5mm (tai nghe kèm mic)')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (13, 37, 13, 16990000, 1, NULL, N'Intel® Core™ i7-8565U 1.8Ghz, 8MB Cache, Upto 4.6Ghz', N'8GB DDR4 2400Mhz', N'256GB SSD', N'14 inch FHD (1920 x 1080), IPS Anti-Glare', N' Intel UHD Graphics 620', N'48Whr', N'Khe thẻ SD, 2 Cổng USB 3.1 (Type A), 1 Cổng USB 3.1 (Type C), HDMI 1.4b, Cổng 3.5mm (tai nghe kèm mic)')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (14, 38, 8, 17590000, 1, NULL, N'Intel Core i5-8265U 1.60 GHz, 6MB SmartCache Cache, Upto 3.90 GHz', N'8GB DDR4 2400MHz', N'512GB SSD NVMe', N'14 inch FHD (1920 x 1080), Anti-Glare LED-backlit', N'Intel UHD Graphics 620 RAM-e', N'3 -Cell 50 Wh', N'1 x jack cắm tai nghe 3.5mm; 1 x Type-C USB 3.0 (USB 3.1 Gen 1); 1 x Type-A USB 3.1 (Gen 1); 1 x Type-A USB 3.1 (Gen 2); 1 x HDMI; 1 x Bộ đọc vân tay;')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (15, 39, 9, 25990000, 1, NULL, N'Intel Core i7 10510U 1.80 GHz, 8MB SmartCache Cache, Upto 4.90 GHz', N'8GB DDR4 2400MHz', N'256GB SSD NVMe PCIe', N'13.3 inch FHD (1920x1080), IPS Anti-Glare', N'NVIDIA Geforce MX250 2Gb', N'3Cell, 51WHr', N'1 khe đọc thẻ microSD 2 x USB 3.1 Type-C™ Gen 1 (Data Transfer up to 5 Gb/s, Power Delivery, DP1.2, HP Sleep and Charge); 2 x USB 3.1 Gen 1 (1 HP Sleep and Charge); 1 jack cắm tai nghe 3.5mm')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (16, 42, 20, 139000, 1, NULL, N'1', N'1', N'1', N'1', N'1', N'1', N'1')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (17, 43, 19, 1190000, 1, NULL, N'1', N'1', N'1', N'1', N'1', N'1', N'1')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (18, 44, 22, 2100000, 1, NULL, N'1', N'1', N'1', N'1', N'1', N'1', N'1')
INSERT [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh], [SoLuong], [GiaTien], [TrangThai], [HinhAnhThem], [CPU], [RAM], [OCung], [ManHinh], [DoHoa], [Pin], [Khac]) VALUES (20, 45, 17, 2900000, 1, NULL, N'1', N'1', N'1', N'1', N'1', N'1', N'1')
SET IDENTITY_INSERT [dbo].[tblChiTietThietBi] OFF
SET IDENTITY_INSERT [dbo].[tblGiaoHang] ON 

INSERT [dbo].[tblGiaoHang] ([MaHD], [MaVanChuyen], [TenNguoiNhan], [DiaChi1], [DiaChi2], [DiaChi3], [MaDonViVanChuyen], [SoDT1], [SoDT2], [Email]) VALUES (4, 1, N'NguyễnVănA', N'skjdfjaskdjfasdlf', N'skjdfjaskdjfasdlf', N'skjdfjaskdjfasdlf', N'1         ', N'0923456789  ', NULL, N'aa@gmail.com')
INSERT [dbo].[tblGiaoHang] ([MaHD], [MaVanChuyen], [TenNguoiNhan], [DiaChi1], [DiaChi2], [DiaChi3], [MaDonViVanChuyen], [SoDT1], [SoDT2], [Email]) VALUES (5, 2, N'NguyễnVănA', N'sdhfhákdfhádkfládfalllládfhádfkádfjádkfádfhkádfj', N'sdhfhákdfhádkfládfalllládfhádfkádfjádkfádfhkádfj', N'sdhfhákdfhádkfládfalllládfhádfkádfjádkfádfhkádfj', N'0         ', N'0923456789  ', NULL, N'aa@gmail.com')
INSERT [dbo].[tblGiaoHang] ([MaHD], [MaVanChuyen], [TenNguoiNhan], [DiaChi1], [DiaChi2], [DiaChi3], [MaDonViVanChuyen], [SoDT1], [SoDT2], [Email]) VALUES (6, 3, N'NguyễnVănA', N'TPHCM', N'TPHCM', N'TPHCM', N'0         ', N'0923456789  ', NULL, N'aa@gmail.com')
SET IDENTITY_INSERT [dbo].[tblGiaoHang] OFF
SET IDENTITY_INSERT [dbo].[tblHoaDon] ON 

INSERT [dbo].[tblHoaDon] ([MaHD], [TenHD], [NgayHD], [MaNV], [TongTien]) VALUES (1, N'bán hàng', CAST(0x00008E0C00000000 AS DateTime), 1, 10.0000)
INSERT [dbo].[tblHoaDon] ([MaHD], [TenHD], [NgayHD], [MaNV], [TongTien]) VALUES (2, N'bán hàng', CAST(0x0000ABD901231EC5 AS DateTime), 1, 10.0000)
INSERT [dbo].[tblHoaDon] ([MaHD], [TenHD], [NgayHD], [MaNV], [TongTien]) VALUES (3, N'bán hàng', CAST(0x0000ABD90123CFFA AS DateTime), 1, 10.0000)
INSERT [dbo].[tblHoaDon] ([MaHD], [TenHD], [NgayHD], [MaNV], [TongTien]) VALUES (4, NULL, CAST(0x0000ABF500D8E075 AS DateTime), 1, 179700000.0000)
INSERT [dbo].[tblHoaDon] ([MaHD], [TenHD], [NgayHD], [MaNV], [TongTien]) VALUES (5, NULL, CAST(0x0000ABF500DD953E AS DateTime), 1, 319660000.0000)
INSERT [dbo].[tblHoaDon] ([MaHD], [TenHD], [NgayHD], [MaNV], [TongTien]) VALUES (6, NULL, CAST(0x0000ABF600196ED4 AS DateTime), 1, 122000000.0000)
SET IDENTITY_INSERT [dbo].[tblHoaDon] OFF
SET IDENTITY_INSERT [dbo].[tblKhachHang] ON 

INSERT [dbo].[tblKhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DienThoai], [DiaChi], [Email], [TaiKhoan]) VALUES (12, N'Nguyễn Văn Minh', CAST(0xD1230B00 AS Date), N'Nam ', N'03555512383', N'TP HCM', N'2@gmail.com', N'minhnguyen')
INSERT [dbo].[tblKhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DienThoai], [DiaChi], [Email], [TaiKhoan]) VALUES (13, N'Nguyễn Thanh Nhân', CAST(0x3C130B00 AS Date), N'Nam ', N'03555512383', N'Hà Nội', N'3@gmail.com', N'thanhnhan')
INSERT [dbo].[tblKhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DienThoai], [DiaChi], [Email], [TaiKhoan]) VALUES (14, N'Nguyễn Văn Trường', CAST(0xE51B0B00 AS Date), N'Nam ', N'03555512383', N'Huế', N'4@gmail.com', N'truongnguyen')
INSERT [dbo].[tblKhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DienThoai], [DiaChi], [Email], [TaiKhoan]) VALUES (15, N'Nguyễn Thị Vân Thanh', CAST(0xF8230B00 AS Date), N'Nữ  ', N'03555512383', N'Bến Tre', N'5@gmail.com', N'vanthanh')
INSERT [dbo].[tblKhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DienThoai], [DiaChi], [Email], [TaiKhoan]) VALUES (16, N'Nguyễn Văn A', CAST(0x67230B00 AS Date), N'Nam ', N'0123456789', N'TPHCM', NULL, N'toan')
INSERT [dbo].[tblKhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DienThoai], [DiaChi], [Email], [TaiKhoan]) VALUES (17, N'Lê Chí Toàn', CAST(0xFD610C00 AS Date), N'Nam ', N'0123456789', N'TP Hồ Chí Minh,fs', N'a@gmail.com', N'toannnn')
INSERT [dbo].[tblKhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DienThoai], [DiaChi], [Email], [TaiKhoan]) VALUES (18, N'Lê Chí Toàn', CAST(0xFD610C00 AS Date), N'Nam ', N'0123456789', N'TP Hồ Chí Minh,TP Hồ Chí Minh', N'abc@gmail.com', N'toanmahoa')
INSERT [dbo].[tblKhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DienThoai], [DiaChi], [Email], [TaiKhoan]) VALUES (19, N'Hồ Chí Lên', CAST(0xFD610C00 AS Date), N'Nam ', N'0123456789', N'TPHCM', N'aa@gmail.com', N'cholen')
INSERT [dbo].[tblKhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DienThoai], [DiaChi], [Email], [TaiKhoan]) VALUES (20, N'Nguyễn Văn A', CAST(0xFD610C00 AS Date), N'Nam ', N'0123456789', N'TPHCM', N'aa@gmail.com', N'choquan')
INSERT [dbo].[tblKhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DienThoai], [DiaChi], [Email], [TaiKhoan]) VALUES (1018, N'NguyễnVănA', CAST(0xF7600C00 AS Date), N'Nam ', N'0923456789', N'TPHCM', N'aa@gmail.com', N'LeChiToan')
INSERT [dbo].[tblKhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DienThoai], [DiaChi], [Email], [TaiKhoan]) VALUES (1020, N'LêVănB', CAST(0xF7600C00 AS Date), N'Nam ', N'0923456789', N'TP HCM', N'aa@gmail.com', N'sad')
INSERT [dbo].[tblKhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [DienThoai], [DiaChi], [Email], [TaiKhoan]) VALUES (1022, N'Lê Chí Toàn', CAST(0xF7600C00 AS Date), N'Nam ', N'0923456789', N'TP HCM', N'aa@gmail.com', N'TaiKhoanTest1')
SET IDENTITY_INSERT [dbo].[tblKhachHang] OFF
SET IDENTITY_INSERT [dbo].[tblLoaiNhanVien] ON 

INSERT [dbo].[tblLoaiNhanVien] ([MaLoaiNV], [TenLoaiNV]) VALUES (1, N'Nhân viên bán hàng')
INSERT [dbo].[tblLoaiNhanVien] ([MaLoaiNV], [TenLoaiNV]) VALUES (2, N'Nhân viên thanh toán')
INSERT [dbo].[tblLoaiNhanVien] ([MaLoaiNV], [TenLoaiNV]) VALUES (3, N'Nhân viên vận chuyển')
SET IDENTITY_INSERT [dbo].[tblLoaiNhanVien] OFF
SET IDENTITY_INSERT [dbo].[tblLoaiThietBi] ON 

INSERT [dbo].[tblLoaiThietBi] ([MaLoai], [TenLoai]) VALUES (1, N'Laptop')
INSERT [dbo].[tblLoaiThietBi] ([MaLoai], [TenLoai]) VALUES (2, N'Phụ kiện')
SET IDENTITY_INSERT [dbo].[tblLoaiThietBi] OFF
SET IDENTITY_INSERT [dbo].[tblNhaCungCap] ON 

INSERT [dbo].[tblNhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Email]) VALUES (1, N'Nhà cung cấp số 1', N'TP Hồ Chí Minh', N'0123456789', N'ncc1@gmail.com')
INSERT [dbo].[tblNhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Email]) VALUES (2, N'Nhà cung cấp số 2', N'Hà Nội', N'0123456779', N'ncc2@gmail.com')
INSERT [dbo].[tblNhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Email]) VALUES (3, N'Nhà cung cấp số 3', N'Đà Nẵng', N'0123456779', N'ncc3@gmail.com')
SET IDENTITY_INSERT [dbo].[tblNhaCungCap] OFF
SET IDENTITY_INSERT [dbo].[tblNhanVien] ON 

INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai], [Email], [MaLoaiNV]) VALUES (1, N'Nguyễn Văn A', N'114 Lê Trọng Tấn, quận Tân Phú, tp Hồ Chí Minh', N'0123456789', N'a@gmail.com', 1)
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai], [Email], [MaLoaiNV]) VALUES (3, N'Nguyễn Thị B', N'Bình Chánh, tp Hồ Chí Minh', N'0987654321', N'b@gmail.com', 2)
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai], [Email], [MaLoaiNV]) VALUES (4, N'Trần Văn C', N'Tân Phú, tp Hồ Chí Minh', N'0135792468', N'c@gmail.com', 3)
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai], [Email], [MaLoaiNV]) VALUES (5, N'Nguyễn Văn H', N'114 Lê Trọng Tấn, quận Tân Phú, tp Hồ Chí Minh', N'0357928456', N'd@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[tblNhanVien] OFF
SET IDENTITY_INSERT [dbo].[tblNhomTB] ON 

INSERT [dbo].[tblNhomTB] ([MaNhomTB], [TenNhom]) VALUES (1, N'Gaming siêu cấp')
INSERT [dbo].[tblNhomTB] ([MaNhomTB], [TenNhom]) VALUES (2, N'Gaming cao cấp')
INSERT [dbo].[tblNhomTB] ([MaNhomTB], [TenNhom]) VALUES (3, N'Gaming tầm trung')
INSERT [dbo].[tblNhomTB] ([MaNhomTB], [TenNhom]) VALUES (4, N'Đồ họa - kỹ thuật')
INSERT [dbo].[tblNhomTB] ([MaNhomTB], [TenNhom]) VALUES (5, N'Doanh nhân - lịch lãm')
INSERT [dbo].[tblNhomTB] ([MaNhomTB], [TenNhom]) VALUES (6, N'Học tập - chơi game')
INSERT [dbo].[tblNhomTB] ([MaNhomTB], [TenNhom]) VALUES (7, N'Văn phòng - học tập cơ bản')
INSERT [dbo].[tblNhomTB] ([MaNhomTB], [TenNhom]) VALUES (8, N'Khác')
SET IDENTITY_INSERT [dbo].[tblNhomTB] OFF
INSERT [dbo].[tblTaiKhoan] ([TaiKhoan], [MatKhau], [TrangThai], [NgayDangKy], [LoaiTK]) VALUES (N'admin', N'Tu4nfKq5Rxo=', 1, NULL, NULL)
INSERT [dbo].[tblTaiKhoan] ([TaiKhoan], [MatKhau], [TrangThai], [NgayDangKy], [LoaiTK]) VALUES (N'cholen', N'Tu4nfKq5Rxo=', 1, CAST(0x49410B00 AS Date), N'Khách hàng')
INSERT [dbo].[tblTaiKhoan] ([TaiKhoan], [MatKhau], [TrangThai], [NgayDangKy], [LoaiTK]) VALUES (N'choquan', N'Tu4nfKq5Rxo=', 1, CAST(0x49410B00 AS Date), N'Khách hàng')
INSERT [dbo].[tblTaiKhoan] ([TaiKhoan], [MatKhau], [TrangThai], [NgayDangKy], [LoaiTK]) VALUES (N'LeChiToan', N'uYk1ucsBVa8=', 1, CAST(0x4C410B00 AS Date), N'Khách hàng')
INSERT [dbo].[tblTaiKhoan] ([TaiKhoan], [MatKhau], [TrangThai], [NgayDangKy], [LoaiTK]) VALUES (N'minhnguyen', N'Tu4nfKq5Rxo=', 1, NULL, NULL)
INSERT [dbo].[tblTaiKhoan] ([TaiKhoan], [MatKhau], [TrangThai], [NgayDangKy], [LoaiTK]) VALUES (N'sad', N'Tu4nfKq5Rxo=', 1, CAST(0x50410B00 AS Date), N'Khách hàng')
INSERT [dbo].[tblTaiKhoan] ([TaiKhoan], [MatKhau], [TrangThai], [NgayDangKy], [LoaiTK]) VALUES (N'Taaifkhoatest1', N'IWKZOLC23Eo=', 1, CAST(0x50410B00 AS Date), N'Khách hàng')
INSERT [dbo].[tblTaiKhoan] ([TaiKhoan], [MatKhau], [TrangThai], [NgayDangKy], [LoaiTK]) VALUES (N'TaiKhoanTest1', N'IWKZOLC23Eo=', 1, CAST(0x50410B00 AS Date), N'Khách hàng')
INSERT [dbo].[tblTaiKhoan] ([TaiKhoan], [MatKhau], [TrangThai], [NgayDangKy], [LoaiTK]) VALUES (N'thanhnhan', N'Tu4nfKq5Rxo=', 1, NULL, NULL)
INSERT [dbo].[tblTaiKhoan] ([TaiKhoan], [MatKhau], [TrangThai], [NgayDangKy], [LoaiTK]) VALUES (N'toan', N'Tu4nfKq5Rxo=', 1, CAST(0x43410B00 AS Date), N'Khách hàng')
INSERT [dbo].[tblTaiKhoan] ([TaiKhoan], [MatKhau], [TrangThai], [NgayDangKy], [LoaiTK]) VALUES (N'toanmahoa', N'Tu4nfKq5Rxo=', 1, CAST(0x48410B00 AS Date), N'Khách hàng')
INSERT [dbo].[tblTaiKhoan] ([TaiKhoan], [MatKhau], [TrangThai], [NgayDangKy], [LoaiTK]) VALUES (N'toannnn', N'Tu4nfKq5Rxo=', 1, CAST(0x48410B00 AS Date), N'Khách hàng')
INSERT [dbo].[tblTaiKhoan] ([TaiKhoan], [MatKhau], [TrangThai], [NgayDangKy], [LoaiTK]) VALUES (N'truongnguyen', N'Tu4nfKq5Rxo=', 1, NULL, NULL)
INSERT [dbo].[tblTaiKhoan] ([TaiKhoan], [MatKhau], [TrangThai], [NgayDangKy], [LoaiTK]) VALUES (N'vanthanh', N'Tu4nfKq5Rxo=', 0, NULL, NULL)
INSERT [dbo].[tblThanhToan] ([MaHD], [MaKH], [SoTienThanhToan], [NgayThanhToan], [PhuongThucThanhToan]) VALUES (4, 1018, 179700000.0000, CAST(0x50410B00 AS Date), N'Thanh toán ngay')
INSERT [dbo].[tblThanhToan] ([MaHD], [MaKH], [SoTienThanhToan], [NgayThanhToan], [PhuongThucThanhToan]) VALUES (5, 1018, 319660000.0000, CAST(0x50410B00 AS Date), N'Thanh toán khi nhận hàng')
INSERT [dbo].[tblThanhToan] ([MaHD], [MaKH], [SoTienThanhToan], [NgayThanhToan], [PhuongThucThanhToan]) VALUES (6, 1018, 122000000.0000, CAST(0x51410B00 AS Date), N'Thanh toán ngay')
SET IDENTITY_INSERT [dbo].[tblThietBi] ON 

INSERT [dbo].[tblThietBi] ([MaTB], [TenTB], [NhanHieu], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnhChung], [NgayUpLoad], [MaNhomTB]) VALUES (1, N'ThinkPad X395', N'ThinkPad', 1, 1, NULL, N'LenovoThinkPadx395_1,LenovoThinkPadx395_2,LenovoThinkPadx395_3,LenovoThinkPadx395_4,LenovoThinkPadx395_5', NULL, 4)
INSERT [dbo].[tblThietBi] ([MaTB], [TenTB], [NhanHieu], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnhChung], [NgayUpLoad], [MaNhomTB]) VALUES (2, N'Dell Latitude 7400', N'Dell', 1, 1, NULL, N'DellLatitute7400_1,DellLatitute7400_2,DellLatitute7400_3,DellLatitute7400_4,DellLatitute7400_5', NULL, 6)
INSERT [dbo].[tblThietBi] ([MaTB], [TenTB], [NhanHieu], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnhChung], [NgayUpLoad], [MaNhomTB]) VALUES (4, N'Dell XPS 17 9700', N'Dell', 1, 1, NULL, N'DellXPS179700_1,DellXPS179700_2,DellXPS179700_3,DellXPS179700_4,DellXPS179700_5', NULL, 5)
INSERT [dbo].[tblThietBi] ([MaTB], [TenTB], [NhanHieu], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnhChung], [NgayUpLoad], [MaNhomTB]) VALUES (5, N'Dell Inspiron 7590', N'Dell', 1, 1, NULL, N'DellInspiron7590_1,DellInspiron7590_2,DellInspiron7590_3,DellInspiron7590_4,DellInspiron7590_5', NULL, 4)
INSERT [dbo].[tblThietBi] ([MaTB], [TenTB], [NhanHieu], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnhChung], [NgayUpLoad], [MaNhomTB]) VALUES (6, N'ThinkPad T470s', N'ThinkPad', 1, 1, NULL, N'ThinkPadT470s_1,ThinkPadT470s_2,ThinkPadT470s_3,ThinkPadT470s_4,ThinkPadT470s_5', NULL, 7)
INSERT [dbo].[tblThietBi] ([MaTB], [TenTB], [NhanHieu], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnhChung], [NgayUpLoad], [MaNhomTB]) VALUES (7, N'Apple MacBook Pro 13 2017', N'Apple', 1, 1, NULL, N'AppleMacBookPro132017_1,AppleMacBookPro132017_2,AppleMacBookPro132017_3,AppleMacBookPro132017_4,AppleMacBookPro132017_5', NULL, 7)
INSERT [dbo].[tblThietBi] ([MaTB], [TenTB], [NhanHieu], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnhChung], [NgayUpLoad], [MaNhomTB]) VALUES (8, N'Acer Nitro 5', N'Acer', 1, 1, NULL, N'AcerNitro5_1,AcerNitro5_2,AcerNitro5_3,AcerNitro5_4,AcerNitro5_5', NULL, 3)
INSERT [dbo].[tblThietBi] ([MaTB], [TenTB], [NhanHieu], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnhChung], [NgayUpLoad], [MaNhomTB]) VALUES (9, N'Surface Laptop 2', N'Microsoft', 1, 1, NULL, N'SurfaceLaptop2_1,SurfaceLaptop2_2,SurfaceLaptop2_3,SurfaceLaptop2_4,SurfaceLaptop2_5', NULL, 7)
INSERT [dbo].[tblThietBi] ([MaTB], [TenTB], [NhanHieu], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnhChung], [NgayUpLoad], [MaNhomTB]) VALUES (10, N'Dell Alienware Area-51M', N'Alienware', 1, 1, NULL, N'DellAlienwareArea-51M_1,DellAlienwareArea-51M_2,DellAlienwareArea-51M_3,DellAlienwareArea-51M_4,DellAlienwareArea-51M_5', NULL, 1)
INSERT [dbo].[tblThietBi] ([MaTB], [TenTB], [NhanHieu], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnhChung], [NgayUpLoad], [MaNhomTB]) VALUES (11, N'LG GRAM', N'LG', 1, 1, NULL, N'LGGRAM_1,LGGRAM_2,LGGRAM_3,LGGRAM_4,LGGRAM_5', NULL, 7)
INSERT [dbo].[tblThietBi] ([MaTB], [TenTB], [NhanHieu], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnhChung], [NgayUpLoad], [MaNhomTB]) VALUES (12, N'Razer Blade 13.3"', N'Razer', 1, 1, NULL, N'RazerBladeStealth13.3_1,RazerBladeStealth13.3_2,RazerBladeStealth13.3_3,RazerBladeStealth13.3_4,RazerBladeStealth13.3_5', NULL, 2)
INSERT [dbo].[tblThietBi] ([MaTB], [TenTB], [NhanHieu], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnhChung], [NgayUpLoad], [MaNhomTB]) VALUES (13, N'Lenovo Ideapad S540', N'Lenovo', 1, 1, NULL, N'LenovoIdeapadS540_1,LenovoIdeapadS540_2,LenovoIdeapadS540_3,LenovoIdeapadS540_4,LenovoIdeapadS540_5', NULL, 6)
INSERT [dbo].[tblThietBi] ([MaTB], [TenTB], [NhanHieu], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnhChung], [NgayUpLoad], [MaNhomTB]) VALUES (14, N'Asus ExpertBook P5440', N'Asus', 1, 1, NULL, N'AsusExpertBookP5440_1,AsusExpertBookP5440_2,AsusExpertBookP5440_3,AsusExpertBookP5440_4,AsusExpertBookP5440_5', NULL, 7)
INSERT [dbo].[tblThietBi] ([MaTB], [TenTB], [NhanHieu], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnhChung], [NgayUpLoad], [MaNhomTB]) VALUES (15, N'HP Envy 13', N'HP', 1, 1, NULL, N'HPEnvy13_1,HPEnvy13_2,HPEnvy13_3,HPEnvy13_4,HPEnvy13_5', NULL, 5)
INSERT [dbo].[tblThietBi] ([MaTB], [TenTB], [NhanHieu], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnhChung], [NgayUpLoad], [MaNhomTB]) VALUES (16, N'Chuột không dây Fuhlen A06G', N'Fuhlen', 2, 1, NULL, N'FuhlenA06G_1,FuhlenA06G_2,FuhlenA06G_3,FuhlenA06G_4,FuhlenA06G_5', NULL, 8)
INSERT [dbo].[tblThietBi] ([MaTB], [TenTB], [NhanHieu], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnhChung], [NgayUpLoad], [MaNhomTB]) VALUES (17, N'Anker Premium 7-in-1 USB-C Hub Adapter', N'Anker', 2, 1, NULL, N'HubAdapter_1,HubAdapter_2,HubAdapter_3,HubAdapter_4,HubAdapter_5', NULL, 8)
INSERT [dbo].[tblThietBi] ([MaTB], [TenTB], [NhanHieu], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnhChung], [NgayUpLoad], [MaNhomTB]) VALUES (18, N'Chuột Apple Magic Mouse 2', N'Apple', 2, 1, NULL, N'AppleMagicMouse2_1,AppleMagicMouse2_2,AppleMagicMouse2_3,AppleMagicMouse2_4,AppleMagicMouse2_5', NULL, 8)
INSERT [dbo].[tblThietBi] ([MaTB], [TenTB], [NhanHieu], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnhChung], [NgayUpLoad], [MaNhomTB]) VALUES (20, N'Bàn phím Apple Magic Keyboard 2', N'Apple', 2, 1, NULL, N'AppleMagicKeyboard2_1,AppleMagicKeyboard2_2,AppleMagicKeyboard2_3,AppleMagicKeyboard2_4,AppleMagicKeyboard2_5', NULL, 8)
SET IDENTITY_INSERT [dbo].[tblThietBi] OFF
ALTER TABLE [dbo].[tblChiTietHD] ADD  CONSTRAINT [DF_tblChiTietHD_SoLuong]  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[tblChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietHD_tblChiTietThietBi] FOREIGN KEY([MaTB], [MaCauHinh])
REFERENCES [dbo].[tblChiTietThietBi] ([MaTB], [MaCauHinh])
GO
ALTER TABLE [dbo].[tblChiTietHD] CHECK CONSTRAINT [FK_tblChiTietHD_tblChiTietThietBi]
GO
ALTER TABLE [dbo].[tblChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietHD_tblHoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[tblHoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[tblChiTietHD] CHECK CONSTRAINT [FK_tblChiTietHD_tblHoaDon]
GO
ALTER TABLE [dbo].[tblChiTietThietBi]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietThietBi_tblThietBi] FOREIGN KEY([MaTB])
REFERENCES [dbo].[tblThietBi] ([MaTB])
GO
ALTER TABLE [dbo].[tblChiTietThietBi] CHECK CONSTRAINT [FK_tblChiTietThietBi_tblThietBi]
GO
ALTER TABLE [dbo].[tblGiaoHang]  WITH CHECK ADD  CONSTRAINT [FK_tblGiaoHang_tblHoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[tblHoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[tblGiaoHang] CHECK CONSTRAINT [FK_tblGiaoHang_tblHoaDon]
GO
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tblHoaDon_tblNhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tblHoaDon] CHECK CONSTRAINT [FK_tblHoaDon_tblNhanVien]
GO
ALTER TABLE [dbo].[tblKhachHang]  WITH CHECK ADD  CONSTRAINT [FK_tblKhachHang_tblTaiKhoan] FOREIGN KEY([TaiKhoan])
REFERENCES [dbo].[tblTaiKhoan] ([TaiKhoan])
GO
ALTER TABLE [dbo].[tblKhachHang] CHECK CONSTRAINT [FK_tblKhachHang_tblTaiKhoan]
GO
ALTER TABLE [dbo].[tblNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_tblNhanVien_tblLoaiNhanVien] FOREIGN KEY([MaLoaiNV])
REFERENCES [dbo].[tblLoaiNhanVien] ([MaLoaiNV])
GO
ALTER TABLE [dbo].[tblNhanVien] CHECK CONSTRAINT [FK_tblNhanVien_tblLoaiNhanVien]
GO
ALTER TABLE [dbo].[tblPhieuNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuNhapHang_tblNhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[tblNhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[tblPhieuNhapHang] CHECK CONSTRAINT [FK_tblPhieuNhapHang_tblNhaCungCap]
GO
ALTER TABLE [dbo].[tblPhieuNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuNhapHang_tblNhanVien] FOREIGN KEY([MaNVNhanHang])
REFERENCES [dbo].[tblNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tblPhieuNhapHang] CHECK CONSTRAINT [FK_tblPhieuNhapHang_tblNhanVien]
GO
ALTER TABLE [dbo].[tblPhieuNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuNhapHang_tblThietBi] FOREIGN KEY([MaTB])
REFERENCES [dbo].[tblThietBi] ([MaTB])
GO
ALTER TABLE [dbo].[tblPhieuNhapHang] CHECK CONSTRAINT [FK_tblPhieuNhapHang_tblThietBi]
GO
ALTER TABLE [dbo].[tblPhieuXuatHang]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuXuatHang_tblNhanVien_XuatHang] FOREIGN KEY([MaNVXuatHang])
REFERENCES [dbo].[tblNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tblPhieuXuatHang] CHECK CONSTRAINT [FK_tblPhieuXuatHang_tblNhanVien_XuatHang]
GO
ALTER TABLE [dbo].[tblPhieuXuatHang]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuXuatHang_tblThietBi] FOREIGN KEY([MaTB])
REFERENCES [dbo].[tblThietBi] ([MaTB])
GO
ALTER TABLE [dbo].[tblPhieuXuatHang] CHECK CONSTRAINT [FK_tblPhieuXuatHang_tblThietBi]
GO
ALTER TABLE [dbo].[tblThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_tblThanhToan_tblHoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[tblHoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[tblThanhToan] CHECK CONSTRAINT [FK_tblThanhToan_tblHoaDon]
GO
ALTER TABLE [dbo].[tblThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_tblThanhToan_tblKhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[tblKhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[tblThanhToan] CHECK CONSTRAINT [FK_tblThanhToan_tblKhachHang]
GO
ALTER TABLE [dbo].[tblThietBi]  WITH CHECK ADD  CONSTRAINT [FK_tblThietBi_tblLoaiThietBi] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[tblLoaiThietBi] ([MaLoai])
GO
ALTER TABLE [dbo].[tblThietBi] CHECK CONSTRAINT [FK_tblThietBi_tblLoaiThietBi]
GO
ALTER TABLE [dbo].[tblThietBi]  WITH CHECK ADD  CONSTRAINT [FK_tblThietBi_tblNhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[tblNhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[tblThietBi] CHECK CONSTRAINT [FK_tblThietBi_tblNhaCungCap]
GO
ALTER TABLE [dbo].[tblThietBi]  WITH CHECK ADD  CONSTRAINT [FK_tblThietBi_tblNhomTB] FOREIGN KEY([MaNhomTB])
REFERENCES [dbo].[tblNhomTB] ([MaNhomTB])
GO
ALTER TABLE [dbo].[tblThietBi] CHECK CONSTRAINT [FK_tblThietBi_tblNhomTB]
GO
/****** Object:  Trigger [dbo].[CapNhatSoLuongTB]    Script Date: 12/07/2020 1:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[CapNhatSoLuongTB] 
   ON  [dbo].[tblChiTietHD] 
   AFTER INSERT,UPDATE
AS 
BEGIN
	DECLARE @MaHD INT, @MaTB INT, @MaCauHinh INT, @SoLuongMua INT, @SoLuongTon INT
	SELECT @MaHD =Inserted.MaHD, @MaTB=Inserted.MaTB, @MaCauHinh = Inserted.MaCauHinh ,@SoLuongMua = Inserted.SoLuong  FROM Inserted
	SELECT @SoLuongTon = SoLuong FROM dbo.tblChiTietThietBi WHERE MaCauHinh = @MaCauHinh AND MaTB = @MaTB

	IF(@SoLuongMua > @SoLuongTon)
	BEGIN
			PRINT(N'Không đủ sản phẩm để bán')
			ROLLBACK
		END
	ELSE
		BEGIN
			UPDATE dbo.tblChiTietThietBi
			SET SoLuong = SoLuong - @SoLuongMua
			WHERE MaTB = @MaTB AND MaCauHinh = @MaCauHinh
		END
END

GO
/****** Object:  Trigger [dbo].[insertNgayHD]    Script Date: 12/07/2020 1:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[insertNgayHD]
   ON  [dbo].[tblHoaDon]
   AFTER INSERT
AS 
BEGIN
	DECLARE @MAHD INT, @DATENOW DATETime = GETDATE()
	SELECT @MaHD = MAHD FROM inserted
	UPDATE tblHoaDon
	SET NgayHD = GETDATE()
	WHERE MaHD = @MAHD
END

GO
