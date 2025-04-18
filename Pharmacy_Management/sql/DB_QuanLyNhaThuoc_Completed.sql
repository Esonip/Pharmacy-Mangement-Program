-- START OF 1.DataNhanVien.sql --
--==============Data Real================================
INSERT INTO dbo.NhanVien (maNV, hoTen, ngaySinh, gioiTinh, CCCD, soDienThoai, email, diaChi, chucVu, trinhDo, luong, trangThai)
VALUES
-- === Quản lý ===
('NV001', N'Nguyễn Văn An', '1985-03-15', N'Nam', '012345678901', '0909111222', 'an.nguyen@nhathuocmtp.vn', N'12 Lê Lợi, Q1, TP.HCM', N'Quản lý', N'Dược sĩ đại học', 16000000, 1),
('NV002', N'Lê Thị Mai', '1987-07-22', N'Nữ', '012345678902', '0909222333', 'mai.le@nhathuocmtp.vn', N'45 Trần Hưng Đạo, Q5, TP.HCM', N'Quản lý', N'Dược sĩ đại học', 15500000, 1),
('NV003', N'Phạm Văn Cường', '1982-11-10', N'Nam', '012345678903', '0909333444', 'cuong.pham@nhathuocmtp.vn', N'87 Phan Xích Long, Q.Phú Nhuận, TP.HCM', N'Quản lý', N'Dược sĩ đại học', 17000000, 1),
('NV004', N'Trần Thị Hoa', '1989-01-18', N'Nữ', '012345678904', '0909444555', 'hoa.tran@nhathuocmtp.vn', N'22 Nguyễn Thái Bình, Q.1, TP.HCM', N'Quản lý', N'Dược sĩ đại học', 15200000, 1),
('NV005', N'Võ Minh Tâm', '1986-06-30', N'Nam', '012345678905', '0909555666', 'tam.vo@nhathuocmtp.vn', N'5 Nguyễn Tri Phương, Q.10, TP.HCM', N'Quản lý', N'Dược sĩ đại học', 15800000, 1),

-- === Nhân viên ===
('NV006', N'Nguyễn Thị Lan', '1992-02-14', N'Nữ', '012345678906', '0911000001', 'lan.nguyen@nhathuocmtp.vn', N'101 Điện Biên Phủ, Q.Bình Thạnh', N'Nhân viên', N'Dược sĩ trung cấp', 9200000, 1),
('NV007', N'Huỳnh Văn Minh', '1993-04-25', N'Nam', '012345678907', '0911000002', 'minh.huynh@nhathuocmtp.vn', N'202 Cách Mạng Tháng 8, Q.3', N'Nhân viên', N'Dược sĩ trung cấp', 9100000, 1),
('NV008', N'Đặng Thị Hồng', '1994-12-03', N'Nữ', '012345678908', '0911000003', 'hong.dang@nhathuocmtp.vn', N'33 Nguyễn Đình Chiểu, Q.1', N'Nhân viên', N'Dược sĩ trung cấp', 9000000, 1),
('NV009', N'Trương Văn Lộc', '1995-08-19', N'Nam', '012345678909', '0911000004', 'loc.truong@nhathuocmtp.vn', N'19 Trường Sa, Q.Bình Thạnh', N'Nhân viên', N'Dược sĩ trung cấp', 9300000, 1),
('NV010', N'Ngô Thị Bích', '1991-10-07', N'Nữ', '012345678910', '0911000005', 'bich.ngo@nhathuocmtp.vn', N'8 Phan Đăng Lưu, Q.Phú Nhuận', N'Nhân viên', N'Dược sĩ trung cấp', 9200000, 1),
('NV011', N'Phan Văn Dũng', '1990-09-17', N'Nam', '012345678911', '0911000006', 'dung.phan@nhathuocmtp.vn', N'72 Cộng Hòa, Q.Tân Bình', N'Nhân viên', N'Dược sĩ trung cấp', 9150000, 1),
('NV012', N'Thái Thị Xuân', '1992-03-28', N'Nữ', '012345678912', '0911000007', 'xuan.thai@nhathuocmtp.vn', N'66 Lý Thái Tổ, Q.10', N'Nhân viên', N'Dược sĩ trung cấp', 9100000, 1),
('NV013', N'Tô Quang Huy', '1996-05-05', N'Nam', '012345678913', '0911000008', 'huy.to@nhathuocmtp.vn', N'98 Nguyễn Văn Cừ, Q.5', N'Nhân viên', N'Dược sĩ trung cấp', 9000000, 1),
('NV014', N'Lê Thị Thu', '1993-11-12', N'Nữ', '012345678914', '0911000009', 'thu.le@nhathuocmtp.vn', N'144 Tôn Đức Thắng, Q.1', N'Nhân viên', N'Dược sĩ trung cấp', 9050000, 1),
('NV015', N'Vũ Quốc Khánh', '1994-07-21', N'Nam', '012345678915', '0911000010', 'khanh.vu@nhathuocmtp.vn', N'13 Nguyễn Văn Trỗi, Q.Phú Nhuận', N'Nhân viên', N'Dược sĩ trung cấp', 9200000, 1),
('NV016', N'Cao Thị Minh', '1991-06-02', N'Nữ', '012345678916', '0911000011', 'minh.cao@nhathuocmtp.vn', N'88 Hoàng Văn Thụ, Q.Phú Nhuận', N'Nhân viên', N'Dược sĩ trung cấp', 9100000, 1),
('NV017', N'Hồ Anh Tuấn', '1993-09-09', N'Nam', '012345678917', '0911000012', 'tuan.ho@nhathuocmtp.vn', N'43 Nguyễn Trãi, Q1', N'Nhân viên', N'Dược sĩ trung cấp', 9050000, 1),
('NV018', N'Trần Thị Hạnh', '1995-12-22', N'Nữ', '012345678918', '0911000013', 'hanh.tran@nhathuocmtp.vn', N'11 Hai Bà Trưng, Q.1', N'Nhân viên', N'Dược sĩ trung cấp', 9000000, 1),
('NV019', N'Nguyễn Quốc Bảo', '1996-01-30', N'Nam', '012345678919', '0911000014', 'bao.nguyen@nhathuocmtp.vn', N'70 Pasteur, Q.3', N'Nhân viên', N'Dược sĩ trung cấp', 9150000, 1),
('NV020', N'Bùi Thị Diễm', '1992-08-08', N'Nữ', '012345678920', '0911000015', 'diem.bui@nhathuocmtp.vn', N'99 Nguyễn Thông, Q.3', N'Nhân viên', N'Dược sĩ trung cấp', 9050000, 1);
-- END OF 1.DataNhanVien.sql --


-- START OF 2.DataTaiKhoan.sql --

--==============Data Real================================
INSERT INTO dbo.TaiKhoan (maNV, matKhau)
VALUES
-- Quản lý
('NV001', 'admin123'),        
('NV002', 'admin123'),
('NV003', 'admin123'),
('NV004', 'admin123'),
('NV005', 'admin123'),

-- Nhân viên
('NV006', 'nhanvien123'),
('NV007', 'nhanvien123'),
('NV008', 'nhanvien123'),
('NV009', 'nhanvien123'),
('NV010', 'nhanvien123'),
('NV011', 'nhanvien123'),
('NV012', 'nhanvien123'),
('NV013', 'nhanvien123'),
('NV014', 'nhanvien123'),
('NV015', 'nhanvien123'),
('NV016', 'nhanvien123'),
('NV017', 'nhanvien123'),
('NV018', 'nhanvien123'),
('NV019', 'nhanvien123'),
('NV020', 'nhanvien123');
-- END OF 2.DataTaiKhoan.sql --

-- START OF 3. DataKhachHang.sql --

--==============Data Real================================
INSERT INTO dbo.NhaCungCap (maNCC, tenNCC, diaChi, soDienThoai, email)
VALUES
('NCC001', N'Công ty Dược ABC', N'456 Lý Thường Kiệt, Q10, TP.HCM', '0281234567', 'contact@duocabc.com',1),
('NCC002', N'Công ty Dược XYZ', N'789 Phan Đăng Lưu, Q.Bình Thạnh, TP.HCM', '0287654321', 'info@duocxyz.vn',1),
('NCC003', N'Công ty TNHH Dược An Khang', N'12 Nguyễn Văn Cừ, Q5, TP.HCM', '02839393939', 'ankhang@duoc.vn',1),
('NCC004', N'Công ty Dược phẩm Hòa Bình', N'98 Lê Đại Hành, Q11, TP.HCM', '02838481234', 'contact@hoabinhpharma.vn',1),
('NCC005', N'Công ty TNHH Dược Minh Châu', N'45 Nguyễn Trãi, Q1, TP.HCM', '02839481234', 'minhchau@duocpham.vn',1),
('NCC006', N'Công ty Cổ phần Dược Lâm Đồng', N'22 Bà Huyện Thanh Quan, Q3, TP.HCM', '02837378888', 'duoclamdong@gmail.com',1),
('NCC007', N'Công ty Dược phẩm Sao Mai', N'30 Nguyễn Văn Linh, Q7, TP.HCM', '02836008888', 'sales@saomaipharm.vn',1),
('NCC008', N'Công ty TNHH Thiết bị Y tế Thành Công', N'199 Cách Mạng Tháng 8, Q10', '02837272727', 'info@thanhcongmed.vn',1),
('NCC009', N'Dược phẩm Nam Việt', N'88 Trần Hưng Đạo, Q5, TP.HCM', '02839336677', 'contact@namvietpharma.vn',1),
('NCC010', N'Công ty Dược Hồng Phát', N'102 Lê Lai, Q1, TP.HCM', '02839998877', 'duochongphat@gmail.com',1),

('NCC011', N'Công ty Dược phẩm Tâm An', N'120 Nguyễn Hữu Cảnh, Q.Bình Thạnh', '02839223344', 'taman@duocpham.vn',1),
('NCC012', N'Công ty Cổ phần Y tế Trường Thọ', N'35 Võ Văn Tần, Q3, TP.HCM', '02836363636', 'truongtho@ytetrangbi.vn',1),
('NCC013', N'Công ty Dược phẩm Sài Gòn', N'78 Tô Hiến Thành, Q10', '02839990000', 'duocsaigon@vnmail.vn',1),
('NCC014', N'Dược phẩm Ánh Dương', N'56 Nguyễn Thái Học, Q1, TP.HCM', '02839333222', 'anhduong@duoc.vn',1),
('NCC015', N'Công ty TNHH Dược Tín Phát', N'41 Phan Xích Long, Q.Phú Nhuận', '02837678899', 'tinphat@duocmail.vn',1),
('NCC016', N'Công ty TNHH Dược Hoàng Gia', N'90 Nguyễn Văn Thủ, Q1, TP.HCM', '02837779900', 'hoanggia@duocpham.vn',1),
('NCC017', N'Dược phẩm Ngọc Lan', N'123 Trần Não, Q2, TP.HCM', '02837272788', 'ngoclan@duoc.vn',1),
('NCC018', N'Công ty TNHH Y tế Hưng Thịnh', N'202 Pasteur, Q3, TP.HCM', '02839223311', 'hungthinh@ytetrangbi.vn',1),
('NCC019', N'Dược Thiên Long', N'85 Đường 3/2, Q10, TP.HCM', '02838778855', 'thienlong@duocpham.vn',1),
('NCC020', N'Công ty Dược Tâm Đức', N'99 Nguyễn Thái Bình, Q1', '02839991122', 'tamduc@duoc.vn',1),

('NCC021', N'Công ty Dược Hồng Phúc', N'88 Bạch Đằng, Q.Tân Bình', '02838449900', 'hongphuc@duocmail.vn',1),
('NCC022', N'Công ty TNHH Thiết bị y tế Sao Việt', N'18 Hoàng Sa, Q1, TP.HCM', '02839993344', 'saoviet@yte.vn',1),
('NCC023', N'Dược phẩm Thanh Tâm', N'33 Nguyễn Hữu Thọ, Q7, TP.HCM', '02839339999', 'thanh.tam@duocpham.vn',1),
('NCC024', N'Công ty CP Dược Thiên Tân', N'68 Nguyễn Biểu, Q5, TP.HCM', '02838221166', 'thientan@duoc.vn',1),
('NCC025', N'Công ty Dược Nam Long', N'54 Nguyễn Sơn, Q.Tân Phú', '02839775544', 'namlong@duocpham.vn',1),
('NCC026', N'Công ty TNHH Dược Đại Phát', N'19 Hòa Hưng, Q10, TP.HCM', '02839118888', 'daiphat@duoc.vn',1),
('NCC027', N'Dược phẩm Việt Mỹ', N'70 Trường Chinh, Q.Tân Bình', '02839990055', 'vietmy@duocpham.vn',1),
('NCC028', N'Công ty TNHH Dược Thiên An', N'123 Hoàng Hoa Thám, Q.Bình Thạnh', '02839221122', 'thienan@duoc.vn',1),
('NCC029', N'Dược phẩm An Việt', N'60 Nguyễn Đình Chiểu, Q3, TP.HCM', '02839994466', 'anviet@duocpham.vn',1),
('NCC030', N'Công ty Cổ phần Dược Thịnh Vượng', N'45 Tôn Đức Thắng, Q1, TP.HCM', '02838441122', 'thinhvuong@duoc.vn',1);




-- END OF 4. DataNhaCungCap.sql --

-- START OF 5. DataThuoc.sql --
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T001', N'Paracetamol', N'Viên', 8458, 8974, '2026-03-12', N'86mg', 255, 260);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T002', N'Panadol', N'Viên', 9310, 10389, '2026-05-25', N'766mg', 1728, 1731);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T003', N'Efferalgan', N'Viên', 8678, 10322, '2026-02-06', N'407mg', 1105, 1107);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T004', N'Hapacol', N'Viên', 9839, 11586, '2026-01-02', N'573mg', 445, 439);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T005', N'Decolgen', N'Viên', 9066, 9598, '2026-05-16', N'986mg', 1838, 1838);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T006', N'Tiffy', N'Viên', 5254, 6656, '2026-09-06', N'641mg', 1464, 1457);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T007', N'Aspirin', N'Viên', 3167, 4541, '2026-11-25', N'79mg', 464, 469);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T008', N'Amoxicillin', N'Viên', 6715, 8927, '2026-01-13', N'913mg', 1719, 1718);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T009', N'Clorocid', N'Viên', 6399, 9080, '2026-08-20', N'11mg', 1333, 1331);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T010', N'Tylenol', N'Viên', 4853, 5478, '2026-05-27', N'682mg', 870, 865);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T011', N'Coldacmin', N'Viên', 8061, 10549, '2026-06-26', N'544mg', 1203, 1195);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T012', N'Rhumenol', N'Viên', 9578, 10454, '2026-09-15', N'51mg', 1322, 1313);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T013', N'Decolsin', N'Viên', 5133, 6015, '2026-11-28', N'486mg', 1298, 1290);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T014', N'Salonpas', N'Viên', 9963, 11637, '2026-08-28', N'595mg', 274, 284);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T015', N'Methorphan', N'Viên', 7094, 8822, '2026-06-19', N'539mg', 1169, 1163);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T016', N'Cebraton', N'Viên', 5019, 6535, '2026-09-26', N'583mg', 236, 246);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T017', N'Becozym', N'Viên', 2937, 4609, '2026-08-12', N'936mg', 1064, 1066);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T018', N'Zentel', N'Viên', 2193, 2842, '2026-01-08', N'110mg', 946, 945);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T019', N'Wormin', N'Viên', 1008, 2575, '2026-10-02', N'150mg', 1795, 1791);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T020', N'Biseptol', N'Viên', 5518, 7387, '2026-08-04', N'374mg', 972, 970);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T021', N'Alpha Choay', N'Viên', 8797, 10919, '2026-03-20', N'994mg', 381, 388);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T022', N'Hydrite', N'Viên', 4477, 6461, '2026-09-22', N'161mg', 1263, 1270);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T023', N'Smecta', N'Viên', 1214, 2879, '2026-03-15', N'817mg', 887, 895);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T024', N'Loperamide', N'Viên', 1973, 2552, '2026-04-17', N'90mg', 598, 602);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T025', N'Berberin', N'Viên', 4547, 5566, '2026-02-28', N'966mg', 815, 807);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T026', N'Omeprazole', N'Viên', 1725, 2423, '2026-11-07', N'680mg', 1646, 1644);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T027', N'Oresol', N'Viên', 7966, 9642, '2026-10-09', N'1mg', 659, 669);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T028', N'Pankreoflat', N'Viên', 2282, 5164, '2026-04-20', N'906mg', 367, 370);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T029', N'Buscopan', N'Viên', 8245, 9779, '2026-01-16', N'870mg', 1750, 1742);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T030', N'Spasmaverine', N'Viên', 4715, 5834, '2026-01-28', N'514mg', 927, 918);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T031', N'Dorithricin', N'Viên', 7616, 10195, '2026-07-16', N'505mg', 1229, 1227);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T032', N'Betadine', N'Viên', 6543, 8867, '2026-08-01', N'757mg', 772, 777);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T033', N'Ringer Lactate', N'Viên', 1001, 3080, '2026-05-09', N'914mg', 171, 164);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T034', N'Hapacol C', N'Viên', 3830, 5386, '2026-12-24', N'982mg', 1988, 1996);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T035', N'Terpin', N'Viên', 3435, 5359, '2026-07-28', N'268mg', 744, 740);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T036', N'Eugica', N'Viên', 2051, 3318, '2026-02-03', N'881mg', 1589, 1582);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T037', N'Acemol', N'Viên', 9962, 11639, '2026-09-19', N'376mg', 712, 710);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T038', N'Ibuprofen', N'Viên', 7228, 9242, '2026-06-07', N'746mg', 1828, 1834);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T039', N'Naphazoline', N'Viên', 2055, 3486, '2026-01-13', N'356mg', 1621, 1619);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T040', N'Otrivin', N'Viên', 4617, 7611, '2026-12-11', N'314mg', 390, 388);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T041', N'Xisat', N'Viên', 1695, 4313, '2026-09-10', N'781mg', 1898, 1889);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T042', N'NaCl 0.9%', N'Viên', 3007, 5289, '2026-11-18', N'177mg', 799, 801);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T043', N'Floratil', N'Viên', 3729, 6281, '2026-12-28', N'282mg', 1689, 1683);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T044', N'Duphaston', N'Viên', 9444, 10069, '2026-09-05', N'665mg', 689, 679);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T045', N'Cotrim', N'Viên', 7126, 10005, '2026-04-05', N'980mg', 1598, 1592);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T046', N'Medrol', N'Viên', 9974, 12045, '2026-02-09', N'19mg', 1284, 1274);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T047', N'Bromhexin', N'Viên', 7846, 9394, '2026-07-18', N'610mg', 873, 879);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T048', N'Tobradex', N'Viên', 6614, 7764, '2026-02-23', N'608mg', 1410, 1418);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T049', N'Ofloxacin', N'Viên', 2527, 4374, '2026-10-19', N'498mg', 347, 343);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T050', N'Tetracycline', N'Viên', 4257, 6553, '2026-02-20', N'715mg', 1416, 1408);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T051', N'Neomycin', N'Viên', 7132, 8688, '2026-11-28', N'212mg', 874, 867);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T052', N'Cephalexin', N'Viên', 7277, 8973, '2026-06-18', N'546mg', 224, 228);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T053', N'Ciprofloxacin', N'Viên', 8127, 10891, '2026-01-16', N'412mg', 878, 878);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T054', N'Azithromycin', N'Viên', 5206, 7841, '2026-03-13', N'930mg', 1585, 1578);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T055', N'Clarithromycin', N'Viên', 7111, 8129, '2026-12-21', N'338mg', 1336, 1332);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T056', N'Vitamin C', N'Viên', 7359, 7969, '2026-07-11', N'321mg', 614, 611);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T057', N'Vitamin B1', N'Viên', 4545, 5389, '2026-02-03', N'895mg', 1326, 1319);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T058', N'Vitamin B6', N'Viên', 4706, 7640, '2026-12-05', N'356mg', 1242, 1247);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T059', N'Vitamin B12', N'Viên', 4448, 6804, '2026-08-14', N'579mg', 1168, 1167);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T060', N'Ferrovit', N'Viên', 7707, 8873, '2026-03-17', N'749mg', 472, 471);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T061', N'Hemopoly', N'Viên', 6092, 6798, '2026-08-15', N'77mg', 1297, 1303);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T062', N'Actisô', N'Viên', 4403, 6099, '2026-12-11', N'514mg', 1805, 1811);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T063', N'Hemobion', N'Viên', 2339, 3392, '2026-04-11', N'389mg', 190, 190);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T064', N'Duphavit', N'Viên', 2118, 4330, '2026-07-11', N'257mg', 618, 616);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T065', N'Elevit', N'Viên', 8196, 10937, '2026-10-19', N'769mg', 1994, 1994);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T066', N'Calci D', N'Viên', 2057, 4746, '2026-10-08', N'622mg', 57, 67);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T067', N'Osteocare', N'Viên', 6235, 7008, '2026-11-03', N'485mg', 1406, 1413);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T068', N'Canxi Corbiere', N'Viên', 8926, 9805, '2026-05-26', N'575mg', 1782, 1792);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T069', N'D3 B12', N'Viên', 9180, 11819, '2026-07-15', N'362mg', 1452, 1460);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T070', N'Hydroxyzine', N'Viên', 7900, 10548, '2026-10-22', N'521mg', 574, 582);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T071', N'Loratadin', N'Viên', 1969, 3276, '2026-03-21', N'845mg', 1097, 1091);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T072', N'Cetirizin', N'Viên', 1813, 2778, '2026-12-24', N'140mg', 936, 929);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T073', N'Alimemazin', N'Viên', 6471, 7224, '2026-09-08', N'582mg', 1011, 1004);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T074', N'Prednisolon', N'Viên', 5326, 6013, '2026-09-14', N'59mg', 422, 416);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T075', N'Hydrocortison', N'Viên', 4217, 7211, '2026-06-06', N'320mg', 226, 230);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T076', N'Betamethason', N'Viên', 7756, 9858, '2026-11-05', N'718mg', 557, 566);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T077', N'Bepanthen', N'Viên', 6025, 8299, '2026-01-14', N'47mg', 928, 918);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T078', N'Fucidin', N'Viên', 9597, 10116, '2026-03-01', N'188mg', 1330, 1333);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T079', N'Acyclovir', N'Viên', 1366, 3027, '2026-04-27', N'541mg', 1889, 1883);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T080', N'Gentamicin', N'Viên', 8639, 9275, '2026-10-27', N'42mg', 511, 503);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T081', N'Mebendazole', N'Viên', 2556, 3896, '2026-12-01', N'226mg', 1368, 1358);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T082', N'Albendazole', N'Viên', 8764, 10197, '2026-08-17', N'411mg', 1825, 1815);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T083', N'Pancreatin', N'Viên', 4098, 6744, '2026-11-15', N'808mg', 1878, 1880);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T084', N'Maalox', N'Viên', 2644, 5108, '2026-05-09', N'416mg', 1244, 1247);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T085', N'Phosphalugel', N'Viên', 2153, 3097, '2026-04-21', N'193mg', 980, 984);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T086', N'Lansoprazole', N'Viên', 2143, 4624, '2026-12-14', N'806mg', 416, 415);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T087', N'Esomeprazole', N'Viên', 5248, 5993, '2026-09-16', N'912mg', 1771, 1771);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T088', N'Domperidon', N'Viên', 6820, 8130, '2026-02-11', N'666mg', 1146, 1152);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T089', N'Metoclopramid', N'Viên', 8473, 10592, '2026-11-14', N'806mg', 717, 726);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T090', N'Cinnarizin', N'Viên', 2805, 5059, '2026-07-19', N'893mg', 94, 98);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T091', N'Stugeron', N'Viên', 1827, 2927, '2026-05-26', N'163mg', 507, 507);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T092', N'Piracetam', N'Viên', 8213, 9932, '2026-12-19', N'422mg', 1102, 1104);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T093', N'Ginkgo Biloba', N'Viên', 2912, 5124, '2026-03-13', N'270mg', 689, 688);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T094', N'Cebraton Plus', N'Viên', 2515, 4025, '2026-11-04', N'108mg', 708, 700);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T095', N'Ginsenoside', N'Viên', 7267, 9573, '2026-08-08', N'334mg', 1124, 1121);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T096', N'Kirkland', N'Viên', 1688, 2436, '2026-02-18', N'478mg', 1410, 1410);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T097', N'Nature Made', N'Viên', 4010, 6576, '2026-02-15', N'838mg', 1168, 1172);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T098', N'Blackmores', N'Viên', 6910, 9217, '2026-01-07', N'742mg', 1273, 1274);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T099', N'Omega-3', N'Viên', 6490, 8850, '2026-06-10', N'738mg', 262, 255);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T100', N'Aqua Maris', N'Viên', 5147, 6161, '2027-10-10', N'599mg', 1800, 1805);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T101', N'Naphasol', N'Viên', 9545, 11956, '2027-07-07', N'563mg', 1612, 1608);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T102', N'Myonal', N'Viên', 6760, 8433, '2026-02-11', N'577mg', 1492, 1493);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T103', N'Gaviscon', N'Viên', 4521, 5108, '2026-07-31', N'340mg', 377, 376);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T104', N'Telfor', N'Viên', 1379, 1624, '2027-07-03', N'990mg', 587, 588);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T105', N'Panamol', N'Viên', 4742, 5232, '2026-01-13', N'593mg', 1698, 1700);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T106', N'Eugica Forte', N'Viên', 5963, 6678, '2026-11-27', N'92mg', 1766, 1761);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T107', N'Naphacogyl', N'Viên', 3450, 4458, '2026-04-28', N'533mg', 688, 693);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T108', N'Loxonin', N'Viên', 4111, 4811, '2026-05-09', N'507mg', 469, 473);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T109', N'Aleve', N'Viên', 4153, 5251, '2028-01-01', N'757mg', 1452, 1457);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T110', N'Cadigesic', N'Viên', 7258, 8204, '2026-03-08', N'428mg', 824, 825);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T111', N'Betaserc', N'Viên', 8572, 9573, '2027-04-23', N'586mg', 1776, 1780);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T112', N'Bisolvon', N'Viên', 9659, 11036, '2027-04-01', N'685mg', 374, 379);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T113', N'Aerius', N'Viên', 6685, 7444, '2027-11-04', N'766mg', 534, 539);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T114', N'Xyzal', N'Viên', 3289, 4136, '2027-11-22', N'882mg', 650, 654);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T115', N'Zyrtec', N'Viên', 1883, 2188, '2027-01-22', N'419mg', 1533, 1531);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T116', N'Cezil', N'Viên', 9396, 11373, '2027-01-28', N'534mg', 1647, 1645);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T117', N'Clarityne', N'Viên', 3615, 4362, '2027-01-10', N'733mg', 532, 527);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T118', N'Ventolin', N'Viên', 3993, 4691, '2026-07-16', N'174mg', 613, 611);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T119', N'Salbutamol', N'Viên', 7543, 8724, '2026-08-29', N'937mg', 661, 665);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T120', N'Amdipin', N'Viên', 6353, 7205, '2027-03-31', N'766mg', 418, 417);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T121', N'Coversyl', N'Viên', 5281, 6191, '2027-11-22', N'642mg', 1062, 1059);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T122', N'Losartan', N'Viên', 6045, 7210, '2027-02-13', N'661mg', 1693, 1691);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T123', N'Hapacol Blue', N'Viên', 1431, 1710, '2026-04-06', N'822mg', 303, 302);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T124', N'Hapacol Extra', N'Viên', 6836, 8035, '2027-11-18', N'457mg', 1150, 1148);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T125', N'Glucophage', N'Viên', 3825, 4625, '2027-08-16', N'741mg', 566, 569);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T126', N'Daonil', N'Viên', 5288, 6357, '2026-12-21', N'852mg', 1245, 1242);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T127', N'Insulatard', N'Viên', 7202, 9129, '2026-10-09', N'685mg', 323, 327);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T128', N'Mixtard', N'Viên', 8280, 10245, '2026-05-19', N'628mg', 478, 476);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T129', N'Humalog', N'Viên', 9413, 11288, '2026-12-26', N'797mg', 1083, 1087);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T130', N'Lantus', N'Viên', 4851, 5955, '2027-01-20', N'335mg', 855, 850);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T131', N'Aspirin PH8', N'Viên', 2837, 3546, '2027-06-13', N'301mg', 1270, 1269);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T132', N'Plavix', N'Viên', 2819, 3196, '2027-06-16', N'617mg', 532, 533);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T133', N'Lipitor', N'Viên', 3462, 3872, '2027-12-05', N'175mg', 549, 550);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T134', N'Crestor', N'Viên', 1040, 1264, '2026-10-09', N'103mg', 562, 559);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T135', N'Atorvastatin', N'Viên', 7876, 9885, '2027-07-18', N'591mg', 1926, 1923);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T136', N'Simvastatin', N'Viên', 8017, 10349, '2026-05-09', N'716mg', 1308, 1311);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T137', N'Rosuvastatin', N'Viên', 4886, 5983, '2027-05-21', N'565mg', 293, 289);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T138', N'Furosemid', N'Viên', 8781, 10747, '2027-10-10', N'571mg', 643, 643);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T139', N'Hydrochlorothiazide', N'Viên', 4795, 6195, '2026-05-09', N'424mg', 575, 577);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T140', N'Amlor', N'Viên', 1279, 1617, '2027-10-18', N'21mg', 197, 202);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T141', N'Nitromint', N'Viên', 1597, 1943, '2026-11-26', N'724mg', 1761, 1760);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T142', N'Digoxin', N'Viên', 9710, 11269, '2026-12-12', N'152mg', 766, 768);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T143', N'Lanoxin', N'Viên', 8768, 10926, '2026-11-28', N'850mg', 1359, 1361);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T144', N'Euvax', N'Viên', 2847, 3343, '2026-10-06', N'942mg', 1521, 1516);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T145', N'Twinrix', N'Viên', 3840, 4291, '2027-10-06', N'162mg', 1120, 1116);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T146', N'Infanrix', N'Viên', 2951, 3697, '2027-09-21', N'715mg', 342, 346);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T147', N'Rotarix', N'Viên', 9161, 10615, '2026-01-24', N'870mg', 630, 625);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T148', N'Synflorix', N'Viên', 4984, 5997, '2026-01-21', N'555mg', 703, 701);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T149', N'Vaxigrip', N'Viên', 4757, 6135, '2026-10-27', N'850mg', 426, 425);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T150', N'Menactra', N'Viên', 5155, 6476, '2027-01-27', N'956mg', 616, 621);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T151', N'Pentaxim', N'Viên', 7237, 8108, '2026-10-01', N'126mg', 335, 337);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T152', N'Meningo A+C', N'Viên', 6575, 7805, '2026-07-08', N'669mg', 918, 922);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T153', N'BCG', N'Viên', 4463, 5003, '2027-12-28', N'845mg', 1364, 1362);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T154', N'Sabin', N'Viên', 6864, 8694, '2027-11-19', N'871mg', 1599, 1597);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T155', N'Varilrix', N'Viên', 1219, 1576, '2027-11-26', N'951mg', 326, 330);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T156', N'Zentiva', N'Viên', 2580, 3261, '2027-01-28', N'949mg', 433, 429);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T157', N'Mekophar', N'Viên', 3735, 4796, '2027-05-13', N'862mg', 965, 965);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T158', N'Pymepharco', N'Viên', 7316, 9217, '2026-02-04', N'194mg', 1495, 1493);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T159', N'DHG Pharma', N'Viên', 3615, 4297, '2027-10-19', N'440mg', 723, 728);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T160', N'OPC', N'Viên', 4308, 5060, '2027-03-03', N'495mg', 1152, 1150);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T161', N'Imexpharm', N'Viên', 8127, 9313, '2026-04-10', N'301mg', 1336, 1341);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T162', N'Domesco', N'Viên', 4368, 4926, '2027-02-03', N'731mg', 1032, 1033);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T163', N'Bidiphar', N'Viên', 9443, 10774, '2027-10-24', N'730mg', 634, 634);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T164', N'Traphaco', N'Viên', 9602, 10850, '2027-09-27', N'864mg', 325, 322);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T165', N'Stada', N'Viên', 9419, 11252, '2027-12-11', N'832mg', 179, 175);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T166', N'Euvipharm', N'Viên', 1896, 2143, '2026-09-16', N'247mg', 416, 414);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T167', N'Panpharma', N'Viên', 3599, 4090, '2027-03-27', N'171mg', 1223, 1227);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T168', N'Sanofi', N'Viên', 9445, 11435, '2027-02-09', N'314mg', 702, 705);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T169', N'GSK', N'Viên', 5975, 7335, '2026-12-18', N'954mg', 480, 481);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T170', N'Roche', N'Viên', 5327, 6671, '2027-12-24', N'61mg', 161, 166);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T171', N'Pfizer', N'Viên', 3361, 3859, '2026-12-11', N'929mg', 227, 224);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T172', N'AstraZeneca', N'Viên', 7961, 10284, '2026-03-24', N'188mg', 390, 394);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T173', N'Moderna', N'Viên', 4959, 6318, '2027-08-07', N'832mg', 1852, 1849);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T174', N'Sandoz', N'Viên', 6033, 7754, '2026-07-20', N'437mg', 188, 193);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T175', N'Novartis', N'Viên', 1767, 1986, '2026-03-03', N'130mg', 318, 315);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T176', N'Bayer', N'Viên', 8964, 10782, '2027-08-07', N'150mg', 193, 189);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T177', N'Abbott', N'Viên', 5258, 6202, '2026-05-11', N'516mg', 1545, 1544);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T178', N'Johnson & Johnson', N'Viên', 4644, 5547, '2027-10-15', N'536mg', 859, 856);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T179', N'Merck', N'Viên', 8658, 9765, '2027-04-14', N'865mg', 518, 513);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T180', N'Takeda', N'Viên', 6019, 6770, '2026-08-04', N'137mg', 809, 812);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T181', N'MSD', N'Viên', 6717, 8039, '2027-11-10', N'828mg', 780, 783);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T182', N'Actrapid', N'Viên', 5776, 7087, '2027-05-19', N'765mg', 1671, 1666);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T183', N'Augmentin', N'Viên', 7962, 9893, '2026-12-24', N'920mg', 132, 129);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T184', N'Zinnat', N'Viên', 9663, 12442, '2026-09-30', N'806mg', 288, 289);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T185', N'Rocephin', N'Viên', 9605, 12462, '2027-06-06', N'330mg', 1830, 1830);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T186', N'Tavanic', N'Viên', 1637, 1839, '2026-07-14', N'84mg', 1614, 1613);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T187', N'Flagyl', N'Viên', 7166, 8042, '2027-07-30', N'918mg', 637, 633);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T188', N'Tinidazole', N'Viên', 2407, 2848, '2027-06-17', N'135mg', 1877, 1876);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T189', N'Metronidazole', N'Viên', 2259, 2501, '2026-03-23', N'285mg', 696, 694);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T190', N'Mekotricin', N'Viên', 6604, 8121, '2027-04-02', N'610mg', 1494, 1497);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T191', N'Nizoral', N'Viên', 9780, 12589, '2027-05-03', N'719mg', 1258, 1256);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T192', N'Daktarin', N'Viên', 1888, 2289, '2026-09-18', N'18mg', 419, 414);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T193', N'Canesten', N'Viên', 7839, 9821, '2027-09-26', N'292mg', 1888, 1892);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T194', N'Mupirocin', N'Viên', 7569, 8480, '2026-02-17', N'571mg', 824, 828);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T195', N'Tobrex', N'Viên', 3225, 4156, '2027-05-02', N'719mg', 1751, 1747);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T196', N'Ciloxan', N'Viên', 8259, 10376, '2027-04-30', N'661mg', 1371, 1373);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T197', N'Vigadexa', N'Viên', 4107, 4609, '2027-10-20', N'812mg', 175, 172);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T198', N'Polydexa', N'Viên', 3106, 3531, '2027-06-07', N'341mg', 833, 828);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T199', N'Sterimar', N'Viên', 8994, 10515, '2026-03-22', N'374mg', 362, 366);
INSERT INTO dbo.Thuoc (maThuoc, tenThuoc, donViTinh, donGiaNhap, donGiaBan, hanSuDung, hamLuong, soLuongTon, soLuongThucTe) VALUES ('T200', N'Prospan', N'Viên', 9122, 11316, '2027-05-20', N'834mg', 1445, 1450);
-- END OF 5. DataThuoc.sql --

