package GUI;

import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.border.LineBorder;
import javax.swing.border.TitledBorder;

import java.awt.Color;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.awt.Font;
import javax.swing.JTextField;
import com.toedter.calendar.JDateChooser;

import DAO.KhachHangDAO;
import DAO.NhanVienDAO;
import DAO.ThuocDAO;
import connectDB.ConnectDB;

import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.JTableHeader;
import javax.swing.table.TableModel;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.print.PrinterException;
import java.awt.print.PrinterJob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.NumberFormat;
import java.util.Date;
import java.util.Map;
import java.awt.event.ActionEvent;
import javax.swing.JComboBox;
import entity.SanPham;
import java.util.List;
import java.util.Locale;

public class Frame_GiaoDich_BanThuoc extends JPanel implements ActionListener {

	private static final long serialVersionUID = 1L;
	private JPanel pnlBackGround;
	private JTable tableSanPham;
	private JTable tableChiTiet;
	private JTextField txtMaHD;
	private JButton btnIn;
	private JButton btnLuu;
	private JButton btnXoa;
	private JLabel txtTongTien;
	private KhachHangDAO khachHangDAO;
	private NhanVienDAO nhanVienDAO;
	private ThuocDAO sanPhamDAO = new ThuocDAO();
	public static final int NO_SUCH_PAGE = 1;
	public static final int PAGE_EXISTS = 0;
	/**
	 * Launch the application.
	 */
//    public static void main(String[] args) {
//        EventQueue.invokeLater(new Runnable() {
//            public void run() {
//                try {
//                    FrameQuanLyChiTietHoaDon frame = new FrameQuanLyChiTietHoaDon();
//                    frame.setVisible(true);
//                } catch (Exception e) {
//                    e.printStackTrace();
//                }
//            }
//        });
//    }
	private JTextField txtTimSanPham;
	private JTextField txtSDT;
	private JTextField txtMaKH;
	private JTextField txtTenKH;

	/**
	 * Create the frame.
	 */
	@SuppressWarnings({ "serial", "unchecked", "rawtypes" })
	public Frame_GiaoDich_BanThuoc() {
		setLayout(null);

		pnlBackGround = new JPanel();
		pnlBackGround.setBounds(0, 0, 1559, 761);
		pnlBackGround.setBackground(new Color(254, 222, 192));
		pnlBackGround.setBorder(new EmptyBorder(5, 5, 5, 5));
		add(pnlBackGround);
		pnlBackGround.setLayout(null);

		JPanel panel = new JPanel();
		panel.setBounds(167, 280, 614, 59);
		panel.setBackground(new Color(242, 132, 123));
		panel.setLayout(null);
		pnlBackGround.add(panel);

		txtTimSanPham = new JTextField();
		txtTimSanPham.setFont(new Font("Times New Roman", Font.PLAIN, 20));
		txtTimSanPham.setBounds(9, 7, 264, 43);
		panel.add(txtTimSanPham);
		txtTimSanPham.setColumns(10);

		JButton btnTimSanPham = new JButton("Tìm");
		btnTimSanPham.setIcon(new ImageIcon("icon\\find.png"));
		btnTimSanPham.addActionListener(e -> btnTimSanPhamAction());
		btnTimSanPham.setFont(new Font("Times New Roman", Font.BOLD, 20));
		btnTimSanPham.setBounds(292, 7, 139, 43);
		panel.add(btnTimSanPham);

		JButton btnTaiLaiTimSanPham = new JButton("Tải Lại");
		btnTaiLaiTimSanPham.setIcon(new ImageIcon("icon\\refresh.png"));
		btnTaiLaiTimSanPham.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				txtTimSanPham.setText("");
				loadDataToTable();
			}
		});
		btnTaiLaiTimSanPham.setFont(new Font("Times New Roman", Font.BOLD, 20));
		btnTaiLaiTimSanPham.setBounds(453, 8, 139, 43);
		panel.add(btnTaiLaiTimSanPham);

		JPanel panel_left = new JPanel();
		TitledBorder titledBorderLeft = BorderFactory.createTitledBorder(new LineBorder(Color.RED, 2),
				"Danh sách sản phẩm");
		titledBorderLeft.setTitleFont(new Font("Arial", Font.BOLD, 17));
		panel_left.setBorder(titledBorderLeft);
		panel_left.setBackground(new Color(242, 132, 123));
		panel_left.setBounds(5, 13, 1059, 257);
		pnlBackGround.add(panel_left);
		panel_left.setLayout(null);

		JScrollPane scrollPaneSanPham = new JScrollPane();
		scrollPaneSanPham.setBounds(24, 19, 1025, 207);
		panel_left.add(scrollPaneSanPham);

		tableSanPham = new JTable();
		tableSanPham.setFont(new Font("Tahoma", Font.PLAIN, 15));
		JTableHeader headerSanPham = tableSanPham.getTableHeader();
		headerSanPham.setFont(new Font("Arial", Font.BOLD, 16));
		tableSanPham.setModel(new DefaultTableModel(new Object[][] {},
				new String[] { "Mã Hàng", "Tên Hàng", "Mô Tả", "Đơn Giá", "Số lượng", "Ngày Sản Xuất" }) {
			Class[] columnTypes = new Class[] { String.class, String.class, String.class, Integer.class, Integer.class,
					String.class };

			public Class getColumnClass(int columnIndex) {
				return columnTypes[columnIndex];
			}
		});
