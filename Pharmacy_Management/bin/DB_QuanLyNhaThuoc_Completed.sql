-- ===================== TẠO DATABASE =====================
CREATE DATABASE DB_QuanLyNhaThuoc;
GO
USE DB_QuanLyNhaThuoc;
GO

-- ===================== BẢNG NHÂN VIÊN =====================
CREATE TABLE dbo.NhanVien (
    maNV VARCHAR(10) PRIMARY KEY,
    hoTen NVARCHAR(100),
    ngaySinh DATE,
    gioiTinh NVARCHAR(10),         
    CCCD CHAR(12),                 
    soDienThoai VARCHAR(15),
    email VARCHAR(100),
    diaChi NVARCHAR(200),
    chucVu NVARCHAR(50),
    trinhDo NVARCHAR(100),
    luong MONEY
);

-- ===================== BẢNG TÀI KHOẢN =====================
CREATE TABLE dbo.TaiKhoan (
    maNV VARCHAR(10) PRIMARY KEY,
    matKhau VARCHAR(100),
    FOREIGN KEY (maNV) REFERENCES dbo.NhanVien(maNV)
);

-- ===================== BẢNG KHÁCH HÀNG =====================
CREATE TABLE dbo.KhachHang (
    maKH VARCHAR(10) PRIMARY KEY,
    hoTen NVARCHAR(100),
    ngaySinh DATE,
    diaChi NVARCHAR(200),
    soDienThoai VARCHAR(15),
    email VARCHAR(100)
);

-- ===================== BẢNG NHÀ CUNG CẤP =====================
CREATE TABLE dbo.NhaCungCap (
    maNCC VARCHAR(10) PRIMARY KEY,
    tenNCC NVARCHAR(100),
    diaChi NVARCHAR(200),
    soDienThoai VARCHAR(15),
    email VARCHAR(100)
);

-- ===================== BẢNG THUỐC =====================
CREATE TABLE dbo.Thuoc (
    maThuoc VARCHAR(10) PRIMARY KEY,
    tenThuoc NVARCHAR(100),
    donViTinh NVARCHAR(50),
    donGia MONEY,
	hanSuDung DATE,
    hamLuong NVARCHAR(100),
    soLuongTon INT
);

-- ===================== HÓA ĐƠN =====================
CREATE TABLE dbo.HoaDon (
    maHD VARCHAR(10) PRIMARY KEY,
    ngayLap DATETIME,
    tongTien MONEY,
    maNV VARCHAR(10),
    maKH VARCHAR(10),
    loaiGiaoDich NVARCHAR(50),
    trangThai NVARCHAR(50),
    phuongThucThanhToan NVARCHAR(50),
    FOREIGN KEY (maNV) REFERENCES dbo.NhanVien(maNV),
    FOREIGN KEY (maKH) REFERENCES dbo.KhachHang(maKH)
);

CREATE TABLE dbo.ChiTietHoaDon (
    maHD VARCHAR(10),
    maThuoc VARCHAR(10),
    soLuong INT,
    donGia MONEY,
    lieuLuong NVARCHAR(100),
    thanhTien AS (soLuong * donGia) PERSISTED,
    PRIMARY KEY (maHD, maThuoc),
    FOREIGN KEY (maHD) REFERENCES dbo.HoaDon(maHD),
    FOREIGN KEY (maThuoc) REFERENCES dbo.Thuoc(maThuoc)
);

-- ===================== NHẬP HÀNG =====================
CREATE TABLE dbo.PhieuNhap (
    maPN VARCHAR(10) PRIMARY KEY,
    ngayNhap DATETIME,
    maNV VARCHAR(10),
    maNCC VARCHAR(10),
    ghiChu NVARCHAR(200),
    FOREIGN KEY (maNV) REFERENCES dbo.NhanVien(maNV),
    FOREIGN KEY (maNCC) REFERENCES dbo.NhaCungCap(maNCC)
);