-- START OF 6. DataHoaDon.sql --
-- ======================= HoaDon =======================
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD001', '2024-11-09 09:09:06', 466565, 'NV018', 'KH013', N'Bán lẻ', N'Đã hủy', N'Tiền mặt');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD002', '2025-03-19 09:09:06', 152131, 'NV018', 'KH035', N'Bán sỉ', N'Chờ xử lý', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD003', '2024-12-22 09:09:06', 463407, 'NV020', 'KH034', N'Bán sỉ', N'Hoàn tất', N'Tiền mặt');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD004', '2024-11-28 09:09:06', 277042, 'NV007', 'KH049', N'Bán lẻ', N'Chờ xử lý', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD005', '2024-12-21 09:09:06', 225358, 'NV018', 'KH009', N'Bán sỉ', N'Đã hủy', N'Tiền mặt');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD006', '2024-09-24 09:09:06', 318296, 'NV007', 'KH037', N'Bán sỉ', N'Đã hủy', N'Tiền mặt');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD007', '2024-11-22 09:09:06', 81643, 'NV011', 'KH033', N'Bán sỉ', N'Hoàn tất', N'Chuyển khoản');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD008', '2024-09-28 09:09:06', 222567, 'NV013', 'KH018', N'Bán lẻ', N'Chờ xử lý', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD009', '2025-03-27 09:09:06', 210219, 'NV002', 'KH006', N'Bán sỉ', N'Hoàn tất', N'Tiền mặt');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD010', '2024-05-25 09:09:06', 365148, 'NV013', 'KH016', N'Bán lẻ', N'Đã hủy', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD011', '2025-03-13 09:09:06', 396891, 'NV011', 'KH042', N'Bán lẻ', N'Đã hủy', N'Tiền mặt');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD012', '2024-08-27 09:09:06', 474083, 'NV014', 'KH007', N'Bán sỉ', N'Đã hủy', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD013', '2024-09-22 09:09:06', 253382, 'NV019', 'KH046', N'Bán lẻ', N'Hoàn tất', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD014', '2024-08-22 09:09:06', 394201, 'NV010', 'KH045', N'Bán lẻ', N'Đã hủy', N'Chuyển khoản');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD015', '2024-10-23 09:09:06', 429062, 'NV011', 'KH023', N'Bán lẻ', N'Đã hủy', N'Chuyển khoản');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD016', '2024-11-20 09:09:06', 452260, 'NV020', 'KH046', N'Bán lẻ', N'Đã hủy', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD017', '2024-08-13 09:09:06', 243625, 'NV014', 'KH034', N'Bán lẻ', N'Hoàn tất', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD018', '2025-03-23 09:09:06', 180435, 'NV013', 'KH034', N'Bán lẻ', N'Đã hủy', N'Tiền mặt');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD019', '2024-07-07 09:09:06', 438517, 'NV011', 'KH047', N'Bán lẻ', N'Đã hủy', N'Tiền mặt');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD020', '2024-08-19 09:09:06', 141704, 'NV013', 'KH004', N'Bán sỉ', N'Chờ xử lý', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD021', '2024-08-20 09:09:06', 119004, 'NV008', 'KH033', N'Bán lẻ', N'Hoàn tất', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD022', '2025-02-12 09:09:06', 226955, 'NV017', 'KH035', N'Bán lẻ', N'Hoàn tất', N'Tiền mặt');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD023', '2024-06-05 09:09:06', 196750, 'NV001', 'KH044', N'Bán sỉ', N'Hoàn tất', N'Tiền mặt');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD024', '2024-12-27 09:09:06', 337177, 'NV003', 'KH050', N'Bán lẻ', N'Chờ xử lý', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD025', '2025-03-08 09:09:06', 282305, 'NV004', 'KH001', N'Bán lẻ', N'Đã hủy', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD026', '2024-09-22 09:09:06', 291026, 'NV015', 'KH040', N'Bán sỉ', N'Hoàn tất', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD027', '2024-08-14 09:09:06', 327858, 'NV018', 'KH030', N'Bán lẻ', N'Hoàn tất', N'Chuyển khoản');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD028', '2024-11-11 09:09:06', 470274, 'NV009', 'KH023', N'Bán lẻ', N'Hoàn tất', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD029', '2024-06-11 09:09:06', 65988, 'NV002', 'KH027', N'Bán sỉ', N'Đã hủy', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD030', '2024-07-30 09:09:06', 191658, 'NV009', 'KH038', N'Bán sỉ', N'Đã hủy', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD031', '2025-03-14 09:09:06', 300179, 'NV015', 'KH030', N'Bán lẻ', N'Chờ xử lý', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD032', '2024-10-18 09:09:06', 281648, 'NV002', 'KH020', N'Bán lẻ', N'Chờ xử lý', N'Chuyển khoản');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD033', '2024-08-21 09:09:06', 248672, 'NV002', 'KH026', N'Bán lẻ', N'Đã hủy', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD034', '2024-12-22 09:09:06', 53869, 'NV005', 'KH003', N'Bán sỉ', N'Chờ xử lý', N'Chuyển khoản');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD035', '2024-08-12 09:09:06', 397987, 'NV005', 'KH004', N'Bán lẻ', N'Chờ xử lý', N'Chuyển khoản');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD036', '2025-02-21 09:09:06', 259016, 'NV015', 'KH017', N'Bán lẻ', N'Hoàn tất', N'Chuyển khoản');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD037', '2024-11-16 09:09:06', 302738, 'NV018', 'KH005', N'Bán lẻ', N'Chờ xử lý', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD038', '2024-08-26 09:09:06', 100361, 'NV011', 'KH009', N'Bán lẻ', N'Đã hủy', N'Tiền mặt');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD039', '2025-03-07 09:09:06', 170232, 'NV009', 'KH005', N'Bán lẻ', N'Chờ xử lý', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD040', '2025-03-11 09:09:06', 213776, 'NV020', 'KH018', N'Bán sỉ', N'Chờ xử lý', N'Tiền mặt');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD041', '2024-12-21 09:09:06', 119047, 'NV007', 'KH009', N'Bán sỉ', N'Hoàn tất', N'Chuyển khoản');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD042', '2025-01-21 09:09:06', 110385, 'NV012', 'KH048', N'Bán lẻ', N'Đã hủy', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD043', '2024-04-04 09:09:06', 202239, 'NV014', 'KH029', N'Bán sỉ', N'Chờ xử lý', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD044', '2024-08-23 09:09:06', 463179, 'NV017', 'KH039', N'Bán sỉ', N'Chờ xử lý', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD045', '2024-06-09 09:09:06', 89923, 'NV019', 'KH007', N'Bán lẻ', N'Đã hủy', N'Chuyển khoản');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD046', '2024-07-15 09:09:06', 125025, 'NV007', 'KH008', N'Bán sỉ', N'Hoàn tất', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD047', '2025-02-24 09:09:06', 282961, 'NV010', 'KH017', N'Bán sỉ', N'Đã hủy', N'Tiền mặt');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD048', '2024-12-01 09:09:06', 296018, 'NV012', 'KH043', N'Bán sỉ', N'Chờ xử lý', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD049', '2024-08-24 09:09:06', 338350, 'NV006', 'KH021', N'Bán sỉ', N'Chờ xử lý', N'Tiền mặt');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD050', '2024-07-07 09:09:06', 54709, 'NV017', 'KH012', N'Bán lẻ', N'Chờ xử lý', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD051', '2025-02-16 09:09:06', 200730, 'NV020', 'KH028', N'Bán sỉ', N'Đã hủy', N'Tiền mặt');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD052', '2024-09-15 09:09:06', 460504, 'NV015', 'KH003', N'Bán sỉ', N'Hoàn tất', N'Tiền mặt');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD053', '2025-02-23 09:09:06', 476260, 'NV018', 'KH048', N'Bán sỉ', N'Đã hủy', N'Tiền mặt');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD054', '2024-11-22 09:09:06', 301406, 'NV007', 'KH033', N'Bán lẻ', N'Hoàn tất', N'Chuyển khoản');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD055', '2024-11-23 09:09:06', 382026, 'NV020', 'KH037', N'Bán sỉ', N'Hoàn tất', N'Tiền mặt');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD056', '2024-05-25 09:09:06', 120309, 'NV017', 'KH020', N'Bán lẻ', N'Hoàn tất', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD057', '2025-03-20 09:09:06', 198701, 'NV005', 'KH018', N'Bán sỉ', N'Chờ xử lý', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD058', '2024-08-08 09:09:06', 357548, 'NV014', 'KH008', N'Bán lẻ', N'Đã hủy', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD059', '2024-05-08 09:09:06', 291982, 'NV019', 'KH001', N'Bán lẻ', N'Đã hủy', N'Chuyển khoản');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD060', '2024-11-03 09:09:06', 271989, 'NV006', 'KH030', N'Bán lẻ', N'Đã hủy', N'Tiền mặt');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD061', '2024-07-21 09:09:06', 361782, 'NV005', 'KH042', N'Bán sỉ', N'Hoàn tất', N'Tiền mặt');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD062', '2025-01-17 09:09:06', 102062, 'NV015', 'KH046', N'Bán sỉ', N'Chờ xử lý', N'Chuyển khoản');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD063', '2025-02-04 09:09:06', 115949, 'NV002', 'KH003', N'Bán sỉ', N'Chờ xử lý', N'Chuyển khoản');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD064', '2024-05-28 09:09:06', 144276, 'NV009', 'KH015', N'Bán lẻ', N'Hoàn tất', N'Tiền mặt');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD065', '2024-07-12 09:09:06', 149360, 'NV017', 'KH005', N'Bán lẻ', N'Chờ xử lý', N'Quẹt thẻ');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD066', '2024-09-10 09:09:06', 67567, 'NV008', 'KH021', N'Bán lẻ', N'Đã hủy', N'Tiền mặt');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD067', '2024-08-05 09:09:06', 245258, 'NV016', 'KH050', N'Bán sỉ', N'Chờ xử lý', N'Tiền mặt');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD068', '2025-02-27 09:09:06', 385747, 'NV017', 'KH027', N'Bán sỉ', N'Chờ xử lý', N'Tiền mặt');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD069', '2024-11-06 09:09:06', 477426, 'NV011', 'KH044', N'Bán lẻ', N'Chờ xử lý', N'Tiền mặt');
INSERT INTO dbo.HoaDon (maHD, ngayLap, tongTien, maNV, maKH, loaiGiaoDich, trangThai, phuongThucThanhToan)
VALUES ('HD070', '2024-11-04 09:09:06', 79656, 'NV011', 'KH009', N'Bán sỉ', N'Đã hủy', N'Chuyển khoản');

-- END OF 6. DataHoaDon.sql --

