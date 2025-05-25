package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import connectDB.ConnectDB;

public class ChiTietDatThuocDAO {
	
	public List<Object[]> getChiTietPhieuDatHang(String maPhieuDatHang) {
		List<Object[]> chiTietList = new ArrayList<>();
		String sql = "SELECT c.maThuoc, t.tenThuoc, c.soLuong, c.donGiaBan "
				+ "FROM ChiTietPhieuDatThuoc c JOIN Thuoc t ON c.maThuoc = t.maThuoc " + "WHERE c.maPDT = ?";

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
		String sql = "INSERT INTO ChiTietPhieuDatThuoc (maPDT, maThuoc, soLuong, donGiaBan) VALUES (?, ?, ?, ?)";
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
		String sql = "SELECT ct.maThuoc, t.tenThuoc, ct.soLuong, ct.donGiaBan "
				+ "FROM ChiTietPhieuDatThuoc ct JOIN Thuoc t ON ct.maThuoc = t.maThuoc " + "WHERE ct.maPDT = ?";

		try (Connection conn = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setString(1, maPhieuDatHang);

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				String formatGiaBan = String.format("%,.0fđ", rs.getDouble("donGiaBan"));
				String formatThanhTien = String.format("%,.0fđ", rs.getDouble("donGiaBan") * rs.getInt("soLuong"));

				Object[] row = { rs.getString("maThuoc"), rs.getString("tenThuoc"), rs.getInt("soLuong"), formatGiaBan, formatThanhTien };
				data.add(row);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return data;
	}

	public Object[] getPhieuDatThuocInfo(String maPhieuDatHang) {
		String sql = "SELECT maPDT, maNV, maKH, ngayDat, ngayGiao, trangThai, phuongThucThanhToan "
				+ "FROM PhieuDatThuoc WHERE maPDT = ?";

		try (Connection conn = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setString(1, maPhieuDatHang);

			ResultSet rs = stmt.executeQuery();
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			
			if (rs.next()) {
				String ngaydat = sdf.format(rs.getDate("ngayDat"));
				String ngaygiao = sdf.format(rs.getDate("ngayGiao"));
				
				return new Object[] { rs.getString("maPDT"), rs.getString("maNV"), rs.getString("maKH"), ngaydat, ngaygiao,
						rs.getString("trangThai"), rs.getString("phuongThucThanhToan") };
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
