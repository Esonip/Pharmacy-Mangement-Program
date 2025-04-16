package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import connectDB.ConnectDB;


public class ChiTietHoaDonDAO {

	public List<Object[]> getChiTietHoaDon(String maHoaDon) {
	    List<Object[]> chiTietList = new ArrayList<>();
	    String sql = "SELECT c.maThuoc, t.tenThuoc, c.soLuong, c.donGiaBan " +
	                 "FROM ChiTietHoaDon c JOIN Thuoc t ON c.maThuoc = t.maThuoc " +
	                 "WHERE c.maHD = ?";
	    
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
	            
	            Object[] row = {tenThuoc, soLuong, formatGiaBan, formatThanhTien };
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
	
}