-- START OF 7. DataChiTietHoaDon.sql --
-- ======================= ChiTietHoaDon (Updated with donGiaBan) =======================
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD001', 'T025', 3, 3311, N'3 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD001', 'T082', 8, 10487, N'1 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD001', 'T189', 8, 5995, N'Trước bữa ăn 30 phút');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD001', 'T004', 9, 11211, N'2 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD002', 'T048', 10, 4570, N'Uống sau khi ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD002', 'T196', 7, 11647, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD002', 'T146', 3, 4494, N'2 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD002', 'T033', 7, 9193, N'Trước bữa ăn 30 phút');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD003', 'T021', 9, 4496, N'Uống sau khi ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD003', 'T148', 9, 2655, N'2 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD003', 'T065', 9, 11685, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD003', 'T010', 1, 9585, N'2 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD003', 'T122', 4, 6248, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD004', 'T021', 4, 4496, N'3 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD004', 'T174', 2, 10344, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD004', 'T057', 6, 8828, N'2 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD004', 'T143', 8, 9187, N'1 gói sau ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD004', 'T134', 9, 5535, N'3 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD005', 'T024', 6, 8999, N'1 viên sáng, 1 viên tối');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD005', 'T088', 1, 8965, N'3 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD005', 'T069', 8, 8073, N'3 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD005', 'T200', 2, 6650, N'1 viên x 2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD005', 'T010', 10, 9585, N'3 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD006', 'T174', 3, 10344, N'1 viên sáng, 1 viên tối');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD007', 'T194', 1, 4504, N'1 viên x 2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD007', 'T078', 9, 5093, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD007', 'T079', 10, 5035, N'1 viên x 2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD007', 'T005', 9, 4572, N'Uống sau khi ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD007', 'T117', 5, 6996, N'1 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD008', 'T200', 1, 6650, N'2 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD008', 'T135', 4, 8726, N'1 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD008', 'T170', 3, 5525, N'Trước bữa ăn 30 phút');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD008', 'T024', 5, 8999, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD009', 'T044', 3, 4295, N'1 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD009', 'T135', 5, 8726, N'Uống sau khi ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD009', 'T107', 3, 3884, N'1 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD010', 'T003', 6, 8973, N'3 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD011', 'T180', 5, 3550, N'1 viên sáng, 1 viên tối');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD011', 'T162', 4, 10567, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD011', 'T015', 8, 5939, N'1 viên sáng, 1 viên tối');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD011', 'T078', 3, 5093, N'1 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD011', 'T066', 4, 3829, N'1 viên x 2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD012', 'T144', 7, 4011, N'1 viên x 2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD012', 'T172', 9, 4767, N'Uống sau khi ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD012', 'T139', 8, 10261, N'1 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD013', 'T118', 6, 9328, N'2 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD013', 'T010', 1, 9585, N'3 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD013', 'T200', 10, 6650, N'1 gói sau ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD013', 'T181', 9, 5413, N'1 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD014', 'T199', 9, 7101, N'2 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD014', 'T009', 3, 7309, N'2 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD014', 'T198', 8, 7077, N'3 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD014', 'T021', 8, 4496, N'1 viên sáng, 1 viên tối');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD014', 'T075', 1, 9634, N'1 gói sau ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD015', 'T055', 6, 7586, N'1 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD016', 'T103', 10, 9826, N'Trước bữa ăn 30 phút');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD016', 'T195', 7, 6750, N'1 viên sáng, 1 viên tối');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD016', 'T159', 6, 11359, N'Trước bữa ăn 30 phút');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD016', 'T200', 8, 6650, N'1 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD017', 'T140', 4, 5952, N'1 viên x 2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD017', 'T190', 5, 4786, N'3 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD017', 'T046', 9, 5510, N'Trước bữa ăn 30 phút');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD017', 'T035', 1, 6943, N'Trước bữa ăn 30 phút');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD017', 'T162', 1, 10567, N'Trước bữa ăn 30 phút');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD018', 'T076', 3, 5780, N'1 viên x 2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD018', 'T195', 4, 6750, N'1 viên sáng, 1 viên tối');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD018', 'T117', 8, 6996, N'1 viên sáng, 1 viên tối');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD018', 'T069', 8, 8073, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD019', 'T154', 7, 12823, N'3 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD019', 'T087', 7, 4191, N'1 viên sáng, 1 viên tối');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD020', 'T193', 1, 4573, N'1 viên sáng, 1 viên tối');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD020', 'T048', 5, 4570, N'1 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD021', 'T031', 1, 8035, N'Trước bữa ăn 30 phút');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD021', 'T096', 3, 4232, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD021', 'T021', 8, 4496, N'3 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD021', 'T186', 9, 5602, N'1 gói sau ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD022', 'T156', 7, 6633, N'1 viên x 2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD022', 'T087', 8, 4191, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD022', 'T135', 8, 8726, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD023', 'T157', 6, 11557, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD023', 'T132', 4, 2243, N'1 viên sáng, 1 viên tối');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD023', 'T138', 1, 4617, N'Uống sau khi ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD024', 'T161', 10, 7433, N'1 gói sau ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD024', 'T004', 1, 11211, N'Uống sau khi ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD025', 'T177', 6, 6688, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD026', 'T109', 4, 7425, N'Trước bữa ăn 30 phút');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD026', 'T038', 5, 9935, N'3 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD026', 'T097', 6, 3334, N'Trước bữa ăn 30 phút');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD026', 'T104', 5, 10801, N'1 viên sáng, 1 viên tối');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD026', 'T010', 10, 9585, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD027', 'T036', 9, 4636, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD028', 'T187', 10, 6465, N'1 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD028', 'T030', 9, 9565, N'Uống sau khi ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD029', 'T028', 1, 8131, N'2 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD029', 'T014', 3, 7333, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD030', 'T134', 9, 5535, N'Uống sau khi ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD030', 'T168', 10, 6559, N'Uống sau khi ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD030', 'T037', 7, 6547, N'Trước bữa ăn 30 phút');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD031', 'T149', 1, 9146, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD031', 'T192', 9, 10727, N'2 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD031', 'T077', 9, 6526, N'1 viên sáng, 1 viên tối');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD031', 'T182', 10, 9811, N'Uống sau khi ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD032', 'T040', 7, 5617, N'3 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD032', 'T020', 2, 6074, N'1 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD033', 'T164', 6, 5456, N'Trước bữa ăn 30 phút');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD034', 'T192', 7, 10727, N'1 viên sáng, 1 viên tối');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD035', 'T078', 8, 5093, N'3 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD035', 'T110', 2, 11041, N'3 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD036', 'T197', 1, 5816, N'1 viên x 2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD036', 'T095', 9, 10891, N'1 viên x 2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD036', 'T062', 1, 8249, N'3 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD036', 'T046', 9, 5510, N'1 gói sau ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD037', 'T197', 1, 5816, N'1 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD037', 'T058', 8, 7257, N'1 gói sau ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD037', 'T079', 8, 5035, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD037', 'T172', 10, 4767, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD038', 'T199', 6, 7101, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD039', 'T006', 10, 9577, N'1 gói sau ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD039', 'T158', 8, 2238, N'Uống sau khi ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD039', 'T130', 4, 6162, N'2 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD040', 'T059', 7, 11735, N'2 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD040', 'T025', 5, 3311, N'1 viên sáng, 1 viên tối');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD040', 'T011', 5, 10474, N'1 gói sau ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD041', 'T050', 8, 6351, N'1 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD041', 'T134', 8, 5535, N'Uống sau khi ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD042', 'T032', 8, 5718, N'2 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD042', 'T012', 9, 11104, N'Trước bữa ăn 30 phút');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD042', 'T137', 10, 8334, N'3 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD043', 'T197', 7, 5816, N'1 gói sau ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD043', 'T175', 3, 6911, N'2 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD044', 'T053', 3, 5186, N'3 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD044', 'T152', 4, 2627, N'1 viên sáng, 1 viên tối');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD044', 'T120', 6, 5340, N'Uống sau khi ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD044', 'T099', 2, 8323, N'Trước bữa ăn 30 phút');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD045', 'T074', 7, 4908, N'1 viên x 2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD045', 'T039', 10, 8198, N'Uống sau khi ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD045', 'T103', 7, 9826, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD045', 'T118', 4, 9328, N'2 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD046', 'T174', 4, 10344, N'1 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD046', 'T179', 1, 4690, N'1 viên x 2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD046', 'T135', 5, 8726, N'1 viên x 2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD047', 'T049', 7, 12797, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD048', 'T179', 4, 4690, N'1 viên x 2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD049', 'T199', 2, 7101, N'1 gói sau ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD049', 'T081', 2, 12320, N'1 viên x 2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD049', 'T065', 5, 11685, N'Uống sau khi ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD049', 'T126', 8, 11214, N'1 gói sau ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD050', 'T047', 2, 4868, N'Trước bữa ăn 30 phút');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD050', 'T185', 4, 4863, N'3 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD050', 'T063', 9, 9358, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD051', 'T040', 8, 5617, N'1 viên sáng, 1 viên tối');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD051', 'T152', 3, 2627, N'Uống sau khi ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD052', 'T101', 1, 11788, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD052', 'T100', 10, 5006, N'1 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD053', 'T047', 10, 4868, N'Trước bữa ăn 30 phút');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD054', 'T084', 5, 3055, N'Uống sau khi ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD055', 'T110', 8, 11041, N'1 gói sau ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD056', 'T165', 5, 9775, N'1 viên x 2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD056', 'T018', 5, 2140, N'1 gói sau ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD056', 'T065', 3, 11685, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD056', 'T134', 5, 5535, N'1 viên x 2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD057', 'T156', 1, 6633, N'1 viên sáng, 1 viên tối');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD058', 'T086', 6, 7435, N'1 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD058', 'T126', 6, 11214, N'3 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD059', 'T077', 3, 6526, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD059', 'T073', 2, 7913, N'1 gói sau ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD059', 'T070', 4, 2935, N'1 viên x 2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD059', 'T188', 10, 8590, N'1 gói sau ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD060', 'T159', 10, 11359, N'1 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD060', 'T012', 5, 11104, N'Trước bữa ăn 30 phút');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD060', 'T093', 9, 10622, N'Uống sau khi ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD060', 'T167', 6, 7244, N'Trước bữa ăn 30 phút');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD060', 'T045', 6, 6105, N'1 gói sau ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD061', 'T117', 6, 6996, N'1 viên sáng, 1 viên tối');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD061', 'T131', 4, 3191, N'Uống sau khi ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD061', 'T039', 10, 8198, N'3 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD062', 'T181', 10, 5413, N'Uống sau khi ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD063', 'T145', 10, 6418, N'2 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD063', 'T092', 10, 11902, N'1 viên sáng, 1 viên tối');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD063', 'T054', 8, 8624, N'3 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD063', 'T008', 4, 10084, N'1 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD064', 'T158', 6, 2238, N'2 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD064', 'T076', 6, 5780, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD065', 'T015', 10, 5939, N'1 viên x 2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD065', 'T052', 2, 2863, N'Uống sau khi ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD065', 'T173', 6, 10935, N'Uống sau khi ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD065', 'T036', 6, 4636, N'1 viên sáng, 1 viên tối');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD066', 'T104', 9, 10801, N'1 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD066', 'T096', 2, 4232, N'1 viên x 2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD066', 'T159', 9, 11359, N'1 viên sáng, 1 viên tối');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD066', 'T200', 3, 6650, N'1 viên sáng, 1 viên tối');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD067', 'T186', 3, 5602, N'1 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD067', 'T134', 9, 5535, N'1 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD067', 'T049', 5, 12797, N'3 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD068', 'T098', 9, 3578, N'1 gói sau ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD068', 'T014', 10, 7333, N'Uống sau khi ăn');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD069', 'T083', 4, 6650, N'3 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD069', 'T080', 2, 5870, N'1 viên x 2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD070', 'T089', 1, 7491, N'2 viên/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD070', 'T141', 10, 11192, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD070', 'T134', 3, 5535, N'1 viên x 2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD070', 'T197', 5, 5816, N'2 lần/ngày');
INSERT INTO dbo.ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan, lieuLuong)
VALUES ('HD070', 'T063', 2, 9358, N'Uống sau khi ăn');
-- END OF 7. DataChiTietHoaDon.sql --

-- START OF 8. DataPhieuNhap.sql --
-- ======================= PhieuNhap =======================
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN001', '2024-11-09 09:21:49', 'NV004', 'NCC008', N'Nhập lô hàng mới');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN002', '2025-01-03 09:21:49', 'NV001', 'NCC021', N'Bổ sung tồn kho');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN003', '2025-03-15 09:21:49', 'NV010', 'NCC017', N'Nhập lô hàng mới');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN004', '2025-03-01 09:21:49', 'NV007', 'NCC011', N'Nhập theo đơn đặt hàng');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN005', '2025-01-06 09:21:49', 'NV001', 'NCC013', N'Nhập lô hàng mới');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN006', '2025-01-03 09:21:49', 'NV003', 'NCC005', N'Nhập lô hàng mới');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN007', '2024-12-27 09:21:49', 'NV008', 'NCC030', N'Nhập lô hàng mới');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN008', '2025-01-14 09:21:49', 'NV012', 'NCC011', N'Nhập lô hàng mới');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN009', '2024-10-10 09:21:49', 'NV018', 'NCC002', N'Nhập theo đơn đặt hàng');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN010', '2025-03-20 09:21:49', 'NV001', 'NCC004', N'Bổ sung tồn kho');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN011', '2024-11-11 09:21:49', 'NV012', 'NCC011', N'Bổ sung tồn kho');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN012', '2024-11-12 09:21:49', 'NV006', 'NCC022', N'Nhập theo đơn đặt hàng');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN013', '2024-12-11 09:21:49', 'NV001', 'NCC026', N'Nhập theo đơn đặt hàng');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN014', '2025-02-06 09:21:49', 'NV015', 'NCC013', N'Nhập theo đơn đặt hàng');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN015', '2025-03-08 09:21:49', 'NV007', 'NCC024', N'Nhập theo đơn đặt hàng');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN016', '2025-03-20 09:21:49', 'NV003', 'NCC004', N'Bổ sung tồn kho');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN017', '2024-09-30 09:21:49', 'NV007', 'NCC006', N'Bổ sung tồn kho');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN018', '2024-10-14 09:21:49', 'NV005', 'NCC015', N'Nhập theo đơn đặt hàng');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN019', '2024-12-22 09:21:49', 'NV013', 'NCC014', N'Nhập lô hàng mới');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN020', '2024-11-08 09:21:49', 'NV013', 'NCC016', N'Nhập lô hàng mới');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN021', '2025-01-15 09:21:49', 'NV010', 'NCC024', N'Nhập lô hàng mới');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN022', '2025-03-15 09:21:49', 'NV012', 'NCC002', N'Bổ sung tồn kho');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN023', '2025-03-04 09:21:49', 'NV005', 'NCC013', N'Bổ sung tồn kho');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN024', '2024-11-24 09:21:49', 'NV001', 'NCC029', N'Nhập lô hàng mới');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN025', '2024-12-27 09:21:49', 'NV002', 'NCC025', N'Nhập theo đơn đặt hàng');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN026', '2024-10-04 09:21:49', 'NV019', 'NCC007', N'Nhập theo đơn đặt hàng');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN027', '2025-02-14 09:21:49', 'NV002', 'NCC029', N'Bổ sung tồn kho');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN028', '2024-12-23 09:21:49', 'NV010', 'NCC016', N'Bổ sung tồn kho');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN029', '2025-02-12 09:21:49', 'NV001', 'NCC027', N'Bổ sung tồn kho');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN030', '2025-01-10 09:21:49', 'NV006', 'NCC011', N'Nhập theo đơn đặt hàng');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN031', '2024-12-17 09:21:49', 'NV004', 'NCC007', N'Nhập theo đơn đặt hàng');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN032', '2025-02-13 09:21:49', 'NV007', 'NCC029', N'Bổ sung tồn kho');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN033', '2024-10-14 09:21:49', 'NV014', 'NCC006', N'Bổ sung tồn kho');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN034', '2024-11-09 09:21:49', 'NV004', 'NCC020', N'Nhập lô hàng mới');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN035', '2025-02-10 09:21:49', 'NV008', 'NCC028', N'Nhập theo đơn đặt hàng');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN036', '2025-01-05 09:21:49', 'NV019', 'NCC001', N'Bổ sung tồn kho');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN037', '2025-02-06 09:21:49', 'NV013', 'NCC020', N'Bổ sung tồn kho');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN038', '2025-02-14 09:21:49', 'NV019', 'NCC024', N'Nhập theo đơn đặt hàng');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN039', '2024-12-15 09:21:49', 'NV006', 'NCC017', N'Nhập theo đơn đặt hàng');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN040', '2024-10-11 09:21:49', 'NV019', 'NCC021', N'Nhập theo đơn đặt hàng');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN041', '2025-03-05 09:21:49', 'NV016', 'NCC029', N'Nhập theo đơn đặt hàng');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN042', '2025-02-11 09:21:49', 'NV009', 'NCC007', N'Nhập lô hàng mới');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN043', '2024-10-25 09:21:49', 'NV004', 'NCC005', N'Nhập lô hàng mới');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN044', '2025-02-05 09:21:49', 'NV017', 'NCC026', N'Nhập lô hàng mới');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN045', '2025-03-18 09:21:49', 'NV015', 'NCC014', N'Nhập theo đơn đặt hàng');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN046', '2024-12-21 09:21:49', 'NV008', 'NCC024', N'Nhập theo đơn đặt hàng');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN047', '2025-02-10 09:21:49', 'NV010', 'NCC021', N'Nhập lô hàng mới');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN048', '2025-02-09 09:21:49', 'NV017', 'NCC015', N'Nhập theo đơn đặt hàng');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN049', '2024-10-25 09:21:49', 'NV001', 'NCC022', N'Bổ sung tồn kho');
INSERT INTO dbo.PhieuNhap (maPN, ngayNhap, maNV, maNCC, ghiChu)
VALUES ('PN050', '2025-03-05 09:21:49', 'NV009', 'NCC009', N'Nhập theo đơn đặt hàng');

