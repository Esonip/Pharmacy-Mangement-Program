package GUI;

import DAO.ChiTietBanThuocDAO;
import DAO.ChiTietDatThuocDAO;
import DAO.ChiTietNhapThuocDAO;
import DAO.ChiTietTraNhapThuocDAO;
import DAO.ChiTietTraThuocDAO;
import DAO.TaiChinhDAO;
import com.toedter.calendar.JDateChooser;
import javax.swing.*;
import javax.swing.border.EmptyBorder;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.JTableHeader;

import java.awt.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.swing.border.TitledBorder;

public class Frame_TaiChinh_LSGD extends JPanel {

	private static final long serialVersionUID = 1L;
	private JPanel pnlBackGround;
	private JTable table;
	private DefaultTableModel modelGiaoDich;
	private JDateChooser dateChooser;
	private TaiChinhDAO taiChinhDAO = new TaiChinhDAO();
	private ChiTietBanThuocDAO chiTietBanThuocDAO = new ChiTietBanThuocDAO();
	private ChiTietDatThuocDAO chiTietDatThuocDAO = new ChiTietDatThuocDAO();
	private ChiTietNhapThuocDAO chiTietNhapThuocDAO = new ChiTietNhapThuocDAO();
	private ChiTietTraThuocDAO chiTietTraThuocDAO = new ChiTietTraThuocDAO();
	private ChiTietTraNhapThuocDAO chiTietTraNhapThuocDAO = new ChiTietTraNhapThuocDAO();
	private JTextField txtTienVao;
	private JTextField txtTienRa;
	private JTextField txtTongCong;

