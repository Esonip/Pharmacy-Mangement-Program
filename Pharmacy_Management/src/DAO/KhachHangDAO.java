package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.swing.JOptionPane;

import connectDB.*;

public class KhachHangDAO {

	public List<Object[]> loadDataToTable() {
		List<Object[]> data = new ArrayList<>();
		try (Connection conn = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement stmt = conn.prepareStatement(
						"SELECT maKH, hoTen, ngaySinh, diaChi, soDienThoai, email FROM KhachHang")) {

			ResultSet rs = stmt.executeQuery();
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

			while (rs.next()) {
				String ngaySinh = sdf.format(rs.getDate("ngaySinh"));
				Object[] row = { rs.getString("maKH"), rs.getString("hoTen"), ngaySinh, rs.getString("diaChi"),
						rs.getString("soDienThoai"), rs.getString("email")};
				data.add(row);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			JOptionPane.showMessageDialog(null, "Lỗi khi tải dữ liệu: " + e.getMessage());
		}
		return data;
	}

	public Map<String, String> getKhachHangData() {
		Map<String, String> khachHangData = new HashMap<>();
		String sql = "SELECT maKH, hoTen FROM KhachHang";
		try (Connection conn = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery()) {
			while (rs.next()) {
				khachHangData.put(rs.getString("maKH"), rs.getString("hoTen"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return khachHangData;
	}

	public boolean isDuplicateDienThoai(String dienThoai, String maKH) {
		String sql = "SELECT COUNT(*) FROM KhachHang WHERE soDienThoai = ?";
		if (maKH != null) {
			sql += " AND maKH != ?";
		}
		try (Connection conn = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, dienThoai);
			if (maKH != null) {
				pstmt.setString(2, maKH);
			}
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) > 0;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			JOptionPane.showMessageDialog(null, "Lỗi khi kiểm tra điện thoại: " + e.getMessage());
		}
		return false;
	}

	public boolean isDuplicateEmail(String email, String maKH) {
		String sql = "SELECT COUNT(*) FROM KhachHang WHERE email = ?";
		if (maKH != null) {
			sql += " AND maKH != ?";
		}
		try (Connection conn = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, email);
			if (maKH != null) {
				pstmt.setString(2, maKH);
			}
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) > 0;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			JOptionPane.showMessageDialog(null, "Lỗi khi kiểm tra Email: " + e.getMessage());
		}
		return false;
	}

	public void saveKhachHang(boolean isEditing, String maKH, String hoTen, String ngaySinh, String diaChi, String soDienThoai,String email) throws ParseException {
		try (Connection conn = ConnectDB.getConnection("DB_QuanLyNhaThuoc")) {
			String sql;
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			java.util.Date parsed = sdf.parse(ngaySinh);
			java.sql.Date datesql = new java.sql.Date(parsed.getTime());
			
			if (isEditing) {
				sql = "UPDATE KhachHang SET hoTen=?, ngaySinh=?, diaChi=?, soDienThoai=?, email=? WHERE maKH=?";
				try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
					pstmt.setString(1, hoTen);
					pstmt.setDate(2, datesql);
					pstmt.setString(3, diaChi);
					pstmt.setString(4, soDienThoai);
					pstmt.setString(5, email);
					pstmt.setString(6, maKH);
					pstmt.executeUpdate();
				}
			} else {
				sql = "INSERT INTO KhachHang (maKH, hoTen, ngaySinh, diaChi, soDienThoai, email) VALUES (?, ?, ?, ?, ?, ?)";
				try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
					pstmt.setString(1, maKH);
					pstmt.setString(2, hoTen);
					pstmt.setDate(3, datesql);
					pstmt.setString(4, diaChi);
					pstmt.setString(5, soDienThoai);
					pstmt.setString(6, email);
					pstmt.executeUpdate();
				}
			}

			JOptionPane.showMessageDialog(null, isEditing ? "Cập nhật thành công!" : "Thêm mới thành công!");
		} catch (SQLException e) {
			e.printStackTrace();
			JOptionPane.showMessageDialog(null, "Lỗi: " + e.getMessage());
		}
	}

	public void deleteKhachHang(String maKH) {
		try (Connection conn = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement pstmt = conn.prepareStatement("DELETE FROM KhachHang WHERE maKH = ?")) {

			pstmt.setString(1, maKH);
			pstmt.executeUpdate();

			JOptionPane.showMessageDialog(null, "Xóa thành công!");
		} catch (SQLException e) {
			e.printStackTrace();
			JOptionPane.showMessageDialog(null, "Lỗi khi xóa: " + e.getMessage());
		}
	}

	public List<Object[]> searchKhachHang(String maKH, String tenKH, String dienThoai, String diaChi) {
		List<Object[]> data = new ArrayList<>();
		StringBuilder sql = new StringBuilder(
				"SELECT maKH, hoTen, ngaySinh, diaChi, soDienThoai, email FROM KhachHang WHERE 1=1");
		List<Object> params = new ArrayList<>();

		if (!maKH.isEmpty()) {
			sql.append(" AND maKH LIKE ?");
			params.add("%" + maKH + "%");
		}
		if (!tenKH.isEmpty()) {
			sql.append(" AND hoTen LIKE ?");
			params.add("%" + tenKH + "%");
		}
		if (!dienThoai.isEmpty()) {
			sql.append(" AND soDienThoai LIKE ?");
			params.add("%" + dienThoai + "%");
		}
		if (!diaChi.isEmpty()) {
			sql.append(" AND diaChi LIKE ?");
			params.add("%" + diaChi + "%");
		}

		try (Connection conn = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement pstmt = conn.prepareStatement(sql.toString())) {

			for (int i = 0; i < params.size(); i++) {
				pstmt.setObject(i + 1, params.get(i));
			}

			ResultSet rs = pstmt.executeQuery();
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

			while (rs.next()) {
				String ngaySinh = sdf.format(rs.getDate("ngaySinh"));
				Object[] row = { rs.getString("maKH"), rs.getString("hoTen"), ngaySinh, rs.getString("diaChi"),
						rs.getString("soDienThoai"), rs.getString("email") };
				data.add(row);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			JOptionPane.showMessageDialog(null, "Lỗi khi tìm kiếm: " + e.getMessage());
		}
		return data;
	}

	public List<Object[]> getAllKhachHang() {
		List<Object[]> List = new ArrayList<>();
		String sql = "SELECT * FROM KhachHang";
		try (Connection connection = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement statement = connection.prepareStatement(sql);
				ResultSet resultSet = statement.executeQuery()) {

			while (resultSet.next()) {
				String maKH = resultSet.getString("maKH");
				String tenKH = resultSet.getString("hoTen");
				
				SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                String ngaySinh = sdf.format(resultSet.getDate("ngaySinh"));
                
				String diaChi = resultSet.getString("diaChi");
				String soDienThoai = resultSet.getString("soDienThoai");
				String email = resultSet.getString("email");

				Object[] nv = { maKH, tenKH, ngaySinh, diaChi, soDienThoai, email };
				List.add(nv);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return List;
	}
	
	public String getLastMaKH() {
		String sql = "SELECT MAX(maKH) FROM KhachHang";
		try (Connection conn = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery()) {
			if (rs.next()) {
				String lastMaKH = rs.getString(1);
				if (lastMaKH != null && !lastMaKH.isEmpty()) {
	                return lastMaKH;
	            }
			}
		} catch (SQLException e) {
			e.printStackTrace();
			JOptionPane.showMessageDialog(null, "Lỗi khi lấy mã khách hàng cuối cùng: " + e.getMessage());
		}
		return "KH000";
	}
}