-- END OF 8. DataPhieuNhap.sql --

-- START OF 9. DataChiTietPhieuNhap.sql --
-- ======================= ChiTietPhieuNhap (Updated with donGiaNhap) =======================
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN001', 'T152', 214, 1621);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN001', 'T070', 95, 1182);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN001', 'T111', 164, 7131);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN001', 'T174', 118, 8453);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN002', 'T139', 208, 9406);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN002', 'T158', 127, 1415);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN002', 'T039', 498, 7290);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN002', 'T017', 470, 4388);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN003', 'T018', 474, 1547);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN003', 'T080', 69, 3564);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN003', 'T102', 321, 4485);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN003', 'T192', 98, 8948);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN004', 'T103', 400, 9049);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN004', 'T115', 397, 6068);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN004', 'T031', 339, 5038);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN004', 'T056', 157, 1762);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN004', 'T026', 161, 8507);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN005', 'T178', 456, 9242);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN005', 'T056', 118, 1762);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN005', 'T045', 51, 3823);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN006', 'T184', 325, 9200);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN006', 'T127', 392, 2904);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN007', 'T093', 334, 9285);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN007', 'T008', 464, 7508);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN007', 'T126', 105, 8914);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN007', 'T004', 327, 9665);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN007', 'T076', 256, 4080);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN007', 'T013', 365, 9899);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN008', 'T115', 404, 6068);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN008', 'T075', 223, 8205);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN008', 'T152', 499, 1621);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN008', 'T007', 423, 3066);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN009', 'T123', 444, 5537);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN009', 'T131', 61, 1367);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN009', 'T120', 405, 2853);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN010', 'T014', 346, 6457);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN010', 'T054', 437, 6418);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN010', 'T097', 94, 1450);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN010', 'T179', 268, 3524);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN011', 'T192', 494, 8948);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN011', 'T060', 246, 8960);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN011', 'T106', 488, 5915);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN012', 'T179', 395, 3524);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN012', 'T178', 152, 9242);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN013', 'T101', 180, 9401);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN013', 'T157', 402, 9545);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN013', 'T092', 193, 9436);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN013', 'T137', 111, 7330);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN014', 'T078', 497, 2191);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN014', 'T001', 397, 4317);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN015', 'T133', 413, 5463);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN015', 'T055', 471, 5546);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN015', 'T145', 165, 4358);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN015', 'T077', 179, 5270);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN015', 'T046', 499, 4898);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN016', 'T057', 64, 7468);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN016', 'T080', 467, 3564);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN016', 'T139', 444, 9406);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN016', 'T158', 405, 1415);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN016', 'T029', 269, 5452);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN016', 'T144', 214, 1386);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN017', 'T041', 140, 3113);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN017', 'T056', 228, 1762);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN017', 'T188', 491, 6701);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN017', 'T045', 364, 3823);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN018', 'T007', 318, 3066);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN018', 'T148', 500, 1559);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN018', 'T170', 213, 3711);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN018', 'T091', 431, 6952);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN018', 'T054', 105, 6418);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN018', 'T130', 471, 5512);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN019', 'T147', 156, 5244);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN019', 'T154', 500, 9875);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN020', 'T060', 387, 8960);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN020', 'T083', 156, 4535);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN020', 'T121', 93, 2358);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN020', 'T140', 127, 4881);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN021', 'T179', 111, 3524);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN021', 'T002', 84, 6231);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN021', 'T136', 160, 7560);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN021', 'T111', 61, 7131);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN021', 'T081', 271, 9937);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN022', 'T107', 217, 2592);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN022', 'T171', 237, 9092);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN022', 'T103', 127, 9049);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN022', 'T147', 234, 5244);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN022', 'T045', 249, 3823);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN023', 'T083', 138, 4535);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN023', 'T059', 288, 9653);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN024', 'T027', 202, 1240);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN024', 'T016', 109, 4411);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN024', 'T097', 267, 1450);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN024', 'T105', 382, 2366);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN024', 'T030', 86, 7110);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN025', 'T163', 105, 9744);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN025', 'T055', 366, 5546);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN025', 'T077', 156, 5270);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN025', 'T158', 100, 1415);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN026', 'T159', 400, 8780);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN026', 'T100', 100, 3505);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN027', 'T161', 118, 4486);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN027', 'T051', 263, 7115);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN027', 'T052', 270, 1678);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN028', 'T196', 369, 9300);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN028', 'T168', 375, 5364);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN029', 'T094', 439, 9726);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN029', 'T056', 344, 1762);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN030', 'T065', 376, 9537);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN030', 'T198', 54, 6228);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN031', 'T109', 487, 6662);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN031', 'T002', 208, 6231);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN031', 'T106', 76, 5915);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN031', 'T074', 233, 3333);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN031', 'T031', 485, 5038);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN032', 'T178', 131, 9242);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN032', 'T060', 268, 8960);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN032', 'T109', 468, 6662);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN032', 'T084', 484, 1706);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN032', 'T072', 428, 5258);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN032', 'T100', 336, 3505);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN033', 'T109', 209, 6662);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN033', 'T115', 271, 6068);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN033', 'T111', 151, 7131);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN033', 'T095', 316, 8472);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN033', 'T036', 370, 3323);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN034', 'T035', 180, 6077);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN034', 'T141', 96, 8582);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN034', 'T087', 492, 3405);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN034', 'T036', 461, 3323);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN034', 'T015', 453, 5193);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN035', 'T193', 103, 2978);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN035', 'T083', 190, 4535);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN035', 'T165', 260, 7962);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN036', 'T065', 359, 9537);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN036', 'T144', 278, 1386);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN037', 'T032', 458, 3423);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN037', 'T096', 86, 1288);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN037', 'T112', 133, 9346);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN037', 'T129', 221, 1290);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN037', 'T183', 444, 8159);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN037', 'T195', 404, 6086);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN038', 'T012', 172, 8993);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN038', 'T131', 349, 1367);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN039', 'T045', 71, 3823);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN039', 'T127', 57, 2904);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN039', 'T195', 110, 6086);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN039', 'T005', 132, 2127);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN040', 'T051', 430, 7115);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN040', 'T024', 412, 7502);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN040', 'T200', 464, 4664);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN040', 'T159', 428, 8780);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN040', 'T061', 218, 1788);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN040', 'T080', 216, 3564);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN041', 'T047', 187, 3963);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN041', 'T045', 182, 3823);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN041', 'T161', 385, 4486);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN042', 'T102', 52, 4485);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN042', 'T011', 130, 9045);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN043', 'T027', 203, 1240);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN043', 'T030', 463, 7110);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN043', 'T086', 214, 5426);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN043', 'T067', 189, 1757);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN043', 'T187', 156, 3936);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN043', 'T020', 489, 5458);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN044', 'T028', 53, 5569);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN044', 'T112', 50, 9346);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN044', 'T162', 367, 8696);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN044', 'T157', 481, 9545);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN045', 'T183', 219, 8159);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN045', 'T181', 315, 2534);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN045', 'T014', 329, 6457);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN045', 'T037', 68, 4874);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN046', 'T058', 90, 5104);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN046', 'T194', 435, 1665);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN046', 'T024', 179, 7502);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN046', 'T122', 328, 4486);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN046', 'T002', 436, 6231);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN046', 'T097', 183, 1450);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN047', 'T054', 493, 6418);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN047', 'T187', 255, 3936);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN047', 'T129', 499, 1290);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN048', 'T054', 304, 6418);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN048', 'T144', 378, 1386);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN048', 'T164', 414, 4346);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN048', 'T098', 263, 2798);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN049', 'T043', 458, 3078);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN049', 'T136', 486, 7560);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN049', 'T082', 434, 8292);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN049', 'T040', 153, 3803);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN049', 'T126', 315, 8914);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN050', 'T007', 361, 3066);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN050', 'T199', 85, 5134);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN050', 'T051', 192, 7115);
INSERT INTO dbo.ChiTietPhieuNhap (maPN, maThuoc, soLuong, donGiaNhap)
VALUES ('PN050', 'T149', 244, 7074);
-- END OF 9. DataChiTietPhieuNhap.sql --


-- START OF 10. DataPhieuDatHang.sql --
-- ======================= PhieuDatHang =======================
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH001', '2025-03-19 09:25:48', 'NV007', 'KH018', NULL, N'Đã xác nhận');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH002', '2025-03-12 09:25:48', 'NV019', 'KH035', NULL, N'Hoàn tất');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH003', '2025-02-03 09:25:48', 'NV010', 'KH044', NULL, N'Hoàn tất');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH004', '2025-03-19 09:25:48', 'NV003', 'KH015', NULL, N'Đã xác nhận');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH005', '2025-01-27 09:25:48', 'NV012', 'KH013', NULL, N'Chờ xác nhận');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH006', '2025-01-03 09:25:48', 'NV015', 'KH034', NULL, N'Chờ xác nhận');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH007', '2025-01-05 09:25:48', 'NV007', 'KH011', NULL, N'Chờ xác nhận');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH008', '2025-02-14 09:25:48', 'NV010', 'KH010', NULL, N'Đã hủy');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH009', '2025-03-23 09:25:48', 'NV011', 'KH032', NULL, N'Chờ xác nhận');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH010', '2025-01-25 09:25:48', 'NV020', 'KH008', NULL, N'Đang giao');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH011', '2025-03-08 09:25:48', 'NV003', 'KH014', NULL, N'Chờ xác nhận');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH012', '2025-03-22 09:25:48', 'NV011', 'KH004', NULL, N'Chờ xác nhận');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH013', '2025-03-25 09:25:48', 'NV020', 'KH027', NULL, N'Đã hủy');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH014', '2025-01-13 09:25:48', 'NV019', 'KH013', NULL, N'Chờ xác nhận');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH015', '2025-01-16 09:25:48', 'NV007', 'KH025', NULL, N'Đã hủy');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH016', '2025-01-02 09:25:48', 'NV007', 'KH033', NULL, N'Hoàn tất');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH017', '2025-01-29 09:25:48', 'NV004', 'KH033', NULL, N'Đang giao');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH018', '2025-02-12 09:25:48', 'NV009', 'KH008', NULL, N'Hoàn tất');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH019', '2025-01-19 09:25:48', 'NV009', 'KH038', NULL, N'Đã hủy');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH020', '2025-03-19 09:25:48', 'NV004', 'KH035', NULL, N'Hoàn tất');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH021', '2025-03-05 09:25:48', 'NV017', 'KH026', NULL, N'Đã xác nhận');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH022', '2025-01-18 09:25:48', 'NV002', 'KH019', NULL, N'Hoàn tất');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH023', '2025-03-25 09:25:48', 'NV009', 'KH026', NULL, N'Đang giao');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH024', '2025-01-16 09:25:48', 'NV003', 'KH015', NULL, N'Đã hủy');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH025', '2025-03-20 09:25:48', 'NV005', 'KH048', NULL, N'Đang giao');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH026', '2025-03-18 09:25:48', 'NV010', 'KH026', NULL, N'Đã xác nhận');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH027', '2025-02-11 09:25:48', 'NV016', 'KH044', NULL, N'Hoàn tất');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH028', '2025-03-14 09:25:48', 'NV007', 'KH028', NULL, N'Đã xác nhận');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH029', '2025-03-02 09:25:48', 'NV010', 'KH049', NULL, N'Chờ xác nhận');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH030', '2025-01-14 09:25:48', 'NV013', 'KH004', NULL, N'Đã hủy');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH031', '2025-01-27 09:25:48', 'NV009', 'KH001', NULL, N'Chờ xác nhận');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH032', '2025-01-27 09:25:48', 'NV013', 'KH040', NULL, N'Đã xác nhận');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH033', '2025-02-18 09:25:48', 'NV007', 'KH025', NULL, N'Đã xác nhận');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH034', '2025-01-15 09:25:48', 'NV018', 'KH006', NULL, N'Hoàn tất');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH035', '2025-01-15 09:25:48', 'NV003', 'KH004', NULL, N'Đang giao');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH036', '2025-02-07 09:25:48', 'NV015', 'KH013', NULL, N'Hoàn tất');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH037', '2025-01-09 09:25:48', 'NV004', 'KH040', NULL, N'Đã hủy');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH038', '2025-01-15 09:25:48', 'NV013', 'KH032', NULL, N'Đang giao');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH039', '2025-01-28 09:25:48', 'NV013', 'KH040', NULL, N'Đã xác nhận');
INSERT INTO dbo.PhieuDatHang (maPDH, ngayDat, maNV, maKH, maNCC, trangThai)
VALUES ('PDH040', '2025-01-31 09:25:48', 'NV006', 'KH025', NULL, N'Đã hủy');

-- END OF 10. DataPhieuDatHang.sql --

-- START OF 11. DataChiTietPhieuDatHang.sql --
-- ======================= ChiTietPhieuDatHang =======================
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH001', 'T082', 31, N'Cần nhập gấp');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH001', 'T079', 24, N'Khách đặt mua trước');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH001', 'T183', 45, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH001', 'T085', 31, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH001', 'T051', 31, N'Yêu cầu đặt riêng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH002', 'T014', 31, N'Cần nhập gấp');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH002', 'T143', 36, N'Cần nhập gấp');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH002', 'T129', 23, N'Cần nhập gấp');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH003', 'T175', 46, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH003', 'T130', 21, N'Đặt do thiếu hàng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH004', 'T057', 44, N'Khách đặt mua trước');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH004', 'T051', 21, N'Đặt do thiếu hàng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH004', 'T034', 25, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH004', 'T121', 37, N'Khách đặt mua trước');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH005', 'T015', 39, N'Khách đặt mua trước');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH005', 'T058', 30, N'Yêu cầu đặt riêng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH005', 'T012', 7, N'Yêu cầu đặt riêng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH005', 'T030', 49, N'Đặt do thiếu hàng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH006', 'T070', 39, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH006', 'T183', 17, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH006', 'T200', 49, N'Cần nhập gấp');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH007', 'T085', 11, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH007', 'T185', 42, N'Cần nhập gấp');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH007', 'T148', 25, N'Yêu cầu đặt riêng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH008', 'T049', 30, N'Khách đặt mua trước');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH008', 'T060', 40, N'Yêu cầu đặt riêng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH008', 'T018', 47, N'Hết tồn kho');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH008', 'T035', 7, N'Khách đặt mua trước');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH009', 'T099', 17, N'Khách đặt mua trước');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH009', 'T035', 43, N'Đặt do thiếu hàng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH009', 'T167', 18, N'Hết tồn kho');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH010', 'T196', 32, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH010', 'T097', 10, N'Khách đặt mua trước');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH010', 'T040', 39, N'Yêu cầu đặt riêng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH010', 'T090', 13, N'Đặt do thiếu hàng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH011', 'T191', 20, N'Khách đặt mua trước');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH011', 'T131', 46, N'Hết tồn kho');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH011', 'T009', 9, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH012', 'T096', 49, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH012', 'T083', 41, N'Khách đặt mua trước');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH012', 'T122', 14, N'Cần nhập gấp');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH012', 'T002', 10, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH013', 'T045', 27, N'Yêu cầu đặt riêng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH013', 'T194', 39, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH013', 'T014', 5, N'Yêu cầu đặt riêng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH013', 'T049', 41, N'Khách đặt mua trước');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH013', 'T144', 44, N'Yêu cầu đặt riêng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH014', 'T169', 31, N'Đặt do thiếu hàng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH014', 'T194', 39, N'Yêu cầu đặt riêng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH014', 'T051', 18, N'Hết tồn kho');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH014', 'T188', 43, N'Cần nhập gấp');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH015', 'T089', 34, N'Cần nhập gấp');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH015', 'T066', 14, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH015', 'T052', 6, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH016', 'T116', 8, N'Hết tồn kho');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH016', 'T140', 20, N'Hết tồn kho');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH016', 'T136', 45, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH016', 'T157', 23, N'Đặt do thiếu hàng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH017', 'T046', 50, N'Cần nhập gấp');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH017', 'T072', 39, N'Khách đặt mua trước');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH017', 'T012', 20, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH018', 'T014', 20, N'Khách đặt mua trước');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH018', 'T015', 30, N'Yêu cầu đặt riêng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH018', 'T007', 40, N'Đặt do thiếu hàng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH018', 'T111', 41, N'Hết tồn kho');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH018', 'T047', 39, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH019', 'T083', 7, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH019', 'T099', 45, N'Hết tồn kho');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH019', 'T001', 9, N'Hết tồn kho');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH019', 'T073', 6, N'Khách đặt mua trước');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH020', 'T111', 49, N'Yêu cầu đặt riêng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH020', 'T055', 37, N'Cần nhập gấp');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH020', 'T177', 41, N'Hết tồn kho');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH021', 'T096', 25, N'Khách đặt mua trước');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH021', 'T188', 30, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH022', 'T083', 49, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH022', 'T058', 44, N'Yêu cầu đặt riêng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH022', 'T070', 12, N'Khách đặt mua trước');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH023', 'T002', 27, N'Hết tồn kho');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH023', 'T040', 29, N'Khách đặt mua trước');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH024', 'T195', 39, N'Hết tồn kho');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH024', 'T169', 39, N'Khách đặt mua trước');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH025', 'T134', 44, N'Hết tồn kho');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH025', 'T065', 9, N'Đặt do thiếu hàng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH025', 'T109', 15, N'Hết tồn kho');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH025', 'T115', 22, N'Yêu cầu đặt riêng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH026', 'T112', 25, N'Hết tồn kho');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH026', 'T108', 37, N'Cần nhập gấp');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH026', 'T192', 46, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH027', 'T196', 48, N'Cần nhập gấp');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH027', 'T028', 46, N'Cần nhập gấp');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH027', 'T035', 15, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH028', 'T167', 28, N'Hết tồn kho');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH028', 'T109', 32, N'Cần nhập gấp');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH028', 'T164', 35, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH028', 'T083', 10, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH028', 'T048', 20, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH029', 'T006', 13, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH029', 'T008', 32, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH030', 'T129', 7, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH030', 'T166', 47, N'Cần nhập gấp');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH030', 'T137', 29, N'Hết tồn kho');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH030', 'T121', 28, N'Yêu cầu đặt riêng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH031', 'T152', 16, N'Cần nhập gấp');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH031', 'T072', 28, N'Yêu cầu đặt riêng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH031', 'T012', 20, N'Hết tồn kho');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH032', 'T112', 18, N'Hết tồn kho');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH032', 'T074', 22, N'Hết tồn kho');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH032', 'T197', 27, N'Hết tồn kho');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH033', 'T093', 7, N'Cần nhập gấp');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH033', 'T020', 32, N'Khách đặt mua trước');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH034', 'T090', 48, N'Hết tồn kho');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH034', 'T039', 22, N'Cần nhập gấp');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH034', 'T110', 49, N'Khách đặt mua trước');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH034', 'T082', 14, N'Hết tồn kho');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH034', 'T109', 8, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH035', 'T174', 35, N'Cần nhập gấp');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH035', 'T157', 13, N'Cần nhập gấp');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH035', 'T078', 36, N'Hết tồn kho');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH036', 'T147', 32, N'Khách đặt mua trước');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH036', 'T128', 12, N'Đặt do thiếu hàng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH036', 'T023', 19, N'Đặt số lượng lớn');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH036', 'T163', 15, N'Khách đặt mua trước');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH036', 'T012', 8, N'Yêu cầu đặt riêng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH037', 'T031', 30, N'Đặt do thiếu hàng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH037', 'T117', 21, N'Cần nhập gấp');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH038', 'T089', 40, N'Khách đặt mua trước');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH038', 'T166', 35, N'Khách đặt mua trước');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH038', 'T175', 16, N'Đặt do thiếu hàng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH038', 'T042', 36, N'Yêu cầu đặt riêng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH039', 'T020', 48, N'Yêu cầu đặt riêng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH039', 'T030', 12, N'Yêu cầu đặt riêng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH039', 'T123', 49, N'Đặt do thiếu hàng');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH040', 'T122', 8, N'Khách đặt mua trước');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH040', 'T062', 30, N'Hết tồn kho');
INSERT INTO dbo.ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, ghiChu)
VALUES ('PDH040', 'T051', 6, N'Khách đặt mua trước');


-- END OF 11. DataChiTietPhieuDatHang.sql --

-- START OF 12. DataLoaiThuChi.sql --
-- ======================= LoaiThuChi =======================
INSERT INTO dbo.LoaiThuChi (tenLoai, loaiPhieu)
VALUES (N'Thu tiền bán thuốc', N'Thu');
INSERT INTO dbo.LoaiThuChi (tenLoai, loaiPhieu)
VALUES (N'Chi mua hàng', N'Chi');
INSERT INTO dbo.LoaiThuChi (tenLoai, loaiPhieu)
VALUES (N'Chi trả lương nhân viên', N'Chi');
INSERT INTO dbo.LoaiThuChi (tenLoai, loaiPhieu)
VALUES (N'Chi phí vận chuyển', N'Chi');
INSERT INTO dbo.LoaiThuChi (tenLoai, loaiPhieu)
VALUES (N'Chi quảng cáo khuyến mãi', N'Chi');
INSERT INTO dbo.LoaiThuChi (tenLoai, loaiPhieu)
VALUES (N'Thu hoàn tiền khách trả thuốc', N'Thu');
INSERT INTO dbo.LoaiThuChi (tenLoai, loaiPhieu)
VALUES (N'Thu từ đối tác phân phối', N'Thu');
INSERT INTO dbo.LoaiThuChi (tenLoai, loaiPhieu)
VALUES (N'Chi phí bảo trì phần mềm', N'Chi');
INSERT INTO dbo.LoaiThuChi (tenLoai, loaiPhieu)
VALUES (N'Chi mua trang thiết bị', N'Chi');
INSERT INTO dbo.LoaiThuChi (tenLoai, loaiPhieu)
VALUES (N'Thu hỗ trợ từ công ty mẹ', N'Thu');

-- END OF 12. DataLoaiThuChi.sql --

-- START OF 13. DataPhieuThuChi.sql --
-- ======================= PhieuThuChi =======================
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC001', '2025-02-07 09:39:25', N'Chi', 3, N'POS/Quẹt thẻ', 4247971, N'Không rõ', N'Thu tiền khách hàng', 'NV020');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC002', '2025-02-01 09:39:25', N'Chi', 8, N'Chuyển khoản', 1473939, N'Không rõ', N'Chi mua hàng', 'NV011');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC003', '2024-12-27 09:39:25', N'Chi', 2, N'POS/Quẹt thẻ', 340763, N'Không rõ', N'Thu tiền khách hàng', 'NV011');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC004', '2024-12-22 09:39:25', N'Thu', 6, N'POS/Quẹt thẻ', 514020, N'Không rõ', N'Chi khuyến mãi', 'NV015');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC005', '2024-12-02 09:39:25', N'Chi', 4, N'POS/Quẹt thẻ', 665796, N'Không rõ', N'Chi phí vận chuyển', 'NV001');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC006', '2025-02-17 09:39:25', N'Thu', 6, N'POS/Quẹt thẻ', 3449709, N'Không rõ', N'Thu từ đối tác', 'NV019');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC007', '2025-02-23 09:39:25', N'Chi', 3, N'Tiền mặt', 4065656, N'Không rõ', N'Chi mua hàng', 'NV017');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC008', '2025-03-16 09:39:25', N'Chi', 3, N'Chuyển khoản', 424034, N'Không rõ', N'Chi phí bảo trì', 'NV009');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC009', '2025-01-26 09:39:25', N'Thu', 1, N'Tiền mặt', 295761, N'Không rõ', N'Thu từ đối tác', 'NV019');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC010', '2025-01-26 09:39:25', N'Thu', 10, N'Chuyển khoản', 4719091, N'Không rõ', N'Chi lương nhân viên', 'NV011');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC011', '2024-12-20 09:39:25', N'Thu', 10, N'Tiền mặt', 2455538, N'Không rõ', N'Chi khuyến mãi', 'NV011');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC012', '2024-12-29 09:39:25', N'Chi', 3, N'Chuyển khoản', 445354, N'Không rõ', N'Chi khuyến mãi', 'NV012');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC013', '2025-03-09 09:39:25', N'Thu', 10, N'POS/Quẹt thẻ', 1953862, N'Không rõ', N'Chi lương nhân viên', 'NV020');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC014', '2025-01-13 09:39:25', N'Thu', 6, N'Chuyển khoản', 2414078, N'Không rõ', N'Chi khuyến mãi', 'NV011');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC015', '2024-12-24 09:39:25', N'Thu', 6, N'Chuyển khoản', 3531619, N'Không rõ', N'Thu từ đối tác', 'NV002');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC016', '2025-01-01 09:39:25', N'Chi', 2, N'Tiền mặt', 1629123, N'Không rõ', N'Thu từ đối tác', 'NV012');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC017', '2025-01-04 09:39:25', N'Thu', 7, N'Chuyển khoản', 2399418, N'Không rõ', N'Chi phí bảo trì', 'NV003');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC018', '2024-12-12 09:39:25', N'Thu', 6, N'POS/Quẹt thẻ', 579640, N'Không rõ', N'Thu tiền khách hàng', 'NV015');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC019', '2025-02-15 09:39:25', N'Chi', 8, N'Tiền mặt', 3038728, N'Không rõ', N'Chi lương nhân viên', 'NV007');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC020', '2024-12-31 09:39:25', N'Thu', 10, N'POS/Quẹt thẻ', 3541306, N'Không rõ', N'Chi mua hàng', 'NV014');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC021', '2025-01-17 09:39:25', N'Thu', 1, N'Chuyển khoản', 772269, N'Không rõ', N'Chi mua hàng', 'NV016');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC022', '2024-12-06 09:39:25', N'Chi', 2, N'POS/Quẹt thẻ', 4209223, N'Không rõ', N'Thu tiền khách hàng', 'NV018');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC023', '2025-03-24 09:39:25', N'Thu', 7, N'Tiền mặt', 1455420, N'Không rõ', N'Chi khuyến mãi', 'NV008');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC024', '2025-01-01 09:39:25', N'Thu', 10, N'Tiền mặt', 352544, N'Không rõ', N'Thu tiền khách hàng', 'NV016');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC025', '2024-12-18 09:39:25', N'Thu', 10, N'Chuyển khoản', 4889948, N'Không rõ', N'Chi lương nhân viên', 'NV007');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC026', '2025-03-22 09:39:25', N'Thu', 1, N'POS/Quẹt thẻ', 2313201, N'Không rõ', N'Chi phí vận chuyển', 'NV013');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC027', '2025-03-23 09:39:25', N'Chi', 3, N'Chuyển khoản', 3448995, N'Không rõ', N'Chi khuyến mãi', 'NV016');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC028', '2025-01-05 09:39:25', N'Chi', 4, N'Chuyển khoản', 1777722, N'Không rõ', N'Chi phí bảo trì', 'NV019');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC029', '2025-01-01 09:39:25', N'Chi', 8, N'Chuyển khoản', 2467010, N'Không rõ', N'Chi lương nhân viên', 'NV009');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC030', '2024-12-06 09:39:25', N'Chi', 3, N'Tiền mặt', 2493563, N'Không rõ', N'Chi lương nhân viên', 'NV001');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC031', '2025-03-01 09:39:25', N'Chi', 5, N'POS/Quẹt thẻ', 3956792, N'Không rõ', N'Chi phí vận chuyển', 'NV005');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC032', '2025-01-13 09:39:25', N'Chi', 5, N'Tiền mặt', 3502984, N'Không rõ', N'Thu tiền khách hàng', 'NV004');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC033', '2025-02-07 09:39:25', N'Chi', 4, N'POS/Quẹt thẻ', 4545570, N'Không rõ', N'Chi mua hàng', 'NV014');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC034', '2025-01-26 09:39:25', N'Chi', 5, N'Tiền mặt', 971527, N'Không rõ', N'Chi khuyến mãi', 'NV002');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC035', '2024-12-11 09:39:25', N'Chi', 3, N'Tiền mặt', 3348536, N'Không rõ', N'Chi khuyến mãi', 'NV003');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC036', '2025-01-24 09:39:25', N'Thu', 1, N'Chuyển khoản', 3258741, N'Không rõ', N'Chi mua hàng', 'NV001');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC037', '2025-03-14 09:39:25', N'Thu', 6, N'POS/Quẹt thẻ', 2154745, N'Không rõ', N'Chi phí vận chuyển', 'NV014');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC038', '2024-12-20 09:39:25', N'Chi', 9, N'Chuyển khoản', 103707, N'Không rõ', N'Chi phí vận chuyển', 'NV017');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC039', '2025-02-06 09:39:25', N'Chi', 2, N'POS/Quẹt thẻ', 514959, N'Không rõ', N'Chi khuyến mãi', 'NV020');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC040', '2025-03-03 09:39:25', N'Chi', 3, N'POS/Quẹt thẻ', 318499, N'Không rõ', N'Thu tiền khách hàng', 'NV001');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC041', '2024-12-18 09:39:25', N'Thu', 6, N'Chuyển khoản', 2990614, N'Không rõ', N'Chi lương nhân viên', 'NV009');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC042', '2024-12-01 09:39:25', N'Chi', 5, N'Chuyển khoản', 3903019, N'Không rõ', N'Thu tiền khách hàng', 'NV003');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC043', '2025-03-04 09:39:25', N'Thu', 1, N'Chuyển khoản', 1107973, N'Không rõ', N'Chi khuyến mãi', 'NV007');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC044', '2024-12-23 09:39:25', N'Thu', 1, N'Chuyển khoản', 2943389, N'Không rõ', N'Chi mua hàng', 'NV008');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC045', '2025-01-01 09:39:25', N'Thu', 6, N'POS/Quẹt thẻ', 3299409, N'Không rõ', N'Chi khuyến mãi', 'NV008');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC046', '2025-02-20 09:39:25', N'Chi', 9, N'Chuyển khoản', 4736807, N'Không rõ', N'Chi khuyến mãi', 'NV011');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC047', '2024-12-18 09:39:25', N'Thu', 6, N'POS/Quẹt thẻ', 1330454, N'Không rõ', N'Chi mua hàng', 'NV019');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC048', '2025-03-09 09:39:25', N'Chi', 4, N'Tiền mặt', 3767379, N'Không rõ', N'Chi mua hàng', 'NV016');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC049', '2024-12-16 09:39:25', N'Chi', 3, N'Chuyển khoản', 103597, N'Không rõ', N'Chi phí bảo trì', 'NV012');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC050', '2025-03-24 09:39:25', N'Chi', 4, N'Chuyển khoản', 928759, N'Không rõ', N'Chi phí bảo trì', 'NV007');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC051', '2024-12-17 09:39:25', N'Thu', 7, N'POS/Quẹt thẻ', 4495894, N'Không rõ', N'Chi khuyến mãi', 'NV001');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC052', '2024-12-30 09:39:25', N'Thu', 6, N'POS/Quẹt thẻ', 1364965, N'Không rõ', N'Chi mua hàng', 'NV019');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC053', '2025-01-24 09:39:25', N'Chi', 3, N'Chuyển khoản', 2202761, N'Không rõ', N'Thu từ đối tác', 'NV013');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC054', '2024-12-09 09:39:25', N'Thu', 7, N'Chuyển khoản', 2668783, N'Không rõ', N'Chi phí bảo trì', 'NV020');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC055', '2025-03-26 09:39:25', N'Chi', 2, N'Tiền mặt', 2958489, N'Không rõ', N'Chi khuyến mãi', 'NV001');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC056', '2025-02-10 09:39:25', N'Thu', 6, N'POS/Quẹt thẻ', 303608, N'Không rõ', N'Chi phí bảo trì', 'NV007');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC057', '2024-12-08 09:39:25', N'Chi', 2, N'Tiền mặt', 871670, N'Không rõ', N'Chi lương nhân viên', 'NV010');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC058', '2024-12-08 09:39:25', N'Chi', 4, N'Chuyển khoản', 3294640, N'Không rõ', N'Thu tiền khách hàng', 'NV013');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC059', '2024-12-10 09:39:25', N'Thu', 6, N'Tiền mặt', 3287563, N'Không rõ', N'Chi phí bảo trì', 'NV019');
INSERT INTO dbo.PhieuThuChi (maPhieu, ngayGiaoDich, loaiPhieu, maLoai, hinhThuc, soTien, nguoiNopNhan, ghiChu, maNV)
VALUES ('PTC060', '2025-01-03 09:39:25', N'Chi', 9, N'Chuyển khoản', 1317195, N'Không rõ', N'Chi phí vận chuyển', 'NV020');