	public Frame_TaiChinh_LSGD() {
		setLayout(null);
		setPreferredSize(new Dimension(1550, 755));

		// Background panel
		pnlBackGround = new JPanel();
		pnlBackGround.setBounds(0, 0, 1543, 751);
		pnlBackGround.setBackground(new Color(254, 222, 192));
		pnlBackGround.setBorder(new EmptyBorder(5, 5, 5, 5));
		add(pnlBackGround);
		pnlBackGround.setLayout(null);

		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(20, 91, 1500, 650);
		pnlBackGround.add(scrollPane);

		table = new JTable();
		table.setFont(new Font("Segoe UI", Font.PLAIN, 15));
		JTableHeader header = table.getTableHeader();
		header.setFont(new Font("Segoe UI", Font.BOLD, 16));
		modelGiaoDich = new DefaultTableModel(new Object[][] {},
				new String[] { "Mã Phiếu", "Mã NV", "Ngày Giao Dịch", "Hình Thức", "Loại Giao Dịch", "Mã Hóa Đơn"}) {
			private static final long serialVersionUID = 1L;
			boolean[] columnEditables = new boolean[] { false, false, false, false, false, false };

			public boolean isCellEditable(int row, int column) {
				return columnEditables[column];
			}
		};

		table.setModel(modelGiaoDich);
		table.setRowHeight(30);

		DefaultTableCellRenderer centerRenderer = new DefaultTableCellRenderer();
		centerRenderer.setHorizontalAlignment(SwingConstants.CENTER);

		for (int i = 0; i < table.getColumnCount(); i++) {
			table.getColumnModel().getColumn(i).setCellRenderer(centerRenderer);
		}
		scrollPane.setViewportView(table);

		JPanel PanelXuLy = new JPanel();
		PanelXuLy.setLayout(null);
		PanelXuLy.setFont(new Font("Segoe UI", Font.PLAIN, 14));
		PanelXuLy.setBorder(new TitledBorder(null, "Tác vụ xử lý", TitledBorder.LEADING, TitledBorder.TOP, null, null));
		PanelXuLy.setBackground(new Color(242, 132, 123));
		PanelXuLy.setBounds(20, 11, 480, 70);
		pnlBackGround.add(PanelXuLy);

		JLabel lblDate = new JLabel("Chọn ngày:");
		lblDate.setBounds(29, 10, 156, 50);
		PanelXuLy.add(lblDate);
		lblDate.setFont(new Font("Segoe UI", Font.BOLD, 20));

		dateChooser = new JDateChooser();
		dateChooser.setBounds(167, 18, 190, 36);
		PanelXuLy.add(dateChooser);
		dateChooser.setDateFormatString("dd/MM/yyyy");
		dateChooser.setDate(new Date());
		dateChooser.setFont(new Font("Segoe UI", Font.PLAIN, 20));
		
		JButton btnTaiLai = new JButton("");
		btnTaiLai.setIcon(new ImageIcon("icon\\refresh.png"));
		btnTaiLai.setFont(new Font("Segoe UI", Font.BOLD, 18));
		btnTaiLai.setBackground(Color.BLACK);
		btnTaiLai.setBounds(399, 15, 52, 45);
		PanelXuLy.add(btnTaiLai);
		
		JPanel PanelTaiChinh = new JPanel();
		PanelTaiChinh.setLayout(null);
		PanelTaiChinh.setFont(new Font("Segoe UI", Font.PLAIN, 14));
		PanelTaiChinh.setBorder(new TitledBorder(null, "Tài chính", TitledBorder.LEADING, TitledBorder.TOP, null, null));
		PanelTaiChinh.setBackground(new Color(242, 132, 123));
		PanelTaiChinh.setBounds(555, 11, 965, 70);
		pnlBackGround.add(PanelTaiChinh);
		
		JLabel lblTienVao = new JLabel("Tiền vào:");
		lblTienVao.setFont(new Font("Segoe UI", Font.BOLD, 20));
		lblTienVao.setBounds(17, 10, 98, 50);
		PanelTaiChinh.add(lblTienVao);
		
		JLabel lblTienRa = new JLabel("Tiền ra:");
		lblTienRa.setFont(new Font("Segoe UI", Font.BOLD, 20));
		lblTienRa.setBounds(335, 10, 89, 50);
		PanelTaiChinh.add(lblTienRa);
		
		JLabel lblTongCong = new JLabel("Tổng cộng:");
		lblTongCong.setFont(new Font("Segoe UI", Font.BOLD, 20));
		lblTongCong.setBounds(642, 10, 113, 50);
		PanelTaiChinh.add(lblTongCong);
		
		txtTienVao = new JTextField();
		txtTienVao.setBounds(112, 18, 190, 36);
		txtTienVao.setEditable(false);
		txtTienVao.setForeground(Color.GREEN);
		txtTienVao.setFont(new Font("Segoe UI", Font.PLAIN, 20));
		txtTienVao.setColumns(10);
		PanelTaiChinh.add(txtTienVao);
		
		txtTienRa = new JTextField();
		txtTienRa.setBounds(417, 18, 190, 36);
		txtTienRa.setEditable(false);
		txtTienRa.setForeground(Color.RED);
		txtTienRa.setFont(new Font("Segoe UI", Font.PLAIN, 20));
		txtTienRa.setColumns(10);
		PanelTaiChinh.add(txtTienRa);
		
		txtTongCong = new JTextField();
		txtTongCong.setBounds(765, 18, 190, 36);
		txtTongCong.setEditable(false);
		txtTongCong.setForeground(Color.BLUE);
		txtTongCong.setFont(new Font("Segoe UI", Font.PLAIN, 20));
		txtTongCong.setColumns(10);
		PanelTaiChinh.add(txtTongCong);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		// Tải dữ liệu mặc định ngày hôm nay
		loadAllTransactions(sdf.format(new Date()));

		dateChooser.getDateEditor().addPropertyChangeListener("date", evt -> {
			Date selectedDate = dateChooser.getDate();
			if (selectedDate != null) {
				loadAllTransactions(sdf.format(selectedDate));
			}
		});
		
		btnTaiLai.addActionListener(e -> {
			Date selectedDate = dateChooser.getDate();
			if (selectedDate != null) {
				dateChooser.setDate(new Date());
				loadAllTransactions(sdf.format(new Date()));
			}
		});
		
		table.addMouseListener(new java.awt.event.MouseAdapter() {
			public void mouseClicked(java.awt.event.MouseEvent evt) {
				int selectedRow = table.getSelectedRow();
				String maDon = (String) table.getValueAt(selectedRow, 5);
				String maNV = (String) table.getValueAt(selectedRow, 1);
				String ngayGiaoDich = (String) table.getValueAt(selectedRow, 2);
				String loaiGiaoDich = (String) table.getValueAt(selectedRow, 4);

				if (evt.getClickCount() == 2 && selectedRow != -1) {
					
					if (loaiGiaoDich.equals("Bán thuốc")) {
						Object[] HDBanThuoc = chiTietBanThuocDAO.getPhieuBanThuocInfo(maDon);
						String maKH = (String) HDBanThuoc[3];
						String trangThaiStr = (String) HDBanThuoc[4];
						String phuongThucThanhToanStr = (String) HDBanThuoc[5];
						HoaDonBanThuoc(maDon, ngayGiaoDich, maNV, maKH, trangThaiStr, phuongThucThanhToanStr);
					}
					else if (loaiGiaoDich.equals("Đặt thuốc")) {
						Object[] HDDatThuoc = chiTietDatThuocDAO.getPhieuDatThuocInfo(maDon);
						String maKH = (String) HDDatThuoc[2];
						String ngayGiao = (String) HDDatThuoc[4];
						String trangThaiStr = (String) HDDatThuoc[5];
						String phuongThucThanhToanStr = (String) HDDatThuoc[6];
						HoaDonDatThuoc(maDon, maNV, maKH, ngayGiaoDich, ngayGiao, trangThaiStr, phuongThucThanhToanStr);
					}
					else if (loaiGiaoDich.equals("Nhập thuốc")) {
						Object[] HDNhapThuoc = chiTietNhapThuocDAO.getPhieuNhapThuocInfo(maDon);
						String maNCC = (String) HDNhapThuoc[2];
						String trangThaiStr = (String) HDNhapThuoc[4];
						String phuongThucThanhToanStr = (String) HDNhapThuoc[5];
						HoaDonNhapThuoc(maDon, maNV, maNCC, ngayGiaoDich, trangThaiStr, phuongThucThanhToanStr);
					} 
					else if (loaiGiaoDich.equals("Trả thuốc")) {
						Object[] HDTraThuoc = chiTietTraThuocDAO.getPhieuTraThuocInfo(maDon);
						String maKH = (String) HDTraThuoc[2];
						String lyDoTra = (String) HDTraThuoc[4];
						HoaDonTraThuoc(maDon, maNV, maKH, ngayGiaoDich, lyDoTra);
					} 
					else if (loaiGiaoDich.equals("Trả nhập thuốc")) {
						Object[] HDTraNhap = chiTietTraNhapThuocDAO.getPhieuTraNhapThuocInfo(maDon);
						String maNCC = (String) HDTraNhap[2];
						String lyDoTra = (String) HDTraNhap[4];
						HoaDonTraNhapThuoc(maDon, maNV, maNCC, ngayGiaoDich, lyDoTra);
					}
				}
			}
		});

	}

