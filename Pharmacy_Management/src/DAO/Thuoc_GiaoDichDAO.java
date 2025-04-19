package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import connectDB.ConnectDB;

public class Thuoc_GiaoDichDAO {

	// Lấy danh sách thuốc để hiển thị
	public List<Object[]> loadDataToDSSP() {
		List<Object[]> data = new ArrayList<Object[]>();

		try (Connection con = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement stmt = con.prepareStatement("SELECT * FROM Thuoc")) {

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				String formatGiaBan = String.format("%,.0fđ", rs.getFloat("donGiaBan"));

				Object[] row = { rs.getString("maThuoc"), rs.getString("tenThuoc"), rs.getString("donViTinh"),
						formatGiaBan, rs.getInt("soLuongTon") };
				data.add(row);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			JOptionPane.showMessageDialog(null, "Lỗi khi tải dữ liệu: " + e.getMessage());
		}
		return data;
	}

	// Tìm kiếm thuốc theo mã thuốc hoặc tên thuốc
	public List<Object[]> timKiemThuoc(String maThuoc, String tenThuoc) {
		List<Object[]> data = new ArrayList<Object[]>();
		StringBuilder sql = new StringBuilder("SELECT * FROM Thuoc WHERE 1=1");
		List<Object> params = new ArrayList<Object>();

		if (!maThuoc.isEmpty()) {
			sql.append(" AND maThuoc LIKE ?");
			params.add("%" + maThuoc + "%");
		}
		if (!tenThuoc.isEmpty()) {
			sql.append(" AND tenThuoc LIKE ?");
			params.add("%" + tenThuoc + "%");
		}

		try (Connection con = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement stmt = con.prepareStatement(sql.toString())) {

			for (int i = 0; i < params.size(); i++) {
				stmt.setObject(i + 1, params.get(i));
			}
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				String formatGiaBan = String.format("%,.0fđ", rs.getFloat("donGiaBan"));

				Object[] row = { rs.getString("maThuoc"), rs.getString("tenThuoc"), rs.getString("donViTinh"),
						formatGiaBan, rs.getInt("soLuongTon") };
				data.add(row);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			JOptionPane.showMessageDialog(null, "Lỗi khi tìm kiếm dữ liệu: " + e.getMessage());
		}
		return data;
	}

	// Bán hàng

	public String getLastMaHoaDon() {
		String sql = "SELECT MAX(maHD) FROM HoaDon";
		try (Connection conn = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery()) {
			if (rs.next()) {
				String lastMaHD = rs.getString(1);
				if (lastMaHD != null && !lastMaHD.isEmpty()) {
					return lastMaHD;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			JOptionPane.showMessageDialog(null, "Lỗi khi lấy mã hóa đơn cuối cùng: " + e.getMessage());
		}
		return "HD000";
	}

	public boolean luuHoaDon(String maHD, String ngayLap, double tongTien, String maNV, String maKH, String trangThai,
			String phuongThucThanhToan) throws ParseException {
		String sql = "INSERT INTO HoaDon (maHD, ngayLap, tongTien, maNV, maKH, trangThai, phuongThucThanhToan) VALUES (?, ?, ?, ?, ?, ?, ?)";
		try (Connection conn = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement pstmt = conn.prepareStatement(sql)) {
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			java.util.Date parsed = sdf.parse(ngayLap);
			java.sql.Date datesql = new java.sql.Date(parsed.getTime());

			pstmt.setString(1, maHD);
			pstmt.setDate(2, datesql);
			pstmt.setDouble(3, tongTien);
			pstmt.setString(4, maNV);
			pstmt.setString(5, maKH);
			pstmt.setString(6, trangThai);
			pstmt.setString(7, phuongThucThanhToan);
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			JOptionPane.showMessageDialog(null, "Lỗi khi lưu hóa đơn: " + e.getMessage());
		}
		return false;
	}

	public boolean capNhatSoLuongTon(String maThuoc, int soLuong) {
		String sql = "UPDATE Thuoc SET soLuongTon = soLuongTon - ? WHERE maThuoc = ?";
		try (Connection conn = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setInt(1, soLuong);
			stmt.setString(2, maThuoc);
			return stmt.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	// Đặt Hàng

	public String getLastMaPhieuDatHang() {
		String sql = "SELECT MAX(maPDH) FROM PhieuDatHang";
		try (Connection conn = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery()) {
			if (rs.next()) {
				String lastMaPDH = rs.getString(1);
				if (lastMaPDH != null && !lastMaPDH.isEmpty()) {
					return lastMaPDH;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			JOptionPane.showMessageDialog(null, "Lỗi khi lấy mã phiếu đặt hàng cuối cùng: " + e.getMessage());
		}
		return "PDH000";
	}

	public boolean luuPhieuDatHang(String maPDH, String ngayLap, String ngayGiao, double tongTien, String maNV, String maKH, String trangThai,
			String phuongThucThanhToan) throws ParseException {
		String sql = "INSERT INTO PhieuDatHang (maPDH, ngayDat, ngayGiao, tongTien, maNV, maKH, trangThai, phuongThucThanhToan) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
		try (Connection conn = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement pstmt = conn.prepareStatement(sql)) {
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			java.util.Date parsed1 = sdf.parse(ngayLap);
			java.sql.Date dat = new java.sql.Date(parsed1.getTime());
			java.util.Date parsed2 = sdf.parse(ngayGiao);
			java.sql.Date nhap = new java.sql.Date(parsed2.getTime());

			pstmt.setString(1, maPDH);
			pstmt.setDate(2, dat);
			pstmt.setDate(3, nhap);
			pstmt.setDouble(4, tongTien);
			pstmt.setString(5, maNV);
			pstmt.setString(6, maKH);
			pstmt.setString(7, trangThai);
			pstmt.setString(8, phuongThucThanhToan);
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			JOptionPane.showMessageDialog(null, "Lỗi khi lưu phiếu đặt hàng: " + e.getMessage());
		}
		return false;
	}

}
