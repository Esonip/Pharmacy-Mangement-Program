package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import connectDB.ConnectDB;

public class ChiTietHoaDonDAO {

	public List<Object[]> getChiTietHoaDon(String maHoaDon) {
		List<Object[]> chiTietList = new ArrayList<>();
		String sql = "SELECT c.maThuoc, t.tenThuoc, c.soLuong, c.donGiaBan "
				+ "FROM ChiTietHoaDon c JOIN Thuoc t ON c.maThuoc = t.maThuoc " + "WHERE c.maHD = ?";

		try (Connection con = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement pstmt = con.prepareStatement(sql)) {

			pstmt.setString(1, maHoaDon);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				String tenThuoc = rs.getString("tenThuoc");
				int soLuong = rs.getInt("soLuong");
				float donGiaBan = rs.getFloat("donGiaBan");

				String formatGiaBan = String.format("%,.0fđ", donGiaBan);
				String formatThanhTien = String.format("%,.0fđ", donGiaBan * soLuong);

				Object[] row = { tenThuoc, soLuong, formatGiaBan, formatThanhTien };
				chiTietList.add(row);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return chiTietList;
	}

	public boolean luuChiTietHoaDon(String maHD, String maThuoc, int soLuong, double donGiaBan) {
		String sql = "INSERT INTO ChiTietHoaDon (maHD, maThuoc, soLuong, donGiaBan) VALUES (?, ?, ?, ?)";
		try (Connection con = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setString(1, maHD);
			pstmt.setString(2, maThuoc);
			pstmt.setInt(3, soLuong);
			pstmt.setDouble(4, donGiaBan);
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	public List<Object[]> getChiTietHoaDon_ChuyenFrame(String maHD) {
		List<Object[]> data = new ArrayList<>();
		String sql = "SELECT ct.maThuoc, t.tenThuoc, ct.soLuong, ct.donGiaBan, ct.thanhTien "
				+ "FROM ChiTietHoaDon ct JOIN Thuoc t ON ct.maThuoc = t.maThuoc " + "WHERE ct.maHD = ?";

		try (Connection conn = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setString(1, maHD);

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				String formatGiaBan = String.format("%,.0fđ", rs.getDouble("donGiaBan"));
				String formatThanhTien = String.format("%,.0fđ", rs.getDouble("thanhTien"));

				Object[] row = { rs.getString("maThuoc"), rs.getString("tenThuoc"), rs.getInt("soLuong"), formatGiaBan, formatThanhTien };
				data.add(row);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return data;
	}

	public Object[] getHoaDonInfo(String maHD) {
		String sql = "SELECT maHD, ngayLap, tongTien, maNV, maKH, trangThai, phuongThucThanhToan "
				+ "FROM HoaDon WHERE maHD = ?";

		try (Connection conn = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setString(1, maHD);

			ResultSet rs = stmt.executeQuery();
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

			if (rs.next()) {
				return new Object[] { rs.getString("maHD"), sdf.format(rs.getDate("ngayLap")), rs.getDouble("tongTien"),
						rs.getString("maNV"), rs.getString("maKH"), rs.getString("trangThai"),
						rs.getString("phuongThucThanhToan") };
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	// Đặt hàng
	
	public List<Object[]> getChiTietPhieuDatHang(String maPhieuDatHang) {
		List<Object[]> chiTietList = new ArrayList<>();
		String sql = "SELECT c.maThuoc, t.tenThuoc, c.soLuong, c.donGiaBan "
				+ "FROM ChiTietPhieuDatHang c JOIN Thuoc t ON c.maThuoc = t.maThuoc " + "WHERE c.maPDH = ?";

		try (Connection con = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement pstmt = con.prepareStatement(sql)) {

			pstmt.setString(1, maPhieuDatHang);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				String tenThuoc = rs.getString("tenThuoc");
				int soLuong = rs.getInt("soLuong");
				float donGiaBan = rs.getFloat("donGiaBan");

				String formatGiaBan = String.format("%,.0fđ", donGiaBan);
				String formatThanhTien = String.format("%,.0fđ", donGiaBan * soLuong);

				Object[] row = { tenThuoc, soLuong, formatGiaBan, formatThanhTien };
				chiTietList.add(row);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return chiTietList;
	}

	public boolean luuChiTietPhieuDatHang(String maPDH, String maThuoc, int soLuong, double donGiaBan) {
		String sql = "INSERT INTO ChiTietPhieuDatHang (maPDH, maThuoc, soLuong, donGiaBan) VALUES (?, ?, ?, ?)";
		try (Connection con = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setString(1, maPDH);
			pstmt.setString(2, maThuoc);
			pstmt.setInt(3, soLuong);
			pstmt.setDouble(4, donGiaBan);
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	public List<Object[]> getChiTietPhieuDatHang_ChuyenFrame(String maPhieuDatHang) {
		List<Object[]> data = new ArrayList<>();
		String sql = "SELECT ct.maThuoc, t.tenThuoc, ct.soLuong, ct.donGiaBan, ct.thanhTien "
				+ "FROM ChiTietPhieuDatHang ct JOIN Thuoc t ON ct.maThuoc = t.maThuoc " + "WHERE ct.maPDH = ?";

		try (Connection conn = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setString(1, maPhieuDatHang);

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				String formatGiaBan = String.format("%,.0fđ", rs.getDouble("donGiaBan"));
				String formatThanhTien = String.format("%,.0fđ", rs.getDouble("thanhTien"));

				Object[] row = { rs.getString("maThuoc"), rs.getString("tenThuoc"), rs.getInt("soLuong"), formatGiaBan, formatThanhTien };
				data.add(row);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return data;
	}

	public Object[] getPhieuDatHangInfo(String maPhieuDatHang) {
		String sql = "SELECT maPDH, ngayDat, ngayGiao, tongTien, maNV, maKH, trangThai, phuongThucThanhToan "
				+ "FROM PhieuDatHang WHERE maPDH = ?";

		try (Connection conn = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setString(1, maPhieuDatHang);

			ResultSet rs = stmt.executeQuery();
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			
			if (rs.next()) {
				String ngaydat = sdf.format(rs.getDate("ngayDat"));
				String ngaygiao = sdf.format(rs.getDate("ngayGiao"));
				
				return new Object[] { rs.getString("maPDH"), rs.getString("maNV"), rs.getString("maKH"), ngaydat, ngaygiao, rs.getDouble("tongTien"),
						rs.getString("trangThai"), rs.getString("phuongThucThanhToan") };
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