	// Load all transactions
	private void loadAllTransactions(String date) {
		modelGiaoDich.setRowCount(0); // Clear table
		List<Object[]> transactions = taiChinhDAO.getGiaoDich(date);
		
		double tienVao = 0;
		double tienRa = 0;
		
		for (Object[] transaction : transactions) {
			String loaiGiaoDich = (String) transaction[4];
			double soTien = getSoTien(loaiGiaoDich, (String) transaction[5]);
			if (loaiGiaoDich.equals("Bán thuốc") || loaiGiaoDich.equals("Đặt thuốc") || loaiGiaoDich.equals("Trả nhập thuốc")) {
				tienVao += soTien;
			} else {
				tienRa += soTien;
			}
		}
		
		txtTienVao.setText(String.format("%,.0fđ", tienVao));
		txtTienRa.setText(String.format("%,.0fđ", tienRa));
		double tongCong = tienVao - tienRa;
		txtTongCong.setText(tongCong > 0 ? "+" + String.format("%,.0fđ", tongCong) : String.format("%,.0fđ", tongCong));
		
		for (Object[] row : transactions) {
			modelGiaoDich.addRow(row);
		}
	}
	
	private void HoaDonBanThuoc(String maPBT, String ngayLap, String maNV, String maKhachHang,
			String trangThaiStr, String phuongThucThanhToanStr) {
		try {
			List<Object[]> data = chiTietBanThuocDAO.getChiTietPhieuBanThuoc(maPBT);

			Dialog_XemPhieuBanThuoc huyHoaDon = new Dialog_XemPhieuBanThuoc(null, maPBT, ngayLap, maNV, maKhachHang,
					trangThaiStr, phuongThucThanhToanStr, data);
			huyHoaDon.setVisible(true);
		} catch (Exception e) {
			JOptionPane.showMessageDialog(this, "Lỗi khi in hóa đơn: " + e.getMessage());
			e.printStackTrace();
		}
	}
	
	private void HoaDonDatThuoc(String maPDT, String maNV, String maKH, String ngayDat, String ngayGiao,
			String trangThaiStr, String phuongThucThanhToanStr) {
		try {
			List<Object[]> data = chiTietDatThuocDAO.getChiTietPhieuDatHang(maPDT);

			Dialog_XemPhieuDatThuoc huyPhieuDatHang = new Dialog_XemPhieuDatThuoc(null, maPDT, maNV, maKH, ngayDat, ngayGiao,
					trangThaiStr, phuongThucThanhToanStr, data);
			huyPhieuDatHang.setVisible(true);
		} catch (Exception e) {
			JOptionPane.showMessageDialog(this, "Lỗi khi in phiếu đặt hàng: " + e.getMessage());
			e.printStackTrace();
		}
	}
	