CREATE TABLE dbo.ChiTietPhieuNhap (
    maPN VARCHAR(10),
    maThuoc VARCHAR(10),
    soLuong INT,
    donGia MONEY,
    PRIMARY KEY (maPN, maThuoc),
    FOREIGN KEY (maPN) REFERENCES dbo.PhieuNhap(maPN),
    FOREIGN KEY (maThuoc) REFERENCES dbo.Thuoc(maThuoc)
);

-- ===================== ĐẶT HÀNG =====================
CREATE TABLE dbo.PhieuDatHang (
    maPDH VARCHAR(10) PRIMARY KEY,
    ngayDat DATETIME,
    maNV VARCHAR(10),
    maKH VARCHAR(10) NULL,
    maNCC VARCHAR(10) NULL,
    trangThai NVARCHAR(50),
    FOREIGN KEY (maNV) REFERENCES dbo.NhanVien(maNV),
    FOREIGN KEY (maKH) REFERENCES dbo.KhachHang(maKH),
    FOREIGN KEY (maNCC) REFERENCES dbo.NhaCungCap(maNCC)
);

CREATE TABLE dbo.ChiTietPhieuDatHang (
    maPDH VARCHAR(10),
    maThuoc VARCHAR(10),
    soLuong INT,
    ghiChu NVARCHAR(200),
    PRIMARY KEY (maPDH, maThuoc),
    FOREIGN KEY (maPDH) REFERENCES dbo.PhieuDatHang(maPDH),
    FOREIGN KEY (maThuoc) REFERENCES dbo.Thuoc(maThuoc)
);

-- ===================== LOẠI THU/CHI =====================
CREATE TABLE dbo.LoaiThuChi (
    maLoai INT PRIMARY KEY IDENTITY,
    tenLoai NVARCHAR(100),
    loaiPhieu NVARCHAR(10)
);

-- ===================== SỔ QUỸ THU CHI =====================
CREATE TABLE dbo.PhieuThuChi (
    maPhieu VARCHAR(20) PRIMARY KEY,
    ngayGiaoDich DATETIME,
    loaiPhieu NVARCHAR(20),
    maLoai INT,
    hinhThuc NVARCHAR(50),
    soTien MONEY,
    nguoiNopNhan NVARCHAR(100),
    ghiChu NVARCHAR(200),
    maNV VARCHAR(10),
    FOREIGN KEY (maNV) REFERENCES dbo.NhanVien(maNV),
    FOREIGN KEY (maLoai) REFERENCES dbo.LoaiThuChi(maLoai)
);

-- ===================== QUẢN LÝ LỊCH VÀ CHẤM CÔNG =====================
CREATE TABLE dbo.CaLamViec (
    maCa VARCHAR(10) PRIMARY KEY,
    tenCa NVARCHAR(50),
    gioBatDau TIME,
    gioKetThuc TIME
);

CREATE TABLE dbo.LichLamViec (
    maLLV VARCHAR(10) PRIMARY KEY,
    maNV VARCHAR(10),
    ngay DATE,
    maCa VARCHAR(10),
    ghiChu NVARCHAR(200),
    FOREIGN KEY (maNV) REFERENCES dbo.NhanVien(maNV),
    FOREIGN KEY (maCa) REFERENCES dbo.CaLamViec(maCa)
);

CREATE TABLE dbo.ChamCong (
    maCC VARCHAR(10) PRIMARY KEY,
    maNV VARCHAR(10),
    ngay DATE,
    maCa VARCHAR(10),
    gioVao TIME,
    gioRa TIME,
    trangThai NVARCHAR(50),
    loaiNghi NVARCHAR(50),
    daDuyet BIT DEFAULT 0,
    ghiChu NVARCHAR(200),
    FOREIGN KEY (maNV) REFERENCES dbo.NhanVien(maNV),
    FOREIGN KEY (maCa) REFERENCES dbo.CaLamViec(maCa)
);