-- END OF 13. DataPhieuThuChi.sql --

-- START OF 14. DataCaLamViec.sql --
-- ======================= CaLamViec =======================
INSERT INTO dbo.CaLamViec (maCa, tenCa, gioBatDau, gioKetThuc)
VALUES ('CA1', N'Sáng', '07:00', '11:30');
INSERT INTO dbo.CaLamViec (maCa, tenCa, gioBatDau, gioKetThuc)
VALUES ('CA2', N'Chiều', '13:00', '17:30');
INSERT INTO dbo.CaLamViec (maCa, tenCa, gioBatDau, gioKetThuc)
VALUES ('CA3', N'Tối', '17:30', '21:00');
INSERT INTO dbo.CaLamViec (maCa, tenCa, gioBatDau, gioKetThuc)
VALUES ('CA4', N'Cả ngày', '07:00', '17:30');

-- END OF 14. DataCaLamViec.sql --

-- START OF 15. DataLichLamViec.sql --
-- ======================= LichLamViec =======================
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0001', 'NV002', '2025-03-15', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0002', 'NV003', '2025-03-15', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0003', 'NV003', '2025-03-15', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0004', 'NV004', '2025-03-15', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0005', 'NV005', '2025-03-15', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0006', 'NV005', '2025-03-15', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0007', 'NV006', '2025-03-15', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0008', 'NV007', '2025-03-15', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0009', 'NV008', '2025-03-15', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0010', 'NV009', '2025-03-15', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0011', 'NV009', '2025-03-15', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0012', 'NV012', '2025-03-15', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0013', 'NV013', '2025-03-15', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0014', 'NV014', '2025-03-15', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0015', 'NV014', '2025-03-15', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0016', 'NV015', '2025-03-15', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0017', 'NV016', '2025-03-15', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0018', 'NV016', '2025-03-15', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0019', 'NV017', '2025-03-15', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0020', 'NV017', '2025-03-15', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0021', 'NV018', '2025-03-15', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0022', 'NV018', '2025-03-15', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0023', 'NV019', '2025-03-15', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0024', 'NV020', '2025-03-15', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0025', 'NV020', '2025-03-15', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0026', 'NV001', '2025-03-16', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0027', 'NV004', '2025-03-16', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0028', 'NV004', '2025-03-16', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0029', 'NV005', '2025-03-16', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0030', 'NV006', '2025-03-16', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0031', 'NV006', '2025-03-16', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0032', 'NV009', '2025-03-16', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0033', 'NV009', '2025-03-16', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0034', 'NV013', '2025-03-16', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0035', 'NV013', '2025-03-16', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0036', 'NV014', '2025-03-16', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0037', 'NV016', '2025-03-16', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0038', 'NV017', '2025-03-16', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0039', 'NV017', '2025-03-16', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0040', 'NV018', '2025-03-16', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0041', 'NV018', '2025-03-16', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0042', 'NV001', '2025-03-17', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0043', 'NV002', '2025-03-17', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0044', 'NV003', '2025-03-17', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0045', 'NV003', '2025-03-17', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0046', 'NV004', '2025-03-17', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0047', 'NV005', '2025-03-17', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0048', 'NV006', '2025-03-17', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0049', 'NV008', '2025-03-17', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0050', 'NV008', '2025-03-17', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0051', 'NV009', '2025-03-17', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0052', 'NV010', '2025-03-17', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0053', 'NV011', '2025-03-17', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0054', 'NV012', '2025-03-17', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0055', 'NV014', '2025-03-17', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0056', 'NV014', '2025-03-17', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0057', 'NV015', '2025-03-17', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0058', 'NV016', '2025-03-17', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0059', 'NV018', '2025-03-17', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0060', 'NV018', '2025-03-17', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0061', 'NV020', '2025-03-17', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0062', 'NV020', '2025-03-17', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0063', 'NV001', '2025-03-18', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0064', 'NV003', '2025-03-18', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0065', 'NV003', '2025-03-18', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0066', 'NV004', '2025-03-18', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0067', 'NV005', '2025-03-18', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0068', 'NV005', '2025-03-18', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0069', 'NV008', '2025-03-18', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0070', 'NV009', '2025-03-18', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0071', 'NV009', '2025-03-18', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0072', 'NV010', '2025-03-18', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0073', 'NV011', '2025-03-18', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0074', 'NV013', '2025-03-18', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0075', 'NV013', '2025-03-18', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0076', 'NV014', '2025-03-18', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0077', 'NV015', '2025-03-18', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0078', 'NV015', '2025-03-18', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0079', 'NV016', '2025-03-18', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0080', 'NV016', '2025-03-18', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0081', 'NV017', '2025-03-18', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0082', 'NV019', '2025-03-18', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0083', 'NV020', '2025-03-18', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0084', 'NV001', '2025-03-19', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0085', 'NV003', '2025-03-19', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0086', 'NV004', '2025-03-19', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0087', 'NV004', '2025-03-19', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0088', 'NV006', '2025-03-19', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0089', 'NV006', '2025-03-19', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0090', 'NV008', '2025-03-19', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0091', 'NV008', '2025-03-19', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0092', 'NV009', '2025-03-19', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0093', 'NV010', '2025-03-19', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0094', 'NV010', '2025-03-19', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0095', 'NV013', '2025-03-19', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0096', 'NV013', '2025-03-19', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0097', 'NV016', '2025-03-19', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0098', 'NV017', '2025-03-19', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0099', 'NV017', '2025-03-19', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0100', 'NV018', '2025-03-19', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0101', 'NV019', '2025-03-19', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0102', 'NV019', '2025-03-19', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0103', 'NV020', '2025-03-19', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0104', 'NV002', '2025-03-20', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0105', 'NV003', '2025-03-20', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0106', 'NV004', '2025-03-20', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0107', 'NV005', '2025-03-20', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0108', 'NV005', '2025-03-20', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0109', 'NV008', '2025-03-20', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0110', 'NV009', '2025-03-20', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0111', 'NV009', '2025-03-20', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0112', 'NV010', '2025-03-20', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0113', 'NV011', '2025-03-20', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0114', 'NV012', '2025-03-20', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0115', 'NV012', '2025-03-20', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0116', 'NV014', '2025-03-20', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0117', 'NV014', '2025-03-20', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0118', 'NV016', '2025-03-20', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0119', 'NV016', '2025-03-20', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0120', 'NV017', '2025-03-20', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0121', 'NV019', '2025-03-20', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0122', 'NV020', '2025-03-20', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0123', 'NV020', '2025-03-20', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0124', 'NV001', '2025-03-21', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0125', 'NV001', '2025-03-21', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0126', 'NV002', '2025-03-21', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0127', 'NV004', '2025-03-21', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0128', 'NV004', '2025-03-21', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0129', 'NV006', '2025-03-21', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0130', 'NV006', '2025-03-21', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0131', 'NV007', '2025-03-21', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0132', 'NV007', '2025-03-21', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0133', 'NV008', '2025-03-21', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0134', 'NV012', '2025-03-21', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0135', 'NV012', '2025-03-21', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0136', 'NV013', '2025-03-21', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0137', 'NV013', '2025-03-21', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0138', 'NV015', '2025-03-21', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0139', 'NV019', '2025-03-21', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0140', 'NV020', '2025-03-21', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0141', 'NV020', '2025-03-21', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0142', 'NV001', '2025-03-22', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0143', 'NV002', '2025-03-22', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0144', 'NV002', '2025-03-22', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0145', 'NV003', '2025-03-22', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0146', 'NV003', '2025-03-22', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0147', 'NV004', '2025-03-22', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0148', 'NV005', '2025-03-22', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0149', 'NV005', '2025-03-22', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0150', 'NV006', '2025-03-22', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0151', 'NV006', '2025-03-22', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0152', 'NV008', '2025-03-22', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0153', 'NV011', '2025-03-22', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0154', 'NV012', '2025-03-22', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0155', 'NV013', '2025-03-22', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0156', 'NV014', '2025-03-22', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0157', 'NV014', '2025-03-22', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0158', 'NV017', '2025-03-22', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0159', 'NV019', '2025-03-22', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0160', 'NV019', '2025-03-22', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0161', 'NV020', '2025-03-22', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0162', 'NV001', '2025-03-23', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0163', 'NV001', '2025-03-23', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0164', 'NV003', '2025-03-23', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0165', 'NV004', '2025-03-23', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0166', 'NV004', '2025-03-23', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0167', 'NV005', '2025-03-23', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0168', 'NV005', '2025-03-23', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0169', 'NV006', '2025-03-23', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0170', 'NV008', '2025-03-23', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0171', 'NV008', '2025-03-23', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0172', 'NV009', '2025-03-23', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0173', 'NV009', '2025-03-23', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0174', 'NV010', '2025-03-23', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0175', 'NV011', '2025-03-23', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0176', 'NV011', '2025-03-23', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0177', 'NV012', '2025-03-23', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0178', 'NV013', '2025-03-23', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0179', 'NV015', '2025-03-23', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0180', 'NV017', '2025-03-23', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0181', 'NV018', '2025-03-23', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0182', 'NV018', '2025-03-23', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0183', 'NV019', '2025-03-23', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0184', 'NV019', '2025-03-23', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0185', 'NV020', '2025-03-23', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0186', 'NV020', '2025-03-23', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0187', 'NV002', '2025-03-24', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0188', 'NV004', '2025-03-24', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0189', 'NV006', '2025-03-24', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0190', 'NV006', '2025-03-24', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0191', 'NV007', '2025-03-24', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0192', 'NV007', '2025-03-24', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0193', 'NV008', '2025-03-24', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0194', 'NV008', '2025-03-24', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0195', 'NV010', '2025-03-24', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0196', 'NV012', '2025-03-24', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0197', 'NV013', '2025-03-24', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0198', 'NV013', '2025-03-24', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0199', 'NV014', '2025-03-24', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0200', 'NV016', '2025-03-24', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0201', 'NV016', '2025-03-24', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0202', 'NV017', '2025-03-24', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0203', 'NV017', '2025-03-24', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0204', 'NV018', '2025-03-24', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0205', 'NV018', '2025-03-24', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0206', 'NV019', '2025-03-24', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0207', 'NV019', '2025-03-24', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0208', 'NV020', '2025-03-24', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0209', 'NV001', '2025-03-25', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0210', 'NV001', '2025-03-25', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0211', 'NV002', '2025-03-25', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0212', 'NV003', '2025-03-25', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0213', 'NV004', '2025-03-25', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0214', 'NV004', '2025-03-25', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0215', 'NV005', '2025-03-25', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0216', 'NV005', '2025-03-25', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0217', 'NV006', '2025-03-25', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0218', 'NV010', '2025-03-25', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0219', 'NV010', '2025-03-25', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0220', 'NV011', '2025-03-25', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0221', 'NV011', '2025-03-25', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0222', 'NV012', '2025-03-25', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0223', 'NV013', '2025-03-25', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0224', 'NV013', '2025-03-25', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0225', 'NV014', '2025-03-25', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0226', 'NV014', '2025-03-25', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0227', 'NV016', '2025-03-25', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0228', 'NV018', '2025-03-25', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0229', 'NV019', '2025-03-25', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0230', 'NV019', '2025-03-25', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0231', 'NV020', '2025-03-25', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0232', 'NV020', '2025-03-25', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0233', 'NV001', '2025-03-26', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0234', 'NV001', '2025-03-26', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0235', 'NV002', '2025-03-26', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0236', 'NV004', '2025-03-26', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0237', 'NV005', '2025-03-26', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0238', 'NV005', '2025-03-26', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0239', 'NV006', '2025-03-26', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0240', 'NV006', '2025-03-26', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0241', 'NV007', '2025-03-26', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0242', 'NV008', '2025-03-26', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0243', 'NV009', '2025-03-26', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0244', 'NV009', '2025-03-26', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0245', 'NV010', '2025-03-26', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0246', 'NV011', '2025-03-26', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0247', 'NV012', '2025-03-26', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0248', 'NV016', '2025-03-26', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0249', 'NV016', '2025-03-26', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0250', 'NV017', '2025-03-26', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0251', 'NV018', '2025-03-26', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0252', 'NV019', '2025-03-26', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0253', 'NV019', '2025-03-26', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0254', 'NV020', '2025-03-26', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0255', 'NV020', '2025-03-26', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0256', 'NV001', '2025-03-27', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0257', 'NV001', '2025-03-27', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0258', 'NV003', '2025-03-27', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0259', 'NV003', '2025-03-27', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0260', 'NV004', '2025-03-27', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0261', 'NV004', '2025-03-27', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0262', 'NV005', '2025-03-27', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0263', 'NV006', '2025-03-27', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0264', 'NV006', '2025-03-27', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0265', 'NV007', '2025-03-27', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0266', 'NV008', '2025-03-27', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0267', 'NV008', '2025-03-27', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0268', 'NV009', '2025-03-27', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0269', 'NV010', '2025-03-27', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0270', 'NV011', '2025-03-27', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0271', 'NV011', '2025-03-27', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0272', 'NV013', '2025-03-27', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0273', 'NV013', '2025-03-27', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0274', 'NV015', '2025-03-27', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0275', 'NV015', '2025-03-27', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0276', 'NV016', '2025-03-27', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0277', 'NV017', '2025-03-27', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0278', 'NV017', '2025-03-27', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0279', 'NV018', '2025-03-27', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0280', 'NV019', '2025-03-27', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0281', 'NV019', '2025-03-27', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0282', 'NV001', '2025-03-28', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0283', 'NV002', '2025-03-28', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0284', 'NV002', '2025-03-28', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0285', 'NV003', '2025-03-28', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0286', 'NV003', '2025-03-28', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0287', 'NV004', '2025-03-28', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0288', 'NV004', '2025-03-28', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0289', 'NV005', '2025-03-28', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0290', 'NV005', '2025-03-28', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0291', 'NV006', '2025-03-28', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0292', 'NV007', '2025-03-28', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0293', 'NV007', '2025-03-28', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0294', 'NV009', '2025-03-28', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0295', 'NV009', '2025-03-28', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0296', 'NV011', '2025-03-28', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0297', 'NV011', '2025-03-28', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0298', 'NV012', '2025-03-28', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0299', 'NV013', '2025-03-28', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0300', 'NV013', '2025-03-28', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0301', 'NV014', '2025-03-28', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0302', 'NV015', '2025-03-28', 'CA4', N'Làm ca CA4');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0303', 'NV016', '2025-03-28', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0304', 'NV016', '2025-03-28', 'CA1', N'Làm ca CA1');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0305', 'NV018', '2025-03-28', 'CA3', N'Làm ca CA3');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0306', 'NV019', '2025-03-28', 'CA2', N'Làm ca CA2');
INSERT INTO dbo.LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
VALUES ('LLV0307', 'NV019', '2025-03-28', 'CA4', N'Làm ca CA4');

-- END OF 15. DataLichLamViec.sql --

-- START OF 16. DataChamCong.sql --
-- ======================= ChamCong =======================
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0001', 'NV001', '2025-03-15', 'CA4', '07:00', '17:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0002', 'NV001', '2025-03-15', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0003', 'NV002', '2025-03-15', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0004', 'NV002', '2025-03-15', 'CA2', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ riêng', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0005', 'NV004', '2025-03-15', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0006', 'NV004', '2025-03-15', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0007', 'NV007', '2025-03-15', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0008', 'NV008', '2025-03-15', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0009', 'NV008', '2025-03-15', 'CA4', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ ốm', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0010', 'NV009', '2025-03-15', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0011', 'NV009', '2025-03-15', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0012', 'NV010', '2025-03-15', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0013', 'NV011', '2025-03-15', 'CA4', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ ốm', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0014', 'NV011', '2025-03-15', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0015', 'NV012', '2025-03-15', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0016', 'NV013', '2025-03-15', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0017', 'NV014', '2025-03-15', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0018', 'NV015', '2025-03-15', 'CA1', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ ốm', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0019', 'NV016', '2025-03-15', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0020', 'NV016', '2025-03-15', 'CA3', '17:30', '21:00', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0021', 'NV018', '2025-03-15', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0022', 'NV020', '2025-03-15', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0023', 'NV002', '2025-03-16', 'CA3', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ ốm', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0024', 'NV003', '2025-03-16', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0025', 'NV003', '2025-03-16', 'CA4', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ ốm', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0026', 'NV004', '2025-03-16', 'CA2', '13:00', '17:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0027', 'NV004', '2025-03-16', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0028', 'NV005', '2025-03-16', 'CA3', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ ốm', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0029', 'NV007', '2025-03-16', 'CA3', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ ốm', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0030', 'NV008', '2025-03-16', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0031', 'NV008', '2025-03-16', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0032', 'NV009', '2025-03-16', 'CA3', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ phép', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0033', 'NV012', '2025-03-16', 'CA4', '07:00', '17:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0034', 'NV013', '2025-03-16', 'CA2', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ riêng', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0035', 'NV014', '2025-03-16', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0036', 'NV015', '2025-03-16', 'CA2', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ phép', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0037', 'NV015', '2025-03-16', 'CA4', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ ốm', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0038', 'NV017', '2025-03-16', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0039', 'NV017', '2025-03-16', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0040', 'NV018', '2025-03-16', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0041', 'NV018', '2025-03-16', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0042', 'NV019', '2025-03-16', 'CA1', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ ốm', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0043', 'NV020', '2025-03-16', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0044', 'NV001', '2025-03-17', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0045', 'NV003', '2025-03-17', 'CA3', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ riêng', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0046', 'NV006', '2025-03-17', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0047', 'NV007', '2025-03-17', 'CA3', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ phép', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0048', 'NV007', '2025-03-17', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0049', 'NV008', '2025-03-17', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0050', 'NV010', '2025-03-17', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0051', 'NV010', '2025-03-17', 'CA1', '07:00', '11:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0052', 'NV012', '2025-03-17', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0053', 'NV012', '2025-03-17', 'CA3', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ phép', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0054', 'NV013', '2025-03-17', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0055', 'NV014', '2025-03-17', 'CA2', '13:00', '17:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0056', 'NV014', '2025-03-17', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0057', 'NV015', '2025-03-17', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0058', 'NV015', '2025-03-17', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0059', 'NV017', '2025-03-17', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0060', 'NV017', '2025-03-17', 'CA1', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ phép', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0061', 'NV018', '2025-03-17', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0062', 'NV019', '2025-03-17', 'CA1', '07:00', '11:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0063', 'NV019', '2025-03-17', 'CA3', '17:30', '21:00', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0064', 'NV001', '2025-03-18', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0065', 'NV001', '2025-03-18', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0066', 'NV002', '2025-03-18', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0067', 'NV002', '2025-03-18', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0068', 'NV004', '2025-03-18', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0069', 'NV006', '2025-03-18', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0070', 'NV007', '2025-03-18', 'CA2', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ phép', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0071', 'NV007', '2025-03-18', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0072', 'NV008', '2025-03-18', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0073', 'NV008', '2025-03-18', 'CA3', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ phép', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0074', 'NV010', '2025-03-18', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0075', 'NV010', '2025-03-18', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0076', 'NV011', '2025-03-18', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0077', 'NV011', '2025-03-18', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0078', 'NV013', '2025-03-18', 'CA2', '13:00', '17:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0079', 'NV014', '2025-03-18', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0080', 'NV016', '2025-03-18', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0081', 'NV016', '2025-03-18', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0082', 'NV017', '2025-03-18', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0083', 'NV019', '2025-03-18', 'CA3', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ phép', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0084', 'NV019', '2025-03-18', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0085', 'NV020', '2025-03-18', 'CA2', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ riêng', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0086', 'NV020', '2025-03-18', 'CA1', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ ốm', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0087', 'NV001', '2025-03-19', 'CA4', '07:00', '17:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0088', 'NV001', '2025-03-19', 'CA2', '13:00', '17:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0089', 'NV002', '2025-03-19', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0090', 'NV003', '2025-03-19', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0091', 'NV004', '2025-03-19', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0092', 'NV004', '2025-03-19', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0093', 'NV006', '2025-03-19', 'CA1', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ ốm', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0094', 'NV007', '2025-03-19', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0095', 'NV010', '2025-03-19', 'CA2', '13:00', '17:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0096', 'NV011', '2025-03-19', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0097', 'NV011', '2025-03-19', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0098', 'NV012', '2025-03-19', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0099', 'NV013', '2025-03-19', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0100', 'NV015', '2025-03-19', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0101', 'NV016', '2025-03-19', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0102', 'NV016', '2025-03-19', 'CA4', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ ốm', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0103', 'NV018', '2025-03-19', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0104', 'NV018', '2025-03-19', 'CA1', '07:00', '11:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0105', 'NV019', '2025-03-19', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0106', 'NV001', '2025-03-20', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0107', 'NV001', '2025-03-20', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0108', 'NV003', '2025-03-20', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0109', 'NV004', '2025-03-20', 'CA2', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ riêng', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0110', 'NV005', '2025-03-20', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0111', 'NV005', '2025-03-20', 'CA4', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ phép', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0112', 'NV006', '2025-03-20', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0113', 'NV007', '2025-03-20', 'CA3', '17:30', '21:00', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0114', 'NV007', '2025-03-20', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0115', 'NV008', '2025-03-20', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0116', 'NV010', '2025-03-20', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0117', 'NV011', '2025-03-20', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0118', 'NV012', '2025-03-20', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0119', 'NV014', '2025-03-20', 'CA1', '07:00', '11:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0120', 'NV014', '2025-03-20', 'CA3', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ phép', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0121', 'NV018', '2025-03-20', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0122', 'NV019', '2025-03-20', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0123', 'NV019', '2025-03-20', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0124', 'NV020', '2025-03-20', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0125', 'NV001', '2025-03-21', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0126', 'NV001', '2025-03-21', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0127', 'NV002', '2025-03-21', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0128', 'NV002', '2025-03-21', 'CA4', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ ốm', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0129', 'NV003', '2025-03-21', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0130', 'NV003', '2025-03-21', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0131', 'NV004', '2025-03-21', 'CA2', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ riêng', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0132', 'NV004', '2025-03-21', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0133', 'NV005', '2025-03-21', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0134', 'NV006', '2025-03-21', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0135', 'NV006', '2025-03-21', 'CA1', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ ốm', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0136', 'NV007', '2025-03-21', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0137', 'NV008', '2025-03-21', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0138', 'NV008', '2025-03-21', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0139', 'NV010', '2025-03-21', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0140', 'NV010', '2025-03-21', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0141', 'NV014', '2025-03-21', 'CA4', '07:00', '17:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0142', 'NV016', '2025-03-21', 'CA4', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ phép', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0143', 'NV017', '2025-03-21', 'CA1', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ ốm', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0144', 'NV017', '2025-03-21', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0145', 'NV018', '2025-03-21', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0146', 'NV019', '2025-03-21', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0147', 'NV020', '2025-03-21', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0148', 'NV020', '2025-03-21', 'CA4', '07:00', '17:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0149', 'NV001', '2025-03-22', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0150', 'NV003', '2025-03-22', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0151', 'NV003', '2025-03-22', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0152', 'NV004', '2025-03-22', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0153', 'NV004', '2025-03-22', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0154', 'NV005', '2025-03-22', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0155', 'NV005', '2025-03-22', 'CA4', '07:00', '17:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0156', 'NV006', '2025-03-22', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0157', 'NV006', '2025-03-22', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0158', 'NV010', '2025-03-22', 'CA4', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ ốm', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0159', 'NV010', '2025-03-22', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0160', 'NV011', '2025-03-22', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0161', 'NV012', '2025-03-22', 'CA4', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ phép', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0162', 'NV012', '2025-03-22', 'CA1', '07:00', '11:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0163', 'NV015', '2025-03-22', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0164', 'NV015', '2025-03-22', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0165', 'NV016', '2025-03-22', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0166', 'NV017', '2025-03-22', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0167', 'NV018', '2025-03-22', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0168', 'NV020', '2025-03-22', 'CA4', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ riêng', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0169', 'NV001', '2025-03-23', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0170', 'NV001', '2025-03-23', 'CA3', '17:30', '21:00', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0171', 'NV002', '2025-03-23', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0172', 'NV002', '2025-03-23', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0173', 'NV003', '2025-03-23', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0174', 'NV004', '2025-03-23', 'CA1', '07:00', '11:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0175', 'NV004', '2025-03-23', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0176', 'NV005', '2025-03-23', 'CA4', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ phép', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0177', 'NV005', '2025-03-23', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0178', 'NV006', '2025-03-23', 'CA4', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ ốm', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0179', 'NV007', '2025-03-23', 'CA3', '17:30', '21:00', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0180', 'NV008', '2025-03-23', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0181', 'NV008', '2025-03-23', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0182', 'NV009', '2025-03-23', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0183', 'NV009', '2025-03-23', 'CA4', '07:00', '17:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0184', 'NV010', '2025-03-23', 'CA1', '07:00', '11:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0185', 'NV010', '2025-03-23', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0186', 'NV011', '2025-03-23', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0187', 'NV011', '2025-03-23', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0188', 'NV012', '2025-03-23', 'CA2', '13:00', '17:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0189', 'NV012', '2025-03-23', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0190', 'NV013', '2025-03-23', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0191', 'NV014', '2025-03-23', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0192', 'NV017', '2025-03-23', 'CA1', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ riêng', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0193', 'NV017', '2025-03-23', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0194', 'NV018', '2025-03-23', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0195', 'NV001', '2025-03-24', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0196', 'NV001', '2025-03-24', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0197', 'NV003', '2025-03-24', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0198', 'NV004', '2025-03-24', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0199', 'NV004', '2025-03-24', 'CA2', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ ốm', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0200', 'NV005', '2025-03-24', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0201', 'NV006', '2025-03-24', 'CA4', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ riêng', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0202', 'NV008', '2025-03-24', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0203', 'NV008', '2025-03-24', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0204', 'NV009', '2025-03-24', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0205', 'NV009', '2025-03-24', 'CA2', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ riêng', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0206', 'NV010', '2025-03-24', 'CA1', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ riêng', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0207', 'NV010', '2025-03-24', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0208', 'NV011', '2025-03-24', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0209', 'NV011', '2025-03-24', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0210', 'NV012', '2025-03-24', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0211', 'NV013', '2025-03-24', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0212', 'NV014', '2025-03-24', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0213', 'NV015', '2025-03-24', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0214', 'NV019', '2025-03-24', 'CA3', '17:30', '21:00', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0215', 'NV001', '2025-03-25', 'CA3', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ phép', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0216', 'NV002', '2025-03-25', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0217', 'NV002', '2025-03-25', 'CA4', '07:00', '17:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0218', 'NV003', '2025-03-25', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0219', 'NV004', '2025-03-25', 'CA4', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ phép', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0220', 'NV004', '2025-03-25', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0221', 'NV005', '2025-03-25', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0222', 'NV005', '2025-03-25', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0223', 'NV006', '2025-03-25', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0224', 'NV007', '2025-03-25', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0225', 'NV009', '2025-03-25', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0226', 'NV010', '2025-03-25', 'CA1', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ riêng', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0227', 'NV010', '2025-03-25', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0228', 'NV011', '2025-03-25', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0229', 'NV012', '2025-03-25', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0230', 'NV012', '2025-03-25', 'CA1', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ phép', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0231', 'NV013', '2025-03-25', 'CA4', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ phép', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0232', 'NV013', '2025-03-25', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0233', 'NV014', '2025-03-25', 'CA1', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ phép', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0234', 'NV015', '2025-03-25', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0235', 'NV015', '2025-03-25', 'CA4', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ ốm', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0236', 'NV016', '2025-03-25', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0237', 'NV016', '2025-03-25', 'CA2', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ phép', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0238', 'NV017', '2025-03-25', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0239', 'NV018', '2025-03-25', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0240', 'NV018', '2025-03-25', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0241', 'NV001', '2025-03-26', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0242', 'NV002', '2025-03-26', 'CA1', '07:00', '11:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0243', 'NV003', '2025-03-26', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0244', 'NV003', '2025-03-26', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0245', 'NV004', '2025-03-26', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0246', 'NV004', '2025-03-26', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0247', 'NV006', '2025-03-26', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0248', 'NV007', '2025-03-26', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0249', 'NV008', '2025-03-26', 'CA3', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ ốm', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0250', 'NV009', '2025-03-26', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0251', 'NV011', '2025-03-26', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0252', 'NV014', '2025-03-26', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0253', 'NV016', '2025-03-26', 'CA2', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ phép', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0254', 'NV016', '2025-03-26', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0255', 'NV017', '2025-03-26', 'CA4', '07:00', '17:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0256', 'NV017', '2025-03-26', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0257', 'NV018', '2025-03-26', 'CA1', '07:00', '11:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0258', 'NV018', '2025-03-26', 'CA4', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ riêng', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0259', 'NV019', '2025-03-26', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0260', 'NV002', '2025-03-27', 'CA4', '07:00', '17:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0261', 'NV002', '2025-03-27', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0262', 'NV005', '2025-03-27', 'CA2', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ riêng', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0263', 'NV005', '2025-03-27', 'CA1', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ ốm', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0264', 'NV006', '2025-03-27', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0265', 'NV006', '2025-03-27', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0266', 'NV008', '2025-03-27', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0267', 'NV009', '2025-03-27', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0268', 'NV010', '2025-03-27', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0269', 'NV010', '2025-03-27', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0270', 'NV011', '2025-03-27', 'CA4', '07:00', '17:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0271', 'NV013', '2025-03-27', 'CA3', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ phép', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0272', 'NV014', '2025-03-27', 'CA2', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ riêng', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0273', 'NV014', '2025-03-27', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0274', 'NV015', '2025-03-27', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0275', 'NV015', '2025-03-27', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0276', 'NV016', '2025-03-27', 'CA3', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ riêng', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0277', 'NV016', '2025-03-27', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0278', 'NV017', '2025-03-27', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0279', 'NV017', '2025-03-27', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0280', 'NV019', '2025-03-27', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0281', 'NV001', '2025-03-28', 'CA3', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ ốm', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0282', 'NV003', '2025-03-28', 'CA4', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ phép', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0283', 'NV003', '2025-03-28', 'CA1', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ phép', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0284', 'NV004', '2025-03-28', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0285', 'NV004', '2025-03-28', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0286', 'NV005', '2025-03-28', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0287', 'NV005', '2025-03-28', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0288', 'NV006', '2025-03-28', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0289', 'NV006', '2025-03-28', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0290', 'NV007', '2025-03-28', 'CA3', '17:30', '21:00', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0291', 'NV007', '2025-03-28', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0292', 'NV008', '2025-03-28', 'CA1', '07:00', '11:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0293', 'NV008', '2025-03-28', 'CA2', '13:00', '17:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0294', 'NV009', '2025-03-28', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0295', 'NV011', '2025-03-28', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0296', 'NV013', '2025-03-28', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0297', 'NV014', '2025-03-28', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Trễ 5 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0298', 'NV015', '2025-03-28', 'CA2', '13:00', '17:30', N'Đi trễ', N'Không', 1, N'Trễ 15 phút');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0299', 'NV017', '2025-03-28', 'CA4', '00:00', '00:00', N'Nghỉ phép', N'Nghỉ ốm', 1, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0300', 'NV018', '2025-03-28', 'CA3', '17:30', '21:00', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0301', 'NV018', '2025-03-28', 'CA2', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ riêng', 0, N'Xin nghỉ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0302', 'NV019', '2025-03-28', 'CA4', '07:00', '17:30', N'Đi làm', N'Không', 1, N'Đến sớm');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0303', 'NV019', '2025-03-28', 'CA2', '13:00', '17:30', N'Đi làm', N'Không', 1, N'Đúng giờ');
INSERT INTO dbo.ChamCong (maCC, maNV, ngay, maCa, gioVao, gioRa, trangThai, loaiNghi, daDuyet, ghiChu)
VALUES ('CC0304', 'NV020', '2025-03-28', 'CA4', '00:00', '00:00', N'Nghỉ không phép', N'Nghỉ riêng', 0, N'Xin nghỉ');

-- END OF 16. DataChamCong.sql --
