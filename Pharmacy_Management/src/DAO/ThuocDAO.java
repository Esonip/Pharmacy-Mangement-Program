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

public class ThuocDAO {
    
    public List<Object[]> loadDataToTable() {
    	List<Object[]> data = new ArrayList<Object[]>();
    	
		try (Connection con = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement stmt = con.prepareStatement("SELECT * FROM Thuoc")) {
				
			ResultSet rs = stmt.executeQuery();
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			
			while (rs.next()) {
				String hsd = sdf.format(rs.getDate("hanSuDung"));
				String formatGiaNhap = String.format("%,.0fđ", rs.getFloat("donGiaNhap"));
				String formatGiaBan = String.format("%,.0fđ", rs.getFloat("donGiaBan"));
				
				Object[] row = {rs.getString("maThuoc"), rs.getString("tenThuoc"), 
								rs.getString("donViTinh"), formatGiaNhap, 
								formatGiaBan, hsd, rs.getString("hamLuong"), 
								rs.getInt("soLuongTon"), rs.getInt("soLuongThucTe")};
				data.add(row);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			JOptionPane.showMessageDialog(null, "Lỗi khi tải dữ liệu: " + e.getMessage());
		}
		return data;
    }
    
    
	public boolean isDuplicateMaThuoc(String maThuoc) {
		String sql = "SELECT COUNT(*) FROM Thuoc WHERE maThuoc = ?";
		try (Connection con = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement stmt = con.prepareStatement(sql)) {

			stmt.setString(1, maThuoc);
			ResultSet rs = stmt.executeQuery();
			rs.next();
			return rs.getInt(1) > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean themThuoc(String maThuoc, String tenThuoc, String donViTinh, String donGiaNhap, String donGiaBan,
			String hanSuDung, String hamLuong, String soLuongTon, String soLuongThucTe) throws ParseException {
		String sql = "INSERT INTO Thuoc VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		java.util.Date parsed = sdf.parse(hanSuDung);
		java.sql.Date hsdsql = new java.sql.Date(parsed.getTime());
		
		float Nhap = Float.parseFloat(donGiaNhap.replaceAll("[^\\d.]", ""));
		float Ban = Float.parseFloat(donGiaBan.replaceAll("[^\\d.]", ""));
		
		int SLTon = Integer.parseInt(soLuongTon);
		int SLThucTe = Integer.parseInt(soLuongThucTe);
		
		try (Connection con = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement stmt = con.prepareStatement(sql)) {

			stmt.setString(1, maThuoc);
			stmt.setString(2, tenThuoc);
			stmt.setString(3, donViTinh);
			stmt.setDouble(4, Nhap);
			stmt.setDouble(5, Ban);
			stmt.setDate(6, hsdsql);
			stmt.setString(7, hamLuong);
			stmt.setInt(8, SLTon);
			stmt.setInt(9, SLThucTe);
			stmt.executeUpdate();
			
//			JOptionPane.showMessageDialog(null, "Thêm dữ liệu thành công!");
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
//			JOptionPane.showMessageDialog(null, "Lỗi khi thêm dữ liệu: " + e.getMessage());
			return false;
		}
	}
	
	public boolean capNhatThuoc(String maThuoc, String tenThuoc, String donViTinh, String donGiaNhap, String donGiaBan,
			String hanSuDung, String hamLuong, String soLuongTon, String soLuongThucTe) throws ParseException {
		
		String sql = "UPDATE Thuoc SET tenThuoc=?, donViTinh=?, donGiaNhap=?, donGiaBan=?, hanSuDung=?, hamLuong=?, soLuongTon=?, soLuongThucTe=? WHERE maThuoc=?";
		
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		java.util.Date parsed = sdf.parse(hanSuDung);
		java.sql.Date hsdsql = new java.sql.Date(parsed.getTime());
		
		float Nhap = Float.parseFloat(donGiaNhap.replaceAll("[^\\d.]", ""));
		float Ban = Float.parseFloat(donGiaBan.replaceAll("[^\\d.]", ""));
		
		int SLTon = Integer.parseInt(soLuongTon);
		int SLThucTe = Integer.parseInt(soLuongThucTe);
		
		
		try (Connection con = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement stmt = con.prepareStatement(sql)) {
			
			stmt.setString(1, tenThuoc);
			stmt.setString(2, donViTinh);
			stmt.setDouble(3, Nhap);
			stmt.setDouble(4, Ban);
			stmt.setDate(5, hsdsql);
			stmt.setString(6, hamLuong);
			stmt.setInt(7, SLTon);
			stmt.setInt(8, SLThucTe);
			stmt.setString(9, maThuoc);
			stmt.executeUpdate();

//			JOptionPane.showMessageDialog(null, "Cập nhật dữ liệu thành công!");
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
//			JOptionPane.showMessageDialog(null, "Lỗi khi cập nhật dữ liệu: " + e.getMessage());
			return false;
		}
	}
	
	public void xoaThuoc(String maThuoc) {
		String sql = "DELETE FROM Thuoc WHERE maThuoc=?";
		try (Connection con = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement stmt = con.prepareStatement(sql)) {

			stmt.setString(1, maThuoc);
			stmt.executeUpdate();
			JOptionPane.showMessageDialog(null, "Xóa dữ liệu thành công!");
		} catch (SQLException e) {
			e.printStackTrace();
			JOptionPane.showMessageDialog(null, "Lỗi khi xóa dữ liệu: " + e.getMessage());
		}
	}
	
	public List<Object[]> timKiemThuoc(String maThuoc, String tenThuoc, String soLuongTon) {
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
		if (!soLuongTon.isEmpty()) {
	        sql.append(" AND soLuongTon = ?");
	        params.add(Integer.parseInt(soLuongTon));
	    }
		

		try (Connection con = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
				PreparedStatement stmt = con.prepareStatement(sql.toString())) {

			for (int i = 0; i < params.size(); i++) {
				stmt.setObject(i + 1, params.get(i));
			}
			ResultSet rs = stmt.executeQuery();
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

			while (rs.next()) {
				String hsd = sdf.format(rs.getDate("hanSuDung"));
				String formatGiaNhap = String.format("%,.0fđ", rs.getFloat("donGiaNhap"));
				String formatGiaBan = String.format("%,.0fđ", rs.getFloat("donGiaBan"));
				
				Object[] row = { rs.getString("maThuoc"), rs.getString("tenThuoc"), rs.getString("donViTinh"),
						formatGiaNhap, formatGiaBan, hsd, rs.getString("hamLuong"),
						rs.getInt("soLuongTon"), rs.getInt("soLuongThucTe") };
				data.add(row);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			JOptionPane.showMessageDialog(null, "Lỗi khi tìm kiếm dữ liệu: " + e.getMessage());
		} catch (NumberFormatException e) {
	        JOptionPane.showMessageDialog(null, "Số lượng tồn phải là số nguyên!");
	    }
		return data;
	}
	
	public List<Object[]> getAllThuoc() {
		List<Object[]> list = new ArrayList<Object[]>();
        String sql = "SELECT * FROM Thuoc";
        try (Connection con = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
                PreparedStatement stmt = con.prepareStatement(sql)) {

            ResultSet rs = stmt.executeQuery();
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

            while (rs.next()) {
                String hsd = sdf.format(rs.getDate("hanSuDung"));
                String formatGiaNhap = String.format("%,.0fđ", rs.getFloat("donGiaNhap"));
				String formatGiaBan = String.format("%,.0fđ", rs.getFloat("donGiaBan"));
                
                Object[] row = { rs.getString("maThuoc"), rs.getString("tenThuoc"), rs.getString("donViTinh"),
                		formatGiaNhap, formatGiaBan, hsd, rs.getString("hamLuong"),
                        rs.getInt("soLuongTon"), rs.getInt("soLuongThucTe") };
                list.add(row);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(null, "Lỗi khi tải dữ liệu: " + e.getMessage());
        }
        return list;
	}
	
	public String getLastMaThuoc() {
	    String sql = "SELECT MAX(maThuoc) FROM Thuoc";
	    try (Connection con = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
	         PreparedStatement stmt = con.prepareStatement(sql);
	         ResultSet rs = stmt.executeQuery()) {
	        
	        if (rs.next()) {
	            String lastMaThuoc = rs.getString(1);
	            if (lastMaThuoc != null && !lastMaThuoc.isEmpty()) {
	                return lastMaThuoc;
	            }
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        JOptionPane.showMessageDialog(null, "Lỗi khi lấy mã thuốc cuối cùng: " + e.getMessage());
	    }
	    return "T000";
	}
}