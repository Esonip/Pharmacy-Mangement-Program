package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import connectDB.ConnectDB;

public class ChiTietBanThuocDAO {

	public List<Object[]> getChiTietPhieuBanThuoc(String maHoaDon) {
		List<Object[]> chiTietList = new ArrayList<>();
		String sql = "SELECT c.maThuoc, t.tenThuoc, c.soLuong, c.donGiaBan "
				+ "FROM ChiTietPhieuBanThuoc c JOIN Thuoc t ON c.maThuoc = t.maThuoc " + "WHERE c.maPBT = ?";

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
		String sql = "INSERT INTO ChiTietPhieuBanThuoc (maPBT, maThuoc, soLuong, donGiaBan) VALUES (?, ?, ?, ?)";
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
		String sql = "SELECT ct.maThuoc, t.tenThuoc, ct.soLuong, ct.donGiaBan"
				+ "FROM ChiTietPhieuBanThuoc ct JOIN Thuoc t ON ct.maThuoc = t.maThuoc " + "WHERE ct.maPBT = ?";

		try (Connection conn = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setString(1, maHD);

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

	public Object[] getPhieuBanThuocInfo(String maHD) {
		String sql = "SELECT maPBT, ngayLap, maNV, maKH, trangThai, phuongThucThanhToan "
				+ "FROM PhieuBanThuoc WHERE maPBT = ?";

		try (Connection conn = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setString(1, maHD);

			ResultSet rs = stmt.executeQuery();
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

			if (rs.next()) {
				return new Object[] { rs.getString("maPBT"), sdf.format(rs.getDate("ngayLap")),
						rs.getString("maNV"), rs.getString("maKH"), rs.getString("trangThai"),
						rs.getString("phuongThucThanhToan") };
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
