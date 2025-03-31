-- ======================= Nhân viên======================
INSERT INTO dbo.NhanVien (maNV, hoTen, ngaySinh, gioiTinh, CCCD, soDienThoai, email, diaChi, chucVu, trinhDo, luong)
VALUES
('NV001', N'Nguyễn Văn A', '1990-01-15', N'Nam', '012345678901', '0909123456', 'a.nguyen@example.com', N'1 Lê Lợi, Q1, TP.HCM', N'Quản lý', N'Dược sĩ đại học', 15000000),
('NV002', N'Trần Thị B', '1992-05-20', N'Nữ', '098765432109', '0912345678', 'b.tran@example.com', N'15 Nguyễn Trãi, Q5, TP.HCM', N'Nhân viên bán thuốc', N'Dược sĩ trung cấp', 9000000);

-- ======================= TaiKhoan======================
INSERT INTO dbo.TaiKhoan (maNV, matKhau)
VALUES
('NV001', 'admin123'),
('NV002', 'password');

-- ======================= KhachHang======================
INSERT INTO dbo.KhachHang (maKH, hoTen, ngaySinh, diaChi, soDienThoai, email)
VALUES
('KH001', N'Lê Văn C', '1985-03-12', N'120 Trường Chinh, Q12, TP.HCM', '0987654321', 'c.le@example.com'),
('KH002', N'Phạm Thị D', '1995-11-25', N'60 Tô Hiến Thành, Q10, TP.HCM', '0978989898', 'd.pham@example.com');

-- ======================= NhaCungCap======================
INSERT INTO dbo.NhaCungCap (maNCC, tenNCC, diaChi, soDienThoai, email)
VALUES
('NCC001', N'Công ty Dược ABC', N'456 Lý Thường Kiệt, Q10, TP.HCM', '0281234567', 'contact@duocabc.com'),
('NCC002', N'Công ty Dược XYZ', N'789 Phan Đăng Lưu, Q.Bình Thạnh, TP.HCM', '0287654321', 'info@duocxyz.vn');

-- ======================= Thuoc======================
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGia, hanSuDung, hamLuong, soLuongTon)
VALUES
('T001', N'Paracetamol 500mg', N'Viên', 2000, '2026-12-31', N'500mg', 1000),
('T002', N'Amoxicillin 500mg', N'Viên', 3000, '2025-10-15', N'500mg', 500);


-- ======================= HoaDon======================
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES
('HD001', GETDATE(), 10000, 'NV002', 'KH001', N'Bán lẻ', N'Hoàn tất', N'Tiền mặt');

-- ======================= ChiTietHoaDon======================
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGia, lieuLuong)
VALUES
('HD001', 'T001', 5, 2000, N'2 viên/ngày');






-- ======================= PhieuNhap ======================
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES
('PN001', GETDATE(), 'NV001', 'NCC001', N'Nhập lô hàng mới');

-- ======================= ChiTietPhieuNhap======================
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGia)
VALUES
('PN001', 'T002', 300, 2500);
-- ======================= PhieuDatHang======================
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES
('PDH001', GETDATE(), 'NV002', 'KH002', NULL, N'Đã xác nhận');

-- ======================= ChiTietPhieuDatHang======================

INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES
('PDH001', 'T001', 10, N'Khách đặt mua trước');
-- ======================= LoaiThuChi ======================
INSERT INTO dbo.LoaiThuChi (tenLoai, loaiPhieu)
VALUES
(N'Thu tiền bán thuốc', N'Thu'),
(N'Chi mua hàng', N'Chi');
-- ======================= SoQuy======================
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, ghiChu, maNV)
VALUES
('PTC001', GETDATE(), N'Thu', 1, N'Tiền mặt', 10000, N'Thu tiền khách hàng', 'NV002');
-- ======================= CaLamViec======================
INSERT INTO dbo.CaLamViec (maCa, tenCa, gioBatDau, gioKetThuc)
VALUES
('CA1', N'Sáng', '07:00', '11:30'),
('CA2', N'Chiều', '13:00', '17:30');
-- ======================= LichLamViecc======================
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES
('LLV001', 'NV002', '2025-03-29', 'CA1', N'Làm ca sáng');
-- ======================= ChamCong======================
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES
('CC001', 'NV002', '2025-03-29', 'CA1', '07:05', '11:30', N'Đi làm', N'Không', 1, N'Đúng giờ');