	private void HoaDonNhapThuoc(String maPNT, String maNV, String maNCC, String ngayNhap, String trangThaiStr,
			String phuongThucThanhToanStr) {
		try {
			List<Object[]> data = chiTietNhapThuocDAO.getChiTietPhieuNhapThuoc(maPNT);

			Dialog_XemPhieuNhapThuoc huyPhieuNhap = new Dialog_XemPhieuNhapThuoc(null, maPNT, maNV, maNCC, ngayNhap,
					trangThaiStr, phuongThucThanhToanStr, data);
			huyPhieuNhap.setVisible(true);
		} catch (Exception e) {
			JOptionPane.showMessageDialog(this, "Lỗi khi in phiếu nhập: " + e.getMessage());
			e.printStackTrace();
		}
	}
	
	private void HoaDonTraThuoc(String maPTT, String maNV, String maKhachHang, String ngayTra, String lyDoTra) {
		try {
			List<Object[]> data = chiTietTraThuocDAO.getChiTietPhieuTraThuoc(maPTT);

			Dialog_XemPhieuTraThuoc huyHoaDon = new Dialog_XemPhieuTraThuoc(null, maPTT, maNV, maKhachHang, ngayTra,
					lyDoTra, data);
			huyHoaDon.setVisible(true);
		} catch (Exception e) {
			JOptionPane.showMessageDialog(this, "Lỗi khi in hóa đơn: " + e.getMessage());
			e.printStackTrace();
		}
	}
	
	private void HoaDonTraNhapThuoc(String maTNT, String maNV, String maKhachHang, String ngayTra, String lyDoTra) {
		try {
			List<Object[]> data = chiTietTraNhapThuocDAO.getChiTietPhieuTraNhapThuoc(maTNT);

			Dialog_XemPhieuTraNhapThuoc huyHoaDon = new Dialog_XemPhieuTraNhapThuoc(null, maTNT, maNV, maKhachHang, ngayTra,
					lyDoTra, data);
			huyHoaDon.setVisible(true);
		} catch (Exception e) {
			JOptionPane.showMessageDialog(this, "Lỗi khi in hóa đơn: " + e.getMessage());
			e.printStackTrace();
		}
	}
	
	private double getSoTien(String loaiGiaoDich, String maHoaDon) {
		double soTien = 0;
		
		if (loaiGiaoDich.equals("Bán thuốc")) {
			List<Object[]> chiTiet = chiTietBanThuocDAO.getChiTietPhieuBanThuoc(maHoaDon);
			for (Object[] row : chiTiet) {
				String tien = row[3].toString().replace("đ", "").replace(",", "");
				soTien += Double.parseDouble(tien);
			}
		} else if (loaiGiaoDich.equals("Đặt thuốc")) {
			List<Object[]> chiTiet = chiTietDatThuocDAO.getChiTietPhieuDatHang(maHoaDon);
			for (Object[] row : chiTiet) {
				String tien = row[3].toString().replace("đ", "").replace(",", "");
				soTien += Double.parseDouble(tien);
			}
		} else if (loaiGiaoDich.equals("Nhập thuốc")) {
			List<Object[]> chiTiet = chiTietNhapThuocDAO.getChiTietPhieuNhapThuoc(maHoaDon);
			for (Object[] row : chiTiet) {
				String tien = row[3].toString().replace("đ", "").replace(",", "");
				soTien += Double.parseDouble(tien);
			}
		} else if (loaiGiaoDich.equals("Trả thuốc")) {
			List<Object[]> chiTiet = chiTietTraThuocDAO.getChiTietPhieuTraThuoc(maHoaDon);
			for (Object[] row : chiTiet) {
				String tien = row[3].toString().replace("đ", "").replace(",", "");
				soTien += Double.parseDouble(tien);
			}
		} else if (loaiGiaoDich.equals("Trả nhập thuốc")) {
			List<Object[]> chiTiet = chiTietTraNhapThuocDAO.getChiTietPhieuTraNhapThuoc(maHoaDon);
			for (Object[] row : chiTiet) {
				String tien = row[3].toString().replace("đ", "").replace(",", "");
				soTien += Double.parseDouble(tien);
			}
		}
		
		return soTien;
	}
}