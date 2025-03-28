USE [master]
GO
/****** Object:  Database [DB_QLBH]    Script Date: 11/11/2024 11:24:07 CH ******/
CREATE DATABASE [DB_QLBH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_QLBH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DB_QLBH.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_QLBH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DB_QLBH_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_QLBH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_QLBH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_QLBH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_QLBH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_QLBH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_QLBH] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_QLBH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_QLBH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_QLBH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_QLBH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_QLBH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_QLBH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_QLBH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_QLBH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_QLBH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_QLBH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB_QLBH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_QLBH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_QLBH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_QLBH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_QLBH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_QLBH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_QLBH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_QLBH] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_QLBH] SET  MULTI_USER 
GO
ALTER DATABASE [DB_QLBH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_QLBH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_QLBH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_QLBH] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [DB_QLBH]
GO
/****** Object:  Table [dbo].[ChiTietHD]    Script Date: 11/11/2024 11:24:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TABLE [dbo].[ChiTietHD](
	[MaHD] [nvarchar](50) NOT NULL,
	[MaHang] [nvarchar](50) NOT NULL,
	[SoLuongSanPham] [int] NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_ChiTietHD] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhSachSanPham]    Script Date: 11/11/2024 11:24:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhSachSanPham](
	[MaHang] [nvarchar](50) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[MoTa] [nvarchar](50) NULL,
	[DonGia] [int] NULL,
	[SoLuong] [int] NULL,
	[NgaySanXuat] [date] NULL,
 CONSTRAINT [PK_DanhSachSanPham] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 11/11/2024 11:24:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nvarchar](50) NOT NULL,
	[MANV] [nvarchar](50) NOT NULL,
	[maKhachHang] [nvarchar](50) NULL,
	[NgayLap] [nvarchar](50) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/11/2024 11:24:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKhachHang] [nvarchar](50) NOT NULL,
	[tenKhachHang] [nvarchar](50) NULL,
	[diaChi] [nvarchar](50) NULL,
	[dienThoai] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[ngaySinh] [date] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[maKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoanNV]    Script Date: 11/11/2024 11:24:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanNV](
	[MANV] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](255) NULL,
	[NgaySinh] [date] NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[GioiTinh] [nvarchar](10) NOT NULL,
	[CCCD] [nvarchar](200) NOT NULL,
	[MatKhau] [varchar](100) NOT NULL,
	[ChucVu] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD001', N'MH001', 10)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD001', N'MH002', 1)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD001', N'MH003', 7)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD002', N'MH001', 10)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD002', N'MH002', 5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD003', N'MH001', 1)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD003', N'MH002', 8)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD003', N'MH003', 1)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD004', N'MH001', 6)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD005', N'MH001', 4)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD005', N'MH002', 2)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD005', N'MH003', 4)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD006', N'MH001', 6)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD007', N'MH001', 7)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD007', N'MH002', 9)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD007', N'MH003', 8)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD007', N'MH004', 1)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD008', N'MH001', 7)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD008', N'MH002', 10)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD008', N'MH003', 8)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD008', N'MH004', 7)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD008', N'MH005', 2)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD009', N'MH001', 2)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD009', N'MH002', 1)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD009', N'MH003', 6)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD010', N'MH001', 10)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD011', N'MH001', 5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD011', N'MH002', 6)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD012', N'MH001', 1)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD013', N'MH001', 8)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD013', N'MH002', 3)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD014', N'MH001', 5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD014', N'MH002', 6)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD015', N'MH001', 3)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD016', N'MH001', 7)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD016', N'MH002', 3)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD016', N'MH003', 7)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD016', N'MH004', 1)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD017', N'MH001', 2)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD017', N'MH002', 3)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD017', N'MH003', 10)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD017', N'MH004', 5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD018', N'MH001', 1)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD018', N'MH002', 7)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD018', N'MH003', 7)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD019', N'MH001', 5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD019', N'MH002', 8)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD019', N'MH003', 2)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD019', N'MH004', 10)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD020', N'MH001', 4)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD020', N'MH002', 1)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD021', N'MH001', 6)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD021', N'MH002', 8)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD022', N'MH001', 9)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD022', N'MH002', 4)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD022', N'MH003', 1)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD022', N'MH004', 6)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD022', N'MH005', 7)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD023', N'MH001', 8)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD023', N'MH002', 3)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD024', N'MH001', 4)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD025', N'MH001', 2)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD026', N'MH001', 10)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD026', N'MH002', 9)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD027', N'MH001', 1)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD028', N'MH001', 5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD028', N'MH002', 6)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD028', N'MH003', 3)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD029', N'MH001', 9)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD029', N'MH002', 9)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD029', N'MH003', 10)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD029', N'MH004', 3)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD030', N'MH001', 9)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD030', N'MH002', 4)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD030', N'MH003', 1)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD030', N'MH004', 7)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD030', N'MH005', 10)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD031', N'MH001', 5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD032', N'MH001', 1)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD032', N'MH002', 10)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD032', N'MH003', 7)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD032', N'MH004', 9)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD033', N'MH001', 3)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD033', N'MH002', 8)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD033', N'MH003', 9)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD033', N'MH004', 4)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD034', N'MH001', 2)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD034', N'MH002', 8)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD035', N'MH001', 3)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD035', N'MH002', 8)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD035', N'MH003', 1)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD035', N'MH004', 3)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD035', N'MH005', 5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD036', N'MH001', 6)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD036', N'MH002', 10)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD037', N'MH001', 8)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD037', N'MH002', 10)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD037', N'MH003', 10)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD037', N'MH004', 1)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD037', N'MH005', 3)
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD038', N'MH001', 8)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD039', N'MH001', 3)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD039', N'MH002', 9)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD039', N'MH003', 6)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD039', N'MH004', 3)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD039', N'MH005', 3)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD040', N'MH001', 2)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD040', N'MH002', 4)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD040', N'MH003', 1)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD040', N'MH004', 10)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD041', N'MH001', 5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD042', N'MH001', 9)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD042', N'MH002', 3)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD042', N'MH003', 2)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD043', N'MH001', 5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD043', N'MH002', 10)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD044', N'MH001', 2)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD045', N'MH001', 2)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD045', N'MH002', 8)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD045', N'MH003', 6)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD045', N'MH004', 5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD046', N'MH001', 7)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD046', N'MH002', 9)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD047', N'MH001', 5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD047', N'MH002', 7)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD047', N'MH003', 7)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD047', N'MH004', 5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD047', N'MH005', 5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD048', N'MH001', 3)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD049', N'MH001', 8)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD049', N'MH002', 4)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD050', N'MH001', 3)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD050', N'MH002', 3)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD050', N'MH003', 3)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD051', N'MH001', 3)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD051', N'MH002', 8)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD052', N'MH001', 2)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD052', N'MH002', 1)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD052', N'MH003', 3)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD053', N'MH001', 3)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD053', N'MH002', 7)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD053', N'MH003', 8)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD054', N'MH001', 6)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD054', N'MH002', 6)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD054', N'MH003', 2)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD054', N'MH004', 9)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD054', N'MH005', 3)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD055', N'MH001', 4)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD056', N'MH001', 3)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD056', N'MH002', 10)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD057', N'MH001', 2)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD057', N'MH002', 9)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD057', N'MH003', 4)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD058', N'MH001', 7)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD058', N'MH002', 7)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD058', N'MH003', 1)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD058', N'MH004', 10)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD059', N'MH001', 3)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD059', N'MH002', 2)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD059', N'MH003', 7)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD059', N'MH004', 9)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD060', N'MH001', 6)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD060', N'MH002', 1)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHang], [SoLuongSanPham]) VALUES (N'HD060', N'MH003', 3)
GO

CREATE TRIGGER trg_InsertDonGia
ON [dbo].[ChiTietHD]
AFTER INSERT
AS
BEGIN
    -- Cập nhật cột DonGia trong bảng ChiTietHD với giá trị từ bảng DanhSachSanPham
    UPDATE cthd
    SET cthd.DonGia = dsp.DonGia
    FROM [dbo].[ChiTietHD] cthd
    JOIN [dbo].[DanhSachSanPham] dsp ON cthd.MaHang = dsp.MaHang
    WHERE cthd.MaHD IN (SELECT MaHD FROM inserted)
      AND cthd.MaHang IN (SELECT MaHang FROM inserted);
END;
GO

INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH001', N'Mì tôm', N'Mì tôm ăn liền', 3000, 100, CAST(N'2023-01-01' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH002', N'Bánh mì', N'Bánh mì tươi', 5000, 50, CAST(N'2023-01-02' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH003', N'Nước ngọt', N'Nước ngọt có ga', 10000, 200, CAST(N'2023-01-03' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH004', N'Sữa tươi', N'Sữa tươi tiệt trùng', 15000, 100, CAST(N'2023-01-04' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH005', N'Bánh quy', N'Bánh quy giòn', 20000, 150, CAST(N'2023-01-05' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH006', N'Kẹo', N'Kẹo ngọt', 5000, 300, CAST(N'2023-01-06' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH007', N'Bia', N'Bia lon', 20000, 100, CAST(N'2023-01-07' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH008', N'Rượu', N'Rượu vang', 50000, 50, CAST(N'2023-01-08' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH009', N'Gạo', N'Gạo trắng', 20000, 500, CAST(N'2023-01-09' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH010', N'Dầu ăn', N'Dầu ăn thực vật', 30000, 100, CAST(N'2023-01-10' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH011', N'Muối', N'Muối tinh', 5000, 200, CAST(N'2023-01-11' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH012', N'Đường', N'Đường trắng', 10000, 150, CAST(N'2023-01-12' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH013', N'Trứng gà', N'Trứng gà tươi', 3000, 200, CAST(N'2023-01-13' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH014', N'Thịt heo', N'Thịt heo tươi', 100000, 50, CAST(N'2023-01-14' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH015', N'Thịt bò', N'Thịt bò tươi', 200000, 30, CAST(N'2023-01-15' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH016', N'Cá', N'Cá tươi', 50000, 50, CAST(N'2023-01-16' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH017', N'Tôm', N'Tôm tươi', 150000, 40, CAST(N'2023-01-17' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH018', N'Rau', N'Rau xanh', 10000, 100, CAST(N'2023-01-18' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH019', N'Táo', N'Táo đỏ', 30000, 100, CAST(N'2023-01-19' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH020', N'Cam', N'Cam tươi', 20000, 100, CAST(N'2023-01-20' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH021', N'Chuối', N'Chuối tươi', 15000, 100, CAST(N'2023-01-21' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH022', N'Xoài', N'Xoài tươi', 25000, 100, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH023', N'Bưởi', N'Bưởi tươi', 30000, 50, CAST(N'2023-01-23' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH024', N'Ổi', N'Ổi tươi', 20000, 100, CAST(N'2023-01-24' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH025', N'Bánh tráng', N'Bánh tráng cuốn', 10000, 200, CAST(N'2023-01-25' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH026', N'Bánh phồng tôm', N'Bánh phồng tôm chiên', 15000, 150, CAST(N'2023-01-26' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH027', N'Bánh xèo', N'Bánh xèo miền Trung', 20000, 100, CAST(N'2023-01-27' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH028', N'Bánh chưng', N'Bánh chưng Tết', 50000, 50, CAST(N'2023-01-28' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH029', N'Bánh tét', N'Bánh tét miền Nam', 50000, 50, CAST(N'2023-01-29' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH030', N'Bánh bao', N'Bánh bao nhân thịt', 10000, 100, CAST(N'2023-01-30' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH031', N'Bánh bông lan', N'Bánh bông lan trứng muối', 20000, 100, CAST(N'2023-01-31' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH032', N'Bánh flan', N'Bánh flan caramel', 15000, 100, CAST(N'2023-02-01' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH033', N'Bánh su kem', N'Bánh su kem nhân kem', 20000, 100, CAST(N'2023-02-02' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH034', N'Bánh trung thu', N'Bánh trung thu thập cẩm', 50000, 50, CAST(N'2023-02-03' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH035', N'Bánh pía', N'Bánh pía sầu riêng', 30000, 100, CAST(N'2023-02-04' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH036', N'Bánh ít', N'Bánh ít lá gai', 20000, 100, CAST(N'2023-02-05' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH037', N'Bánh bèo', N'Bánh bèo Huế', 10000, 100, CAST(N'2023-02-06' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH038', N'Bánh khọt', N'Bánh khọt Vũng Tàu', 15000, 100, CAST(N'2023-02-07' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH039', N'Bánh cuốn', N'Bánh cuốn Thanh Trì', 20000, 100, CAST(N'2023-02-08' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH040', N'Bánh canh', N'Bánh canh cua', 30000, 100, CAST(N'2023-02-09' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH041', N'Bánh hỏi', N'Bánh hỏi thịt nướng', 20000, 100, CAST(N'2023-02-10' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH042', N'Bánh đúc', N'Bánh đúc nóng', 10000, 100, CAST(N'2023-02-11' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH043', N'Bánh giò', N'Bánh giò Hà Nội', 15000, 100, CAST(N'2023-02-12' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH044', N'Bánh tôm', N'Bánh tôm Hồ Tây', 20000, 100, CAST(N'2023-02-13' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH045', N'Bánh khoai', N'Bánh khoai lang', 10000, 100, CAST(N'2023-02-14' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH046', N'Bánh chuối', N'Bánh chuối hấp', 15000, 100, CAST(N'2023-02-15' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH047', N'Bánh gối', N'Bánh gối nhân thịt', 20000, 100, CAST(N'2023-02-16' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH048', N'Bánh rán', N'Bánh rán mặn', 10000, 100, CAST(N'2023-02-17' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH049', N'Bánh trôi', N'Bánh trôi nước', 15000, 100, CAST(N'2023-02-18' AS Date))
INSERT [dbo].[DanhSachSanPham] ([MaHang], [TenHang], [MoTa], [DonGia], [SoLuong], [NgaySanXuat]) VALUES (N'MH050', N'Bánh chay', N'Bánh chay nhân đậu xanh', 20000, 100, CAST(N'2023-02-19' AS Date))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD001', N'NV001', N'KH001', N'2024-01-02')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD002', N'NV001', N'KH002', N'2024-01-03')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD003', N'NV001', N'KH003', N'2024-01-04')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD004', N'NV001', N'KH004', N'2024-01-05')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD005', N'NV001', N'KH005', N'2024-01-06')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD006', N'NV001', N'KH006', N'2024-01-07')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD007', N'NV001', N'KH007', N'2024-01-08')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD008', N'NV001', N'KH008', N'2024-01-09')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD009', N'NV001', N'KH009', N'2024-01-10')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD010', N'NV001', N'KH010', N'2024-01-11')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD011', N'NV001', N'KH011', N'2024-01-12')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD012', N'NV001', N'KH012', N'2024-01-13')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD013', N'NV001', N'KH013', N'2024-01-14')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD014', N'NV001', N'KH014', N'2024-01-15')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD015', N'NV001', N'KH015', N'2024-01-16')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD016', N'NV001', N'KH016', N'2024-01-17')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD017', N'NV001', N'KH017', N'2024-01-18')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD018', N'NV001', N'KH018', N'2024-01-19')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD019', N'NV001', N'KH019', N'2024-01-20')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD020', N'NV001', N'KH020', N'2024-01-21')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD021', N'NV001', N'KH021', N'2024-04-02')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD022', N'NV001', N'KH022', N'2024-04-03')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD023', N'NV001', N'KH023', N'2024-04-04')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD024', N'NV001', N'KH024', N'2024-04-05')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD025', N'NV001', N'KH025', N'2024-04-06')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD026', N'NV001', N'KH026', N'2024-04-07')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD027', N'NV001', N'KH027', N'2024-04-08')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD028', N'NV001', N'KH028', N'2024-04-09')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD029', N'NV001', N'KH029', N'2024-04-10')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD030', N'NV001', N'KH030', N'2024-04-11')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD031', N'NV001', N'KH001', N'2024-04-12')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD032', N'NV001', N'KH002', N'2024-04-13')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD033', N'NV001', N'KH003', N'2024-04-14')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD034', N'NV001', N'KH004', N'2024-04-15')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD035', N'NV001', N'KH005', N'2024-04-16')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD036', N'NV001', N'KH006', N'2024-04-17')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD037', N'NV001', N'KH007', N'2024-04-18')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD038', N'NV001', N'KH008', N'2024-04-19')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD039', N'NV001', N'KH009', N'2024-04-20')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD040', N'NV001', N'KH010', N'2024-04-21')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD041', N'NV001', N'KH011', N'2024-07-02')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD042', N'NV001', N'KH012', N'2024-07-03')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD043', N'NV001', N'KH013', N'2024-07-04')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD044', N'NV001', N'KH014', N'2024-07-05')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD045', N'NV001', N'KH015', N'2024-07-06')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD046', N'NV001', N'KH016', N'2024-07-07')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD047', N'NV001', N'KH017', N'2024-07-08')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD048', N'NV001', N'KH018', N'2024-07-09')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD049', N'NV001', N'KH019', N'2024-07-10')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD050', N'NV001', N'KH020', N'2024-07-11')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD051', N'NV001', N'KH021', N'2024-07-12')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD052', N'NV001', N'KH022', N'2024-07-13')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD053', N'NV001', N'KH023', N'2024-07-14')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD054', N'NV001', N'KH024', N'2024-07-15')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD055', N'NV001', N'KH025', N'2024-07-16')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD056', N'NV001', N'KH026', N'2024-07-17')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD057', N'NV001', N'KH027', N'2024-07-18')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD058', N'NV001', N'KH028', N'2024-07-19')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD059', N'NV001', N'KH029', N'2024-07-20')
INSERT [dbo].[HoaDon] ([MaHD], [MANV], [maKhachHang], [NgayLap]) VALUES (N'HD060', N'NV001', N'KH030', N'2024-07-21')
GO
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH001', N'Nguyen Van A', N'123 ABC Street', N'0123456789', N'nguyenvana@example.com', CAST(N'1990-01-01' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH002', N'Tran Thi B', N'456 DEF Street', N'0987654321', N'tranthib@example.com', CAST(N'1991-02-02' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH003', N'Le Van C', N'789 GHI Street', N'0123987654', N'levanc@example.com', CAST(N'1992-03-03' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH004', N'Pham Thi D', N'321 JKL Street', N'0987123456', N'phamthid@example.com', CAST(N'1993-04-04' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH005', N'Hoang Van E', N'654 MNO Street', N'0123456780', N'hoangvane@example.com', CAST(N'1994-05-05' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH006', N'Vu Thi F', N'987 PQR Street', N'0987654320', N'vuthif@example.com', CAST(N'1995-06-06' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH007', N'Nguyen Van G', N'123 STU Street', N'0123456781', N'nguyenvang@example.com', CAST(N'1996-07-07' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH008', N'Tran Thi H', N'456 VWX Street', N'0987654322', N'tranthih@example.com', CAST(N'1997-08-08' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH009', N'Le Van I', N'789 YZA Street', N'0123456782', N'levani@example.com', CAST(N'1998-09-09' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH010', N'Pham Thi J', N'321 BCD Street', N'0987654323', N'phamthij@example.com', CAST(N'1999-10-10' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH011', N'Hoang Van K', N'654 EFG Street', N'0123456783', N'hoangvank@example.com', CAST(N'2000-11-11' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH012', N'Vu Thi L', N'987 HIJ Street', N'0987654324', N'vuthil@example.com', CAST(N'2001-12-12' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH013', N'Nguyen Van M', N'123 KLM Street', N'0123456784', N'nguyenvanm@example.com', CAST(N'2002-01-13' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH014', N'Tran Thi N', N'456 NOP Street', N'0987654325', N'tranthin@example.com', CAST(N'2003-02-14' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH015', N'Le Van O', N'789 QRS Street', N'0123456785', N'levano@example.com', CAST(N'2004-03-15' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH016', N'Pham Thi P', N'321 TUV Street', N'0987654326', N'phamthip@example.com', CAST(N'2005-04-16' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH017', N'Hoang Van Q', N'654 WXY Street', N'0123456786', N'hoangvanq@example.com', CAST(N'2006-05-17' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH018', N'Vu Thi R', N'987 ZAB Street', N'0987654327', N'vuthir@example.com', CAST(N'2007-06-18' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH019', N'Nguyen Van S', N'123 CDE Street', N'0123456787', N'nguyenvans@example.com', CAST(N'2008-07-19' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH020', N'Tran Thi T', N'456 FGH Street', N'0987654328', N'tranthit@example.com', CAST(N'2009-08-20' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH021', N'Le Van U', N'789 IJK Street', N'0123456788', N'levanu@example.com', CAST(N'2010-09-21' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH022', N'Pham Thi V', N'321 LMN Street', N'0987654329', N'phamthiv@example.com', CAST(N'2011-10-22' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH023', N'Hoang Van W', N'654 OPQ Street', N'0123456789', N'hoangvanw@example.com', CAST(N'2012-11-23' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH024', N'Vu Thi X', N'987 RST Street', N'0987654330', N'vuthix@example.com', CAST(N'2013-12-24' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH025', N'Nguyen Van Y', N'123 UVW Street', N'0123456790', N'nguyenvany@example.com', CAST(N'2014-01-25' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH026', N'Tran Thi Z', N'456 XYZ Street', N'0987654331', N'tranthiz@example.com', CAST(N'2015-02-26' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH027', N'Le Van AA', N'789 ABC Street', N'0123456791', N'levanaa@example.com', CAST(N'2016-03-27' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH028', N'Pham Thi BB', N'321 DEF Street', N'0987654332', N'phamthibb@example.com', CAST(N'2017-04-28' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH029', N'Hoang Van CC', N'654 GHI Street', N'0123456792', N'hoangvancc@example.com', CAST(N'2018-05-29' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [dienThoai], [email], [ngaySinh]) VALUES (N'KH030', N'Vu Thi DD', N'987 JKL Street', N'0987654333', N'vuthidd@example.com', CAST(N'2019-06-30' AS Date))
GO
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV001', N'Nguyen Van A', CAST(N'1980-01-01' AS Date), N'nguyenvana@example.com', N'Nam', N'123456789', N'1', N'Quản lý')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV002', N'Tran Thi B', CAST(N'1981-02-02' AS Date), N'tranthib@example.com', N'Nữ', N'234567890', N'password2', N'Quản lý')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV003', N'Le Van C', CAST(N'1982-03-03' AS Date), N'levanc@example.com', N'Nam', N'345678901', N'password3', N'Quản lý')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV004', N'Pham Thi D', CAST(N'1983-04-04' AS Date), N'phamthid@example.com', N'Nữ', N'456789012', N'password4', N'Quản lý')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV005', N'Hoang Van E', CAST(N'1984-05-05' AS Date), N'hoangvane@example.com', N'Nam', N'567890123', N'password5', N'Quản lý')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV006', N'Vu Thi F', CAST(N'1985-06-06' AS Date), N'vuthif@example.com', N'Nữ', N'678901234', N'password6', N'Nhân viên')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV007', N'Nguyen Van G', CAST(N'1986-07-07' AS Date), N'nguyenvang@example.com', N'Nam', N'789012345', N'password7', N'Nhân viên')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV008', N'Tran Thi H', CAST(N'1987-08-08' AS Date), N'tranthih@example.com', N'Nữ', N'890123456', N'password8', N'Nhân viên')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV009', N'Le Van I', CAST(N'1988-09-09' AS Date), N'levani@example.com', N'Nam', N'901234567', N'password9', N'Nhân viên')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV010', N'Pham Thi J', CAST(N'1989-10-10' AS Date), N'phamthij@example.com', N'Nữ', N'012345678', N'password10', N'Nhân viên')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV011', N'Hoang Van K', CAST(N'1990-11-11' AS Date), N'hoangvank@example.com', N'Nam', N'123456789', N'password11', N'Nhân viên')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV012', N'Vu Thi L', CAST(N'1991-12-12' AS Date), N'vuthil@example.com', N'Nữ', N'234567890', N'password12', N'Nhân viên')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV013', N'Nguyen Van M', CAST(N'1992-01-13' AS Date), N'nguyenvanm@example.com', N'Nam', N'345678901', N'password13', N'Nhân viên')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV014', N'Tran Thi N', CAST(N'1993-02-14' AS Date), N'tranthin@example.com', N'Nữ', N'456789012', N'password14', N'Nhân viên')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV015', N'Le Van O', CAST(N'1994-03-15' AS Date), N'levano@example.com', N'Nam', N'567890123', N'password15', N'Nhân viên')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV016', N'Pham Thi P', CAST(N'1995-04-16' AS Date), N'phamthip@example.com', N'Nữ', N'678901234', N'password16', N'Nhân viên')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV017', N'Hoang Van Q', CAST(N'1996-05-17' AS Date), N'hoangvanq@example.com', N'Nam', N'789012345', N'password17', N'Nhân viên')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV018', N'Vu Thi R', CAST(N'1997-06-18' AS Date), N'vuthir@example.com', N'Nữ', N'890123456', N'password18', N'Nhân viên')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV019', N'Nguyen Van S', CAST(N'1998-07-19' AS Date), N'nguyenvans@example.com', N'Nam', N'901234567', N'password19', N'Nhân viên')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV020', N'Tran Thi T', CAST(N'1999-08-20' AS Date), N'tranthit@example.com', N'Nữ', N'012345678', N'password20', N'Nhân viên')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV021', N'Le Van U', CAST(N'2000-09-21' AS Date), N'levanu@example.com', N'Nam', N'123456789', N'password21', N'Nhân viên')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV022', N'Pham Thi V', CAST(N'2001-10-22' AS Date), N'phamthiv@example.com', N'Nữ', N'234567890', N'password22', N'Nhân viên')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV023', N'Hoang Van W', CAST(N'2002-11-23' AS Date), N'hoangvanw@example.com', N'Nam', N'345678901', N'password23', N'Nhân viên')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV024', N'Vu Thi X', CAST(N'2003-12-24' AS Date), N'vuthix@example.com', N'Nữ', N'456789012', N'password24', N'Nhân viên')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV025', N'Nguyen Van Y', CAST(N'2004-01-25' AS Date), N'nguyenvany@example.com', N'Nam', N'567890123', N'password25', N'Nhân viên')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV026', N'Tran Thi Z', CAST(N'2005-02-26' AS Date), N'tranthiz@example.com', N'Nữ', N'678901234', N'password26', N'Nhân viên')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV027', N'Le Van AA', CAST(N'2006-03-27' AS Date), N'levanaa@example.com', N'Nam', N'789012345', N'password27', N'Nhân viên')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV028', N'Pham Thi BB', CAST(N'2007-04-28' AS Date), N'phamthibb@example.com', N'Nữ', N'890123456', N'password28', N'Nhân viên')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV029', N'Hoang Van CC', CAST(N'2008-05-29' AS Date), N'hoangvancc@example.com', N'Nam', N'901234567', N'password29', N'Nhân viên')
INSERT [dbo].[TaiKhoanNV] ([MANV], [HoTen], [NgaySinh], [Email], [GioiTinh], [CCCD], [MatKhau], [ChucVu]) VALUES (N'NV030', N'Vu Thi DD', CAST(N'2009-06-30' AS Date), N'vuthidd@example.com', N'Nữ', N'012345678', N'password30', N'Nhân viên')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TaiKhoan__A9D1053452B02F96]    Script Date: 11/11/2024 11:24:07 CH ******/
ALTER TABLE [dbo].[TaiKhoanNV] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_DanhSachSanPham] FOREIGN KEY([MaHang])
REFERENCES [dbo].[DanhSachSanPham] ([MaHang])
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_ChiTietHD_DanhSachSanPham]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_ChiTietHD_HoaDon]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([maKhachHang])
REFERENCES [dbo].[KhachHang] ([maKhachHang])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_TaiKhoanNV] FOREIGN KEY([MANV])
REFERENCES [dbo].[TaiKhoanNV] ([MANV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_TaiKhoanNV]
GO
USE [master]
GO
ALTER DATABASE [DB_QLBH] SET  READ_WRITE 
GO