//        tableSanPham.getColumnModel().getColumn(2).setResizable(false);
		scrollPaneSanPham.setViewportView(tableSanPham);
		JPanel panel_right = new JPanel();
		TitledBorder titledBorderRight = BorderFactory.createTitledBorder(new LineBorder(Color.RED, 2),
				"Chi tiết hóa đơn");
		titledBorderRight.setTitleFont(new Font("Arial", Font.BOLD, 17));
		panel_right.setBorder(titledBorderRight);
		panel_right.setBackground(new Color(220, 128, 78));
		panel_right.setBounds(8, 349, 1060, 403);
		pnlBackGround.add(panel_right);
		panel_right.setLayout(null);

		JScrollPane scrollPaneChiTiet = new JScrollPane();
		scrollPaneChiTiet.setBounds(13, 24, 1029, 300);
		panel_right.add(scrollPaneChiTiet);

		tableChiTiet = new JTable();
		tableChiTiet.setFont(new Font("Tahoma", Font.PLAIN, 15));
		JTableHeader headerChiTiet = tableChiTiet.getTableHeader();
		headerChiTiet.setFont(new Font("Arial", Font.BOLD, 16));
		scrollPaneChiTiet.setViewportView(tableChiTiet);
		tableChiTiet.setModel(new DefaultTableModel(new Object[][] {},
				new String[] { "Mã Sản Phẩm", "Tên Hàng", "Mô Tả", "Đơn giá", "Số lượng" }) {
			Class[] columnTypes = new Class[] { String.class, String.class, String.class, Integer.class,
					Integer.class };

			@SuppressWarnings({})
			public Class getColumnClass(int columnIndex) {
				return columnTypes[columnIndex];
			}
		});

		btnIn = new JButton("In");
		btnIn.setBounds(909, 348, 122, 42);
		panel_right.add(btnIn);
		btnIn.setIcon(new ImageIcon("icon\\print.png"));
		btnIn.setForeground(new Color(64, 0, 64));
		btnIn.setFont(new Font("Tahoma", Font.BOLD, 16));
		btnIn.setBackground(new Color(167, 62, 20));

		btnLuu = new JButton("Lưu");
		btnLuu.setBounds(757, 348, 122, 42);
		panel_right.add(btnLuu);
		btnLuu.setIcon(new ImageIcon("icon\\save.png"));
		btnLuu.setForeground(new Color(64, 0, 64));
		btnLuu.setFont(new Font("Tahoma", Font.BOLD, 16));
		btnLuu.setBackground(new Color(167, 62, 20));

		btnXoa = new JButton("Xóa");
		btnXoa.setBounds(611, 348, 122, 42);
		panel_right.add(btnXoa);
		btnXoa.setIcon(new ImageIcon("icon\\delete.png"));
		btnXoa.setForeground(new Color(64, 0, 64));
		btnXoa.setFont(new Font("Tahoma", Font.BOLD, 16));
		btnXoa.setBackground(new Color(167, 62, 20));

		JButton btnTaoMoi = new JButton("Tạo");
		btnTaoMoi.addActionListener(e -> btnTaoMoiAction());
		btnTaoMoi.setIcon(new ImageIcon("icon\\add.png"));
		btnTaoMoi.setForeground(new Color(64, 0, 64));
		btnTaoMoi.setFont(new Font("Tahoma", Font.BOLD, 16));
		btnTaoMoi.setBackground(new Color(167, 62, 20));
		btnTaoMoi.setBounds(475, 348, 122, 42);
		panel_right.add(btnTaoMoi);

		JPanel panel_1 = new JPanel();
		panel_1.setBounds(1075, 13, 477, 215);
		pnlBackGround.add(panel_1);
		panel_1.setLayout(null);

		JLabel lblTenKH = new JLabel("Tên KH:");
		lblTenKH.setFont(new Font("Tahoma", Font.BOLD, 18));
		lblTenKH.setBounds(10, 152, 81, 45);
		panel_1.add(lblTenKH);

		JLabel lblMaKH = new JLabel("Mã KH:");
		lblMaKH.setFont(new Font("Tahoma", Font.BOLD, 18));
		lblMaKH.setBounds(10, 81, 81, 45);
		panel_1.add(lblMaKH);

		JLabel lblSoDienThoai = new JLabel("SĐT:");
		lblSoDienThoai.setFont(new Font("Tahoma", Font.BOLD, 18));
		lblSoDienThoai.setBounds(10, 10, 81, 45);
		panel_1.add(lblSoDienThoai);

		txtSDT = new JTextField();
		txtSDT.setBounds(101, 13, 300, 45);
		panel_1.add(txtSDT);
		txtSDT.setColumns(10);

		txtMaKH = new JTextField();
		txtMaKH.setColumns(10);
		txtMaKH.setBounds(101, 81, 300, 45);
		panel_1.add(txtMaKH);

		txtTenKH = new JTextField();
		txtTenKH.setColumns(10);
		txtTenKH.setBounds(101, 152, 300, 45);
		panel_1.add(txtTenKH);

		JButton btnNewButton = new JButton("");
		btnNewButton.setIcon(
				new ImageIcon("F:\\iuh 22-26\\HK6\\PTUD\\Major Assignment\\Pharmacy_Management\\icon\\refresh.png"));
		btnNewButton.setBounds(423, 15, 44, 43);
		panel_1.add(btnNewButton);

		JPanel panel_2 = new JPanel();
		panel_2.setLayout(null);
		panel_2.setBackground(new Color(220, 128, 78));
		panel_2.setBounds(1081, 454, 471, 275);
		pnlBackGround.add(panel_2);

		JDateChooser dateChooser = new JDateChooser();
		dateChooser.setBounds(183, 95, 264, 43);
		panel_2.add(dateChooser);
		dateChooser.setDateFormatString("yyyy-MM-dd"); // format datechooser
		dateChooser.setDate(new Date()); // set datechooser thành ngày hiện tại
		dateChooser.setEnabled(false); // không cho phép chỉnh sửa ngày trên datechooser

		JLabel lblNgayLap = new JLabel("Ngày lập :");
		lblNgayLap.setBounds(47, 92, 110, 45);
		panel_2.add(lblNgayLap);
		lblNgayLap.setFont(new Font("Tahoma", Font.BOLD, 19));
		JLabel lblMaHD = new JLabel("Mã hóa đơn :");
		lblMaHD.setBounds(34, 16, 160, 45);
		panel_2.add(lblMaHD);
		lblMaHD.setFont(new Font("Tahoma", Font.BOLD, 19));

		txtMaHD = new JTextField();
		txtMaHD.setBounds(178, 23, 264, 43);
		panel_2.add(txtMaHD);
		txtMaHD.setText(generateMaHD());
		txtMaHD.setFont(new Font("Tahoma", Font.BOLD, 15));
		txtMaHD.setEditable(false);
		txtMaHD.setColumns(10);

		txtTongTien = new JLabel("");
		txtTongTien.setBounds(184, 171, 248, 45);
		panel_2.add(txtTongTien);
		txtTongTien.setFont(new Font("Tahoma", Font.BOLD, 18));

		JLabel lblTongTien = new JLabel("Tổng tiền :");
		lblTongTien.setBounds(46, 170, 122, 45);
		panel_2.add(lblTongTien);
		lblTongTien.setFont(new Font("Tahoma", Font.BOLD, 20));
		
		JLabel lblPhngThcThanh = new JLabel("Phương thức thanh toán:");
		lblPhngThcThanh.setBounds(20, 226, 251, 45);
		panel_2.add(lblPhngThcThanh);
		lblPhngThcThanh.setFont(new Font("Tahoma", Font.BOLD, 18));
		dateChooser.getDateEditor().getUiComponent().setFont(new Font("Tahoma", Font.PLAIN, 16));

		// Thêm data vào combobox khách hàng
		khachHangDAO = new KhachHangDAO();
		Map<String, String> khachHangData = khachHangDAO.getKhachHangData();
		for (Map.Entry<String, String> entry : khachHangData.entrySet()) {
			txtMaKH.addItem(entry.getKey());
			txtTenKH.addItem(entry.getValue());
		}
		// Tải dữ liệu vào bảng sản phẩm
		loadDataToTable();

		tableSanPham.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				int selectedRow = tableSanPham.getSelectedRow();
				if (selectedRow != -1) {
					String maHang = (String) tableSanPham.getValueAt(selectedRow, 0);
					String tenHang = (String) tableSanPham.getValueAt(selectedRow, 1);
					String moTa = (String) tableSanPham.getValueAt(selectedRow, 2);
					double donGia = (double) tableSanPham.getValueAt(selectedRow, 3);
					int soLuong = (int) tableSanPham.getValueAt(selectedRow, 4);

					String input = JOptionPane.showInputDialog("Nhập số lượng:");
					if (input != null && !input.isEmpty()) {
						try {
							int soLuongNhap = Integer.parseInt(input);
							if (soLuongNhap > 0 && soLuongNhap <= soLuong) {
								DefaultTableModel chiTietModel = (DefaultTableModel) tableChiTiet.getModel();
								chiTietModel.addRow(new Object[] { maHang, tenHang, moTa, donGia, soLuongNhap });
								tableChiTiet.getColumnModel().getColumn(3)
										.setCellRenderer(new DefaultTableCellRenderer() {
											private static final long serialVersionUID = 1L;
											private NumberFormat currencyFormat = NumberFormat
													.getCurrencyInstance(new Locale("vi", "VN"));

											@Override
											protected void setValue(Object value) {
												if (value instanceof Number) {
													value = currencyFormat.format((Number) value);
												}
												super.setValue(value);
											}
										});
								// Update quantity in tableSanPham
								tableSanPham.setValueAt(soLuong - soLuongNhap, selectedRow, 4);

								// Calculate total amount
								double tongTien = 0;
								for (int i = 0; i < chiTietModel.getRowCount(); i++) {
									double gia = (double) chiTietModel.getValueAt(i, 3);
									int soLuongMua = (int) chiTietModel.getValueAt(i, 4);
									tongTien += gia * soLuongMua;
								}

								// Update txtTongTien
								NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(new Locale("vi", "VN"));
								txtTongTien.setText(currencyFormat.format(tongTien));
							} else {
								JOptionPane.showMessageDialog(null, "Số lượng không hợp lệ!");
							}
						} catch (NumberFormatException ex) {
							JOptionPane.showMessageDialog(null, "Vui lòng nhập số lượng hợp lệ!");
						}
					}
				}
			}
		});

		btnXoa.addActionListener(this);
		btnLuu.addActionListener(this);
		btnIn.addActionListener(this);
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		Object o = e.getSource();
		if (o.equals(btnIn)) {
			printInvoice();
		}
		if (o.equals(btnLuu)) {
			saveChiTietHDToDatabase();
		}
		if (o.equals(btnXoa)) {
			int selectedRow = tableChiTiet.getSelectedRow();
			if (selectedRow != -1) {
				DefaultTableModel chiTietModel = (DefaultTableModel) tableChiTiet.getModel();
				String maHang = (String) chiTietModel.getValueAt(selectedRow, 0);
				int soLuongNhap = (int) chiTietModel.getValueAt(selectedRow, 4);
				chiTietModel.removeRow(selectedRow);
				DefaultTableModel sanPhamModel = (DefaultTableModel) tableSanPham.getModel();
				for (int i = 0; i < sanPhamModel.getRowCount(); i++) {
					if (sanPhamModel.getValueAt(i, 0).equals(maHang)) {
						int currentSoLuong = (int) sanPhamModel.getValueAt(i, 4);
						sanPhamModel.setValueAt(currentSoLuong + soLuongNhap, i, 4);
						break;
					}
				}
				calculateTotalCost();
			} else {
				JOptionPane.showMessageDialog(null, "Vui lòng chọn sản phẩm để xóa!");
			}
		}
	}

	private void loadDataToTable() {
		ThuocDAO sanPhamDAO = new ThuocDAO();
		List<SanPham> sanPhamList = sanPhamDAO.getAllSanPham();
		DefaultTableModel model = (DefaultTableModel) tableSanPham.getModel();

		// Clear existing rows
		model.setRowCount(0);

		// Add rows to the table model
		for (SanPham sp : sanPhamList) {
			model.addRow(new Object[] { sp.getMaHang(), sp.getTenHang(), sp.getMoTa(), sp.getDonGia(), sp.getSoLuong(),
					sp.getNgaySX() });
		}

		// Format the "Đơn giá" column to display currency format
		tableSanPham.getColumnModel().getColumn(3).setCellRenderer(new DefaultTableCellRenderer() {
			private static final long serialVersionUID = 1L;
			private NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(new Locale("vi", "VN"));

			@Override
			protected void setValue(Object value) {
				if (value instanceof Number) {
					value = currencyFormat.format((Number) value);
				}
				super.setValue(value);
			}
		});
	}

	private void saveChiTietHDToDatabase() {
		String maHD = txtMaHD.getText();
		String maNV = txtMaNV.getSelectedItem().toString();
		String maKhachHang = txtMaKH.toString();
		Date ngayLap = new Date();

		String sqlHoaDon = "INSERT INTO HoaDon (MaHD, MANV, maKhachHang, NgayLap) VALUES (?, ?, ?, ?)";
		String sqlChiTietHD = "INSERT INTO ChiTietHD (MaHD, MaHang, SoLuongSanPham, DonGia) VALUES (?, ?, ?, ?)";
		String sqlUpdateSanPham = "UPDATE DanhSachSanPham SET SoLuong = SoLuong - ? WHERE MaHang = ?";

		try (Connection connection = ConnectDB.getConnection("DB_QLBH");
				PreparedStatement statementHoaDon = connection.prepareStatement(sqlHoaDon);
				PreparedStatement statementChiTietHD = connection.prepareStatement(sqlChiTietHD);
				PreparedStatement statementUpdateSanPham = connection.prepareStatement(sqlUpdateSanPham)) {

			// Insert into HoaDon table
			statementHoaDon.setString(1, maHD);
			statementHoaDon.setString(2, maNV);
			statementHoaDon.setString(3, maKhachHang);
			statementHoaDon.setDate(4, new java.sql.Date(ngayLap.getTime()));
			statementHoaDon.executeUpdate();

			// Insert into ChiTietHD table and update DanhSachSanPham table
			for (int i = 0; i < tableChiTiet.getRowCount(); i++) {
				String maHang = (String) tableChiTiet.getValueAt(i, 0);
				int soLuongSanPham = (int) tableChiTiet.getValueAt(i, 4);
				String donGiaStr = tableChiTiet.getValueAt(i, 3).toString();

				// Remove currency formatting
				donGiaStr = donGiaStr.replaceAll("[^\\d.]", "");
				double donGia = Double.parseDouble(donGiaStr);

				statementChiTietHD.setString(1, maHD);
				statementChiTietHD.setString(2, maHang);
				statementChiTietHD.setInt(3, soLuongSanPham);
				statementChiTietHD.setDouble(4, donGia);
				statementChiTietHD.addBatch();

				// Update product quantity in DanhSachSanPham table
				statementUpdateSanPham.setInt(1, soLuongSanPham);
				statementUpdateSanPham.setString(2, maHang);
				statementUpdateSanPham.addBatch();
			}
			statementChiTietHD.executeBatch();
			statementUpdateSanPham.executeBatch();
			JOptionPane.showMessageDialog(null, "Lưu hóa đơn và chi tiết hóa đơn thành công!");
		} catch (SQLException e) {
			e.printStackTrace();
			JOptionPane.showMessageDialog(null, "Lỗi khi lưu hóa đơn và chi tiết hóa đơn!");
		}
	}

	private void printInvoice() {
		// check if the MaHD is available
		if (!isHoaDonExists(txtMaHD.getText())) {
			JOptionPane.showMessageDialog(null, "Hóa đơn không tồn tại!");
			return;
		}
		PrinterJob job = PrinterJob.getPrinterJob();
		job.setPrintable((graphics, pageFormat, pageIndex) -> {
			if (pageIndex > 0) {
				return NO_SUCH_PAGE;
			}

			// Print the header
			graphics.drawString("Hóa Đơn", 100, 100);
			graphics.drawString("Mã Hóa Đơn: " + txtMaHD.getText(), 100, 120);
			graphics.drawString("Tên Khách Hàng: " + txtTenKH.toString(), 100, 140);
			graphics.drawString("Tên Nhân Viên: " + txtTenNV.toString(), 100, 160);
			graphics.drawString("Ngày Lập: " + new java.sql.Date(new Date().getTime()), 100, 180);

			// Print the table
			graphics.drawString("Mã Hàng", 100, 200);
			graphics.drawString("Tên Hàng", 200, 200);
			graphics.drawString("Đơn Giá", 350, 200);
			graphics.drawString("Số lượng", 480, 200);
			JTable table = tableChiTiet;
			TableModel model = table.getModel();
			int y = 220;
			for (int i = 0; i < model.getRowCount(); i++) {
				graphics.drawString(model.getValueAt(i, 0).toString(), 100, y);
				graphics.drawString(model.getValueAt(i, 1).toString(), 200, y);
				graphics.drawString(model.getValueAt(i, 3).toString(), 350, y);
				graphics.drawString(model.getValueAt(i, 4).toString(), 480, y);
				y += 20;
			}

			// Print the total amount
			graphics.drawString("Thành tiền: " + txtTongTien.getText(), 100, y + 20);

			return PAGE_EXISTS;
		});

		boolean doPrint = job.printDialog();
		if (doPrint) {
			try {
				job.print();
			} catch (PrinterException e) {
				e.printStackTrace();
			}
		}
	}

	private String generateMaHD() {
		String newMaHD = "HD001"; // Default value if no records are found
		String sql = "SELECT MAX(MaHD) FROM ChiTietHD";

		try (Connection conn = ConnectDB.getConnection("DB_QLBH");
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery()) {

			if (rs.next()) {
				String maxMaHD = rs.getString(1);
				if (maxMaHD != null) {
					int num = Integer.parseInt(maxMaHD.substring(2)) + 1;
					newMaHD = String.format("HD%03d", num);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return newMaHD;
	}

	// Clear Table after clicked button Lưu
	private void clearTableChiTietHoaDon() {
		DefaultTableModel model = (DefaultTableModel) tableChiTiet.getModel();
		model.setRowCount(0);
	}

	private boolean isHoaDonExists(String maHD) {
		String sql = "SELECT * FROM HoaDon WHERE MaHD = ?";
		try (Connection conn = ConnectDB.getConnection("DB_QLBH");
				PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, maHD);
			ResultSet resultSet = pstmt.executeQuery();
			return resultSet.next();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	// Tính tổng tiền
	private void calculateTotalCost() {
		DefaultTableModel chiTietModel = (DefaultTableModel) tableChiTiet.getModel();
		double tongTien = 0;
		for (int i = 0; i < chiTietModel.getRowCount(); i++) {
			double gia = (double) chiTietModel.getValueAt(i, 3);
			int soLuongMua = (int) chiTietModel.getValueAt(i, 4);
			tongTien += gia * soLuongMua;
		}
		NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(new Locale("vi", "VN"));
		txtTongTien.setText(currencyFormat.format(tongTien));
	}

	// Tạo mới hóa đơn
	private void btnTaoMoiAction() {
		clearTableChiTietHoaDon();
		txtMaHD.setText(generateMaHD());
		calculateTotalCost();
	}

	// Tìm sản phẩm
	private void btnTimSanPhamAction() {
		String tenSanPham = txtTimSanPham.getText();
		List<SanPham> sanPhamList = sanPhamDAO.searchSanPham(tenSanPham);
		DefaultTableModel model = (DefaultTableModel) tableSanPham.getModel();
		model.setRowCount(0);
		for (SanPham sp : sanPhamList) {
			model.addRow(new Object[] { sp.getMaHang(), sp.getTenHang(), sp.getMoTa(), sp.getDonGia(), sp.getSoLuong(),
					sp.getNgaySX() });
		}
	}
}
