package GUI;

import javax.swing.JPanel;

import javax.swing.border.EmptyBorder;
import javax.swing.border.LineBorder;
import javax.swing.border.TitledBorder;

import java.awt.Color;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.awt.Font;
import java.awt.GridLayout;

import javax.swing.JTextField;

import javax.swing.Timer;

import com.toedter.calendar.JDateChooser;

import DAO.ChiTietHoaDonDAO;
import DAO.KhachHangDAO;
import DAO.Thuoc_GiaoDichDAO;

import javax.swing.BorderFactory;
import javax.swing.ButtonGroup;
import javax.swing.DefaultComboBoxModel;
import javax.swing.ImageIcon;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.JTableHeader;
import javax.swing.JButton;
import java.awt.event.FocusAdapter;
import java.awt.event.FocusEvent;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
import java.util.Vector;
import javax.swing.JComboBox;
import javax.swing.JDialog;

import java.util.List;
import javax.swing.JRadioButton;

public class Frame_Thuoc_GiaoDich_BanThuoc extends JPanel {

	private static final long serialVersionUID = 1L;
	private JPanel pnlBackGround;
	private JTable tableThuoc;
	private JTable tableChiTiet;
	private KhachHangDAO khachHangDAO = new KhachHangDAO();
	private Thuoc_GiaoDichDAO thuocGiaoDichDAO = new Thuoc_GiaoDichDAO();
	private ChiTietHoaDonDAO chiTietHoaDonDAO = new ChiTietHoaDonDAO();
	public static final int NO_SUCH_PAGE = 1;
	public static final int PAGE_EXISTS = 0;
	private JTextField txtTimMaThuoc;
	private JTextField txtMaKH;
	private JTextField txtTenKH;
	private JTextField txtTongTien;
	private JTextField txtMaHoaDon;
	private JDateChooser txtNgayLap;
	private DefaultTableModel modelThuoc, modelChiTiet;
	private JTextField txtTimTenThuoc;
	private JComboBox<String> comboBoxSDT;
	private JRadioButton btnRadioTienMat, btnRadioChuyenKhoan;
	private int phuongThucThanhToan = 0; // 0: Tiền mặt, 1: Chuyển khoản

	/**
	 * Create the frame.
	 */
	public Frame_Thuoc_GiaoDich_BanThuoc(String maNV) {
		setLayout(null);

		pnlBackGround = new JPanel();
		pnlBackGround.setBounds(0, 10, 1559, 761);
		pnlBackGround.setBackground(new Color(254, 222, 192));
		pnlBackGround.setBorder(new EmptyBorder(5, 5, 5, 5));
		add(pnlBackGround);
		pnlBackGround.setLayout(null);

		JPanel panel_TimKiem = new JPanel();
		panel_TimKiem.setBounds(1065, 10, 460, 192);
		panel_TimKiem.setBackground(new Color(220, 128, 78));
		panel_TimKiem.setLayout(null);
		TitledBorder titledBorder = BorderFactory.createTitledBorder(new LineBorder(Color.WHITE, 2), "Tìm Kiếm Thuốc");
		titledBorder.setTitleFont(new Font("Segoe UI", Font.PLAIN, 12));
		panel_TimKiem.setBorder(titledBorder);
		pnlBackGround.add(panel_TimKiem);

		txtTimMaThuoc = new JTextField();
		txtTimMaThuoc.setFont(new Font("Segoe UI", Font.PLAIN, 20));
		txtTimMaThuoc.setBounds(159, 31, 264, 43);
		panel_TimKiem.add(txtTimMaThuoc);
		txtTimMaThuoc.setColumns(10);

		JButton btnTimThuoc = new JButton("Tìm");
		btnTimThuoc.setIcon(new ImageIcon("icon\\find.png"));
		btnTimThuoc.setFont(new Font("Times New Roman", Font.BOLD, 20));
		btnTimThuoc.setBounds(59, 139, 139, 43);
		panel_TimKiem.add(btnTimThuoc);

		JButton btnTaiLaiThuoc = new JButton("Tải Lại");
		btnTaiLaiThuoc.setIcon(new ImageIcon("icon\\refresh.png"));
		btnTaiLaiThuoc.setFont(new Font("Times New Roman", Font.BOLD, 20));
		btnTaiLaiThuoc.setBounds(256, 139, 139, 43);
		panel_TimKiem.add(btnTaiLaiThuoc);

		JLabel lblMaThuoc = new JLabel("Mã Thuốc:");
		lblMaThuoc.setFont(new Font("Segoe UI", Font.BOLD, 20));
		lblMaThuoc.setBounds(24, 32, 146, 42);
		panel_TimKiem.add(lblMaThuoc);

		JLabel lblTenThuoc = new JLabel("Tên Thuốc:");
		lblTenThuoc.setFont(new Font("Segoe UI", Font.BOLD, 20));
		lblTenThuoc.setBounds(24, 85, 146, 42);
		panel_TimKiem.add(lblTenThuoc);

		txtTimTenThuoc = new JTextField();
		txtTimTenThuoc.setText("");
		txtTimTenThuoc.setFont(new Font("Segoe UI", Font.PLAIN, 20));
		txtTimTenThuoc.setColumns(10);
		txtTimTenThuoc.setBounds(159, 84, 264, 43);
		panel_TimKiem.add(txtTimTenThuoc);

		JPanel Panel_Thuoc = new JPanel();
		TitledBorder titledBorderLeft = BorderFactory.createTitledBorder(new LineBorder(Color.WHITE, 2),
				"Danh Sách Thuốc");
		titledBorderLeft.setTitleFont(new Font("Segoe UI", Font.PLAIN, 12));
		Panel_Thuoc.setBorder(titledBorderLeft);
		Panel_Thuoc.setBackground(new Color(220, 128, 78));
		Panel_Thuoc.setBounds(10, 10, 1045, 347);
		pnlBackGround.add(Panel_Thuoc);
		Panel_Thuoc.setLayout(null);

		JScrollPane scrollPaneThuoc = new JScrollPane();
		scrollPaneThuoc.setBounds(20, 25, 1004, 300);
		Panel_Thuoc.add(scrollPaneThuoc);

		tableThuoc = new JTable();
		tableThuoc.setFont(new Font("Segoe UI", Font.PLAIN, 15));
		JTableHeader headerSanPham = tableThuoc.getTableHeader();
		headerSanPham.setFont(new Font("Segoe UI", Font.BOLD, 16));
		tableThuoc.setModel(new DefaultTableModel(new Object[][] {},
				new String[] { "Mã Thuốc", "Tên Thuốc", "Đơn Vị Tính", "Đơn Giá", "Số Lượng Tồn" }) {
			private static final long serialVersionUID = 1L;
			boolean[] columnEditables = new boolean[] { false, false, false, false, false };

			public boolean isCellEditable(int row, int column) {
				return columnEditables[column];
			}
		});
		tableThuoc.getColumnModel().getColumn(2).setPreferredWidth(55);
		tableThuoc.setRowHeight(30);

		DefaultTableCellRenderer centerRenderer = new DefaultTableCellRenderer();
		centerRenderer.setHorizontalAlignment(JLabel.CENTER);

		for (int i = 0; i < tableThuoc.getColumnCount(); i++) {
			tableThuoc.getColumnModel().getColumn(i).setCellRenderer(centerRenderer);
		}
		scrollPaneThuoc.setViewportView(tableThuoc);

		JPanel Panel_ChiTietHoaDon = new JPanel();
		TitledBorder titledBorderRight = BorderFactory.createTitledBorder(new LineBorder(Color.WHITE, 2),
				"Chi tiết hóa đơn");
		titledBorderRight.setTitleFont(new Font("Segoe UI", Font.PLAIN, 12));
		Panel_ChiTietHoaDon.setBorder(titledBorderRight);
		Panel_ChiTietHoaDon.setBackground(new Color(220, 128, 78));
		Panel_ChiTietHoaDon.setBounds(10, 368, 1045, 362);
		pnlBackGround.add(Panel_ChiTietHoaDon);
		Panel_ChiTietHoaDon.setLayout(null);

		JScrollPane scrollPaneChiTiet = new JScrollPane();
		scrollPaneChiTiet.setBounds(21, 21, 1000, 320);
		Panel_ChiTietHoaDon.add(scrollPaneChiTiet);

		tableChiTiet = new JTable();
		tableChiTiet.setFont(new Font("Segoe UI", Font.PLAIN, 15));
		JTableHeader headerChiTiet = tableChiTiet.getTableHeader();
		headerChiTiet.setFont(new Font("Segoe UI", Font.BOLD, 16));
		tableChiTiet.setModel(new DefaultTableModel(new Object[][] {},
				new String[] { "Mã Thuốc", "Tên Thuốc", "Số Lượng", "Đơn Giá", "Thành Tiền" }) {
			private static final long serialVersionUID = 1L;
			boolean[] columnEditables = new boolean[] { false, false, false, false, false };

			public boolean isCellEditable(int row, int column) {
				return columnEditables[column];
			}

		});
		tableChiTiet.getColumnModel().getColumn(2).setPreferredWidth(55);
		tableChiTiet.setRowHeight(30);

		DefaultTableCellRenderer centerRendererCT = new DefaultTableCellRenderer();
		centerRendererCT.setHorizontalAlignment(JLabel.CENTER);
		for (int i = 0; i < tableChiTiet.getColumnCount(); i++) {
			tableChiTiet.getColumnModel().getColumn(i).setCellRenderer(centerRendererCT);
		}
		scrollPaneChiTiet.setViewportView(tableChiTiet);

		JPanel Panel_KhachHang = new JPanel();
		Panel_KhachHang.setBackground(new Color(220, 128, 78));
		Panel_KhachHang.setBounds(1065, 212, 460, 200);
		TitledBorder titledBorder_KH = BorderFactory.createTitledBorder(new LineBorder(Color.WHITE, 2),
				"Thông Tin Khách Hàng");
		titledBorder_KH.setTitleFont(new Font("Segoe UI", Font.PLAIN, 12));
		Panel_KhachHang.setBorder(titledBorder_KH);
		pnlBackGround.add(Panel_KhachHang);
		Panel_KhachHang.setLayout(null);

		JLabel lblTenKH = new JLabel("Tên KH:");
		lblTenKH.setFont(new Font("Segoe UI", Font.BOLD, 20));
		lblTenKH.setBounds(10, 139, 81, 45);
		Panel_KhachHang.add(lblTenKH);

		JLabel lblMaKH = new JLabel("Mã KH:");
		lblMaKH.setFont(new Font("Segoe UI", Font.BOLD, 20));
		lblMaKH.setBounds(10, 79, 81, 45);
		Panel_KhachHang.add(lblMaKH);

		JLabel lblSoDienThoai = new JLabel("SĐT:");
		lblSoDienThoai.setFont(new Font("Segoe UI", Font.BOLD, 20));
		lblSoDienThoai.setBounds(10, 23, 81, 45);
		Panel_KhachHang.add(lblSoDienThoai);

		txtMaKH = new JTextField();
		txtMaKH.setColumns(10);
		txtMaKH.setBounds(127, 79, 264, 43);
		txtMaKH.setFont(new Font("Segoe UI", Font.PLAIN, 20));
		Panel_KhachHang.add(txtMaKH);
		txtMaKH.setEditable(false);

		txtTenKH = new JTextField();
		txtTenKH.setColumns(10);
		txtTenKH.setBounds(127, 139, 264, 43);
		txtTenKH.setFont(new Font("Segoe UI", Font.PLAIN, 20));
		Panel_KhachHang.add(txtTenKH);
		txtTenKH.setEditable(false);

		JButton btnTaiLaiKhachHang = new JButton("");
		btnTaiLaiKhachHang.setIcon(new ImageIcon("icon\\refresh.png"));
		btnTaiLaiKhachHang.setBounds(401, 23, 44, 43);
		Panel_KhachHang.add(btnTaiLaiKhachHang);

		JButton btnKhachHangVangLai = new JButton("");
		btnKhachHangVangLai.setIcon(new ImageIcon("icon\\guest.png"));
		btnKhachHangVangLai.setBounds(401, 79, 44, 43);
		Panel_KhachHang.add(btnKhachHangVangLai);

		comboBoxSDT = new JComboBox<>();
		comboBoxSDT.setEditable(true);
		comboBoxSDT.setSelectedItem(null);
		comboBoxSDT.setBounds(127, 23, 264, 43);
		comboBoxSDT.setFont(new Font("Segoe UI", Font.PLAIN, 20));
		Panel_KhachHang.add(comboBoxSDT);

		JPanel Panel_HoaDon = new JPanel();
		Panel_HoaDon.setLayout(null);
		Panel_HoaDon.setBackground(new Color(220, 128, 78));
		Panel_HoaDon.setBounds(1065, 422, 460, 231);
		TitledBorder titledBorder_HoaDon = BorderFactory.createTitledBorder(new LineBorder(Color.WHITE, 2), "Hóa Đơn");
		titledBorder_HoaDon.setTitleFont(new Font("Segoe UI", Font.PLAIN, 12));
		Panel_HoaDon.setBorder(titledBorder_HoaDon);
		pnlBackGround.add(Panel_HoaDon);

		txtNgayLap = new JDateChooser();
		txtNgayLap.setBounds(130, 79, 264, 43);
		Panel_HoaDon.add(txtNgayLap);
		txtNgayLap.setDateFormatString("dd/MM/yyyy");
		txtNgayLap.setFont(new Font("Segoe UI", Font.PLAIN, 20));
		txtNgayLap.setDate(new Date()); // set datechooser thành ngày hiện tại
		txtNgayLap.setEnabled(false);

		JLabel lblNgayLap = new JLabel("Ngày lập :");
		lblNgayLap.setBounds(10, 79, 122, 45);
		Panel_HoaDon.add(lblNgayLap);
		lblNgayLap.setFont(new Font("Segoe UI", Font.BOLD, 20));
		JLabel lblMaHD = new JLabel("Mã HĐ:");
		lblMaHD.setBounds(10, 24, 122, 45);
		Panel_HoaDon.add(lblMaHD);
		lblMaHD.setFont(new Font("Segoe UI", Font.BOLD, 20));

		JLabel lblTongTien = new JLabel("Tổng tiền :");
		lblTongTien.setBounds(10, 134, 122, 45);
		Panel_HoaDon.add(lblTongTien);
		lblTongTien.setFont(new Font("Segoe UI", Font.BOLD, 20));

		txtTongTien = new JTextField();
		txtTongTien.setBounds(130, 136, 264, 43);
		txtTongTien.setFont(new Font("Segoe UI", Font.PLAIN, 20));
		Panel_HoaDon.add(txtTongTien);
		txtTongTien.setColumns(10);
		txtTongTien.setEditable(false);

		txtMaHoaDon = new JTextField();
		txtMaHoaDon.setColumns(10);
		txtMaHoaDon.setBounds(130, 24, 264, 43);
		txtMaHoaDon.setFont(new Font("Segoe UI", Font.PLAIN, 20));
		Panel_HoaDon.add(txtMaHoaDon);
		txtMaHoaDon.setEditable(false);

		btnRadioTienMat = new JRadioButton("Tiền Mặt");
		btnRadioTienMat.setFont(new Font("Segoe UI", Font.PLAIN, 20));
		btnRadioTienMat.setBackground(new Color(224, 128, 78));
		btnRadioTienMat.setBounds(20, 185, 122, 43);
		Panel_HoaDon.add(btnRadioTienMat);

		btnRadioChuyenKhoan = new JRadioButton("Chuyển Khoản");
		btnRadioChuyenKhoan.setFont(new Font("Segoe UI", Font.PLAIN, 20));
		btnRadioChuyenKhoan.setBackground(new Color(224, 128, 78));
		btnRadioChuyenKhoan.setBounds(144, 185, 164, 43);
		Panel_HoaDon.add(btnRadioChuyenKhoan);

		ButtonGroup buttonGroup = new ButtonGroup();
		buttonGroup.add(btnRadioTienMat);
		buttonGroup.add(btnRadioChuyenKhoan);
		btnRadioTienMat.setSelected(true);

		JButton btnTaiLaiHoaDon = new JButton("");
		btnTaiLaiHoaDon.setIcon(new ImageIcon("icon\\refresh.png"));
		btnTaiLaiHoaDon.setBounds(404, 24, 44, 43);
		Panel_HoaDon.add(btnTaiLaiHoaDon);

		JButton btnThanhToan = new JButton("THANH TOÁN");
		btnThanhToan.setBounds(1065, 663, 219, 51);
		pnlBackGround.add(btnThanhToan);
		btnThanhToan.setIcon(null);
		btnThanhToan.setForeground(new Color(255, 255, 255));
		btnThanhToan.setFont(new Font("Segoe UI", Font.BOLD, 20));
		btnThanhToan.setBackground(new Color(0, 128, 255));
		btnThanhToan.setOpaque(true);
		btnThanhToan.setContentAreaFilled(true);
		btnThanhToan.setBorderPainted(false);

		JButton btnChoXuLy = new JButton("CHỜ XỬ LÝ");
		btnChoXuLy.setOpaque(true);
		btnChoXuLy.setForeground(Color.WHITE);
		btnChoXuLy.setFont(new Font("Segoe UI", Font.BOLD, 20));
		btnChoXuLy.setContentAreaFilled(true);
		btnChoXuLy.setBorderPainted(false);
		btnChoXuLy.setBackground(new Color(255, 0, 0));
		btnChoXuLy.setBounds(1306, 663, 219, 51);
		pnlBackGround.add(btnChoXuLy);
		txtNgayLap.getDateEditor().getUiComponent().setFont(new Font("Segoe UI", Font.PLAIN, 16));

		loadDataToTable();
		generateMaHD();
		goiYSoDT();

		// Panel Tìm Mã Thuốc
		txtTimMaThuoc.addKeyListener(new java.awt.event.KeyAdapter() {
			public void keyPressed(java.awt.event.KeyEvent evt) {
				if (evt.getKeyCode() == KeyEvent.VK_ENTER) {
					btnTimActionPerformed();
				}
			}
		});
		txtTimTenThuoc.addKeyListener(new java.awt.event.KeyAdapter() {
			public void keyPressed(java.awt.event.KeyEvent evt) {
				if (evt.getKeyCode() == KeyEvent.VK_ENTER) {
					btnTimActionPerformed();
				}
			}
		});

		btnTimThuoc.addActionListener(e -> btnTimActionPerformed());
		btnTaiLaiThuoc.addActionListener(e -> btnTaiLaiThuocActionPerformed());
		btnKhachHangVangLai.addActionListener(e -> btnKhachHangVangLaiActionPerformed());
		btnTaiLaiKhachHang.addActionListener(e -> btnTaiLaiKhachHangActionPerformed());
		btnTaiLaiHoaDon.addActionListener(e -> btnTaiLaiHoaDonActionPerformed());
		btnRadioTienMat.addActionListener(e -> phuongThucThanhToanActionPerformed(0));
		btnRadioChuyenKhoan.addActionListener(e -> phuongThucThanhToanActionPerformed(1));
		btnThanhToan.addActionListener(e -> {
			try {
				xuLyThanhToan(1, maNV);
			} catch (ParseException | IOException e1) {
				e1.printStackTrace();
			}
		});
		btnChoXuLy.addActionListener(e -> {
			try {
				xuLyThanhToan(0, maNV);
			} catch (ParseException | IOException e1) {
				e1.printStackTrace();
			}
		});

		// Them thuốc vào bảng chi tiết hóa đơn
		tableThuoc.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				if (e.getClickCount() == 2) {
					int row = tableThuoc.getSelectedRow();
					if (row >= 0) {
						nhapSoLuongThuoc(row);
					}
				}
			}
		});

		// Xóa hoặc chỉnh sửa thuốc trong bảng chi tiết hóa đơn
		tableChiTiet.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				if (e.getClickCount() == 2) {
					int row = tableChiTiet.getSelectedRow();
					if (row >= 0) {
						suaSoLuongThuoc(row);
					}
				}
			}
		});

	}

	// Load dữ liệu vào bảng
	public void loadDataToTable() {
		DefaultTableModel model = (DefaultTableModel) tableThuoc.getModel();
		model.setRowCount(0);

		modelThuoc = (DefaultTableModel) tableThuoc.getModel();
		modelChiTiet = (DefaultTableModel) tableChiTiet.getModel();
		List<Object[]> data = thuocGiaoDichDAO.loadDataToDSSP();
		for (Object[] row : data) {
			modelThuoc.addRow(row);
		}
	}

	public void btnTimActionPerformed() {
		String maThuoc = txtTimMaThuoc.getText().trim();
		String tenThuoc = txtTimTenThuoc.getText().trim();

		List<Object[]> data = thuocGiaoDichDAO.timKiemThuoc(maThuoc, tenThuoc);
		modelThuoc.setRowCount(0);
		for (Object[] row : data) {
			modelThuoc.addRow(row);
		}
	}

	public void btnTaiLaiThuocActionPerformed() {
		txtTimMaThuoc.setText("");
		txtTimTenThuoc.setText("");
		loadDataToTable();
	}

	// Generate maHoaDon
	private String generateMaHoaDon() {
		String lastMaHD = thuocGiaoDichDAO.getLastMaHoaDon();
		if (lastMaHD == null || lastMaHD.isEmpty() || lastMaHD.equals("KH000")) {
			return "HD001";
		}

		String numericPart = lastMaHD.substring(2);
		int nextNumber = Integer.parseInt(numericPart);
		nextNumber++;

		return "HD" + String.format("%03d", nextNumber);
	}

	private void generateMaHD() {
		String maHD = generateMaHoaDon();
		txtMaHoaDon.setText(maHD);
	}

	public void layThongTinKhachHang(String soDienThoai) {
		String sdt = comboBoxSDT.getSelectedItem().toString().trim();

		if (sdt.isEmpty()) {
			JOptionPane.showMessageDialog(this, "Vui lòng nhập số điện thoại");
			comboBoxSDT.requestFocus();
			return;
		}

		try {
			khachHangDAO = new KhachHangDAO();
			Map<String, String> khachHangInfo = khachHangDAO.getThongTinKhachHang(sdt);

			if (khachHangInfo != null && !khachHangInfo.isEmpty()) {
				txtMaKH.setText(khachHangInfo.get("maKH"));
				txtTenKH.setText(khachHangInfo.get("hoTen"));
				comboBoxSDT.setEnabled(false);
				comboBoxSDT.setEditable(false);
			} else {
				JOptionPane.showMessageDialog(this, "Không tìm thấy khách hàng với số điện thoại này");
//				txtMaKH.setText("");
//				txtTenKH.setText("");
			}
		} catch (Exception e) {
			JOptionPane.showMessageDialog(this, "Lỗi khi lấy thông tin khách hàng: " + e.getMessage());
			e.printStackTrace();
		}
	}

	public void btnTaiLaiKhachHangActionPerformed() {
		txtMaKH.setText("");
		txtTenKH.setText("");
		comboBoxSDT.setSelectedItem(null);
		comboBoxSDT.removeAllItems();
		comboBoxSDT.setEnabled(true);
		comboBoxSDT.setEditable(true);
		comboBoxSDT.setPopupVisible(false);
		comboBoxSDT.requestFocus();
		goiYSoDT();
	}

	public void btnKhachHangVangLaiActionPerformed() {
		txtMaKH.setText("KHVL");
		txtTenKH.setText("Khách Vãng Lai");
		comboBoxSDT.setSelectedItem(null);
		comboBoxSDT.setEnabled(false);
		comboBoxSDT.setEditable(false);
	}

	public void btnTaiLaiHoaDonActionPerformed() {
		generateMaHD();
		txtTongTien.setText("");
		modelChiTiet.setRowCount(0);
		btnRadioTienMat.setSelected(true);
		phuongThucThanhToan = 0; // Đặt lại phương thức thanh toán về tiền mặt
	}

	private void goiYSoDT() {
		// Biến để kiểm soát thời gian delay
		Timer timer = new Timer(200, null); // 300ms delay
		timer.setRepeats(false);

		// Lấy component editor để thêm key listener
		List<String> sdtList = khachHangDAO.getAllSoDienThoai();
		final Vector<String> originalItems = new Vector<>(sdtList);
		JTextField textField = (JTextField) comboBoxSDT.getEditor().getEditorComponent();
		final int[] lastCaretPosition = { 0 }; // Lưu vị trí con trỏ

		textField.addKeyListener(new java.awt.event.KeyAdapter() {
			public void keyReleased(KeyEvent e) {
				// Nếu là phím điều hướng (lên/xuống) thì không xử lý
				if (e.getKeyCode() == KeyEvent.VK_UP || e.getKeyCode() == KeyEvent.VK_DOWN) {
					return;
				}

				// Lưu vị trí con trỏ hiện tại
				lastCaretPosition[0] = textField.getCaretPosition();
				timer.restart();
			}
		});

		// Xử lý tìm kiếm sau khi ngừng gõ
		timer.addActionListener(e -> {
			String input = textField.getText();
			int caretPos = textField.getCaretPosition(); // Lấy vị trí con trỏ hiện tại

			if (input.isEmpty()) {
				comboBoxSDT.setModel(new DefaultComboBoxModel<>(originalItems));
				comboBoxSDT.hidePopup();
				return;
			}

			// Lọc số điện thoại phù hợp
			Vector<String> filteredItems = new Vector<>();
			for (String item : originalItems) {
				if (item.startsWith(input)) {
					filteredItems.add(item);
				}
			}

			// Cập nhật model mà không làm mất nội dung đã nhập
			comboBoxSDT.setModel(new DefaultComboBoxModel<>(filteredItems));
			textField.setText(input); // Giữ nguyên text đã nhập
			textField.setCaretPosition(caretPos); // Khôi phục vị trí con trỏ

			if (!filteredItems.isEmpty()) {
				comboBoxSDT.showPopup();
			} else {
				comboBoxSDT.hidePopup();
			}
		});

		// Enter key
		textField.addKeyListener(new KeyAdapter() {
			@Override
			public void keyPressed(KeyEvent e) {
				if (e.getKeyCode() == KeyEvent.VK_ENTER) {
					String selectedItem = (String) comboBoxSDT.getSelectedItem();
					if (selectedItem != null) {
						comboBoxSDT.setPopupVisible(false);
						comboBoxSDT.setSelectedItem(selectedItem);
						layThongTinKhachHang(selectedItem);
					}
				}
			}
		});

		// Sự kiện chỉ để giữ combobox mở khi lướt
		textField.addKeyListener(new KeyAdapter() {
			@Override
			public void keyPressed(KeyEvent e) {
				if (e.getKeyCode() == KeyEvent.VK_DOWN || e.getKeyCode() == KeyEvent.VK_UP) {
					comboBoxSDT.setPopupVisible(true);
				}
			}
		});

		// Xử lý focus để không bôi đen text khi click vào
		textField.addFocusListener(new FocusAdapter() {
			@Override
			public void focusGained(FocusEvent e) {
				// Đặt con trỏ về vị trí cuối cùng thay vì select all
				textField.setCaretPosition(textField.getText().length());
			}
		});
	}

	private void nhapSoLuongThuoc(int selectedRow) {
		// Lấy thông tin thuốc được chọn
		String maThuoc = tableThuoc.getValueAt(selectedRow, 0).toString();
		String tenThuoc = tableThuoc.getValueAt(selectedRow, 1).toString();
		int soLuongTon = Integer.parseInt(tableThuoc.getValueAt(selectedRow, 4).toString());

		// Tạo panel chứa các component
		JPanel panel = new JPanel(new GridLayout(3, 1, 5, 5));
		panel.setBorder(BorderFactory.createEmptyBorder(12, 12, 12, 12));

		// Label thông tin
		JLabel lblInfo = new JLabel("Chọn số lượng cho: " + tenThuoc);
		lblInfo.setFont(new Font("Segoe UI", Font.BOLD, 15));

		// Label tồn kho
		JLabel lblTonKho = new JLabel("Số lượng tồn: " + soLuongTon);
		lblTonKho.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		lblTonKho.setForeground(Color.BLUE);

		// Ô nhập số lượng
		JTextField txtSoLuong = new JTextField();
		txtSoLuong.setFont(new Font("Segoe UI", Font.PLAIN, 15));
		txtSoLuong.setHorizontalAlignment(JTextField.CENTER);

		panel.add(lblInfo);
		panel.add(lblTonKho);
		panel.add(txtSoLuong);
		txtSoLuong.requestFocus();

		// Tạo dialog
		JOptionPane pane = new JOptionPane(panel, JOptionPane.PLAIN_MESSAGE, JOptionPane.OK_CANCEL_OPTION);
		JDialog dialog = pane.createDialog(this, "Nhập số lượng - " + maThuoc);

		// Focus vào ô nhập số lượng khi hiển thị dialog
		dialog.addWindowListener(new WindowAdapter() {
			@Override
			public void windowOpened(WindowEvent e) {
				txtSoLuong.requestFocusInWindow();
				txtSoLuong.selectAll(); // Chọn toàn bộ text để có thể nhập đè luôn
			}
		});

		dialog.setVisible(true);

		// Xử lý kết quả
		if (pane.getValue() != null && pane.getValue().equals(JOptionPane.OK_OPTION)) {
			try {
				themThuocVaoHoaDon(selectedRow, Integer.parseInt(txtSoLuong.getText().trim()));
			} catch (NumberFormatException ex) {
				JOptionPane.showMessageDialog(this, "Vui lòng nhập số nguyên hợp lệ");
			}
		}
		dialog.dispose();
	}

	private void themThuocVaoHoaDon(int selectedRow, int soLuong) {
		try {
			// Lấy thông tin từ bảng thuốc
			String maThuoc = tableThuoc.getValueAt(selectedRow, 0).toString();
			String tenThuoc = tableThuoc.getValueAt(selectedRow, 1).toString();

			// Xử lý đơn giá (loại bỏ ký tự không phải số)
			String donGiaStr = tableThuoc.getValueAt(selectedRow, 3).toString().replace("đ", "").replace(",", "")
					.trim();
			double donGia = Double.parseDouble(donGiaStr);

			// Cập nhật số lượng tồn trong bảng thuốc
			int soLuongTonHienTai = Integer.parseInt(tableThuoc.getValueAt(selectedRow, 4).toString());
			if (soLuong > soLuongTonHienTai) {
				JOptionPane.showMessageDialog(this, "Số lượng thuốc không đủ trong kho");
				return;
			}

			int soLuongTonMoi = soLuongTonHienTai - soLuong;
			tableThuoc.setValueAt(soLuongTonMoi, selectedRow, 4);

			// Kiểm tra nếu thuốc đã có trong hóa đơn
			boolean daTonTai = false;
			for (int i = 0; i < modelChiTiet.getRowCount(); i++) {
				if (modelChiTiet.getValueAt(i, 0).equals(maThuoc)) {
					// Cập nhật số lượng và thành tiền
					int soLuongHienTai = Integer.parseInt(modelChiTiet.getValueAt(i, 2).toString());
					int tongSoLuong = soLuongHienTai + soLuong;
					double thanhTienMoi = tongSoLuong * donGia;

					modelChiTiet.setValueAt(tongSoLuong, i, 2);
					modelChiTiet.setValueAt(String.format("%,.0fđ", thanhTienMoi), i, 4);
					daTonTai = true;
					break;
				}
			}

			// Nếu thuốc chưa có trong hóa đơn thì thêm mới
			if (!daTonTai) {
				double thanhTien = soLuong * donGia;
				modelChiTiet.addRow(new Object[] { maThuoc, tenThuoc, soLuong, String.format("%,.0fđ", donGia),
						String.format("%,.0fđ", thanhTien) });
			}

			// Cập nhật tổng tiền
			tinhTongTien();

		} catch (Exception e) {
			JOptionPane.showMessageDialog(this, "Lỗi khi thêm thuốc: " + e.getMessage());
			e.printStackTrace();
		}
	}

	private void tinhTongTien() {
		double tongTien = 0;
		DefaultTableModel model = (DefaultTableModel) tableChiTiet.getModel();

		for (int i = 0; i < model.getRowCount(); i++) {

			tongTien += Integer.parseInt(model.getValueAt(i, 2).toString())
					* Double.parseDouble(model.getValueAt(i, 3).toString().replace("đ", "").replace(",", ""));
		}

		txtTongTien.setText(String.format("%,.0fđ", tongTien));
	}

	private void suaSoLuongThuoc(int row) {
		try {
			// Lấy thông tin thuốc từ bảng chi tiết
			String maThuoc = tableChiTiet.getValueAt(row, 0).toString();
			String tenThuoc = tableChiTiet.getValueAt(row, 1).toString();
			int soLuongCu = Integer.parseInt(tableChiTiet.getValueAt(row, 2).toString());
			double donGia = Double
					.parseDouble(tableChiTiet.getValueAt(row, 3).toString().replace("đ", "").replace(",", "").trim());

			// Lấy số lượng tồn từ bảng thuốc (tìm theo mã thuốc)
			int soLuongTon = 0;
			for (int i = 0; i < tableThuoc.getRowCount(); i++) {
				if (tableThuoc.getValueAt(i, 0).toString().equals(maThuoc)) {
					soLuongTon = Integer.parseInt(tableThuoc.getValueAt(i, 4).toString());
					break;
				}
			}

			// Tạo dialog nhập số lượng
			JPanel panel = new JPanel(new GridLayout(3, 1, 5, 5));
			panel.setBorder(BorderFactory.createEmptyBorder(12, 12, 12, 12));

			JLabel lblInfo = new JLabel("Nhập số lượng mới cho: " + tenThuoc);
			lblInfo.setFont(new Font("Segoe UI", Font.BOLD, 15));

			JLabel lblTonKho = new JLabel("Số lượng tồn hiện có: " + (soLuongTon + soLuongCu));
			lblTonKho.setFont(new Font("Segoe UI", Font.PLAIN, 13));
			lblTonKho.setForeground(Color.BLUE);

			JLabel lblSoLuong = new JLabel("Số lượng hiện tại: " + soLuongCu);
			lblSoLuong.setFont(new Font("Segoe UI", Font.PLAIN, 13));
			lblSoLuong.setForeground(Color.BLUE);

			JTextField txtSoLuong = new JTextField(String.valueOf(soLuongCu));
			txtSoLuong.setFont(new Font("Segoe UI", Font.PLAIN, 15));
			txtSoLuong.setHorizontalAlignment(JTextField.CENTER);

			panel.add(lblInfo);
			panel.add(lblTonKho);
			panel.add(txtSoLuong);

			// Tạo và hiển thị dialog
			JOptionPane pane = new JOptionPane(panel, JOptionPane.PLAIN_MESSAGE, JOptionPane.OK_CANCEL_OPTION);
			JDialog dialog = pane.createDialog(this, "Sửa số lượng - " + maThuoc);

			// Focus vào ô nhập liệu
			dialog.addWindowListener(new WindowAdapter() {
				@Override
				public void windowOpened(WindowEvent e) {
					txtSoLuong.requestFocusInWindow();
					txtSoLuong.selectAll();
				}
			});

			dialog.setVisible(true);

			// Xử lý khi nhấn OK
			if (pane.getValue() != null && pane.getValue().equals(JOptionPane.OK_OPTION)) {
				int soLuongMoi = Integer.parseInt(txtSoLuong.getText().trim());

				if (soLuongMoi == 0) {
					// Xóa khỏi bảng chi tiết nếu số lượng = 0
					((DefaultTableModel) tableChiTiet.getModel()).removeRow(row);

					// Cộng lại số lượng đã trừ vào tồn kho
					capNhatSoLuongTon(maThuoc, soLuongCu);

					JOptionPane.showMessageDialog(this, "Đã xóa thuốc khỏi hóa đơn");
				} else if (soLuongMoi > 0) {
					// Cập nhật số lượng mới
					tableChiTiet.setValueAt(soLuongMoi, row, 2);

					// Tính toán chênh lệch số lượng
					int chechLech = soLuongCu - soLuongMoi;

					// Cập nhật thành tiền
					double thanhTien = soLuongMoi * donGia;
					tableChiTiet.setValueAt(String.format("%,.0fđ", thanhTien), row, 4);

					// Cập nhật tồn kho
					if (chechLech != 0) {
						capNhatSoLuongTon(maThuoc, chechLech);
					}
				} else {
					JOptionPane.showMessageDialog(this, "Số lượng không được âm");
					return;
				}

				// Cập nhật tổng tiền
				tinhTongTien();
			}
		} catch (NumberFormatException ex) {
			JOptionPane.showMessageDialog(this, "Vui lòng nhập số nguyên hợp lệ");
		} catch (Exception ex) {
			JOptionPane.showMessageDialog(this, "Lỗi khi cập nhật thuốc: " + ex.getMessage());
			ex.printStackTrace();
		}
	}

	private void capNhatSoLuongTon(String maThuoc, int soLuongThem) {
		for (int i = 0; i < tableThuoc.getRowCount(); i++) {
			if (tableThuoc.getValueAt(i, 0).toString().equals(maThuoc)) {
				int soLuongTon = Integer.parseInt(tableThuoc.getValueAt(i, 4).toString());
				tableThuoc.setValueAt(soLuongTon + soLuongThem, i, 4);
				break;
			}
		}
	}

	private void phuongThucThanhToanActionPerformed(int phuongThuc) {
		this.phuongThucThanhToan = phuongThuc;
	}

	private void xuLyThanhToan(int trangThai, String maNV) throws ParseException, IOException {
		if (tableChiTiet.getRowCount() == 0) {
			JOptionPane.showMessageDialog(this, "Vui lòng thêm thuốc vào hóa đơn trước khi thanh toán");
			return;
		}

		String maHoaDon = txtMaHoaDon.getText().trim();
		String ngayLap = new SimpleDateFormat("dd/MM/yyyy").format(((JDateChooser) txtNgayLap).getDate());
		double tongTien = Double.parseDouble(txtTongTien.getText().replace("đ", "").replace(",", "").trim());
		String maKhachHang = txtMaKH.getText().trim();
		if (maKhachHang.equals("KHVL")) {
			maKhachHang = "KHVL";
		} else if (maKhachHang.isEmpty()) {
			JOptionPane.showMessageDialog(this, "Vui lòng chọn khách hàng");
			return;
		}
		String trangThaiStr = trangThai == 1 ? "Đã thanh toán" : "Chờ xử lý";
		String phuongThucThanhToanStr = phuongThucThanhToan == 0 ? "Tiền mặt" : "Chuyển khoản";

		DefaultTableModel model = (DefaultTableModel) tableChiTiet.getModel();

		boolean luu = false;

		// Tiền mặt
		if (phuongThucThanhToan == 0) {
			inHoaDon(maHoaDon, ngayLap, tongTien, maNV, maKhachHang, trangThaiStr, phuongThucThanhToanStr);
			if (Dialog_InHoaDon.isPrinting()) {
				luu = thuocGiaoDichDAO.luuHoaDon(maHoaDon, ngayLap, tongTien, maNV, maKhachHang, trangThaiStr,
						phuongThucThanhToanStr);
			} else {
				JOptionPane.showMessageDialog(this, "Thanh toán tiền mặt bị hủy");
			}

			if (luu) {
				luu = luuChiTietvaTonKho(maHoaDon, model);
				if (luu) {
					JOptionPane.showMessageDialog(this, "Lưu chi tiết hóa đơn thành công");
					resetForm();
				} else {
					JOptionPane.showMessageDialog(this, "Lỗi khi lưu chi tiết hóa đơn");
				}
			}

		}
		// Chuyển khoản
		else {
			hienThiQRCode(maHoaDon, tongTien);
			if (Dialog_InQRCode.getResult()) {
				inHoaDon(maHoaDon, ngayLap, tongTien, maNV, maKhachHang, trangThaiStr, phuongThucThanhToanStr);
				luu = thuocGiaoDichDAO.luuHoaDon(maHoaDon, ngayLap, tongTien, maNV, maKhachHang, trangThaiStr,
						phuongThucThanhToanStr);
				if (luu) {
					luu = luuChiTietvaTonKho(maHoaDon, model);
					if (luu) {
						JOptionPane.showMessageDialog(this, "Lưu chi tiết hóa đơn thành công");
						resetForm();
					} else {
						JOptionPane.showMessageDialog(this, "Lỗi khi lưu chi tiết hóa đơn");
					}
				}
			} else {
				JOptionPane.showMessageDialog(this, "Thanh toán chuyển khoản bị hủy");
			}
		}
	}

	private boolean luuChiTietvaTonKho(String maHoaDon, DefaultTableModel model) {
		try {
			// Lưu chi tiết hóa đơn
			for (int i = 0; i < model.getRowCount(); i++) {
				String maThuocCT = model.getValueAt(i, 0).toString();
				int soLuongCT = Integer.parseInt(model.getValueAt(i, 2).toString());
				double donGiaCT = Double
						.parseDouble(model.getValueAt(i, 3).toString().replace("đ", "").replace(",", "").trim());

				if (!chiTietHoaDonDAO.luuChiTietHoaDon(maHoaDon, maThuocCT, soLuongCT, donGiaCT)) {
					return false;
				}

				// Cập nhật tồn kho
				if (!thuocGiaoDichDAO.capNhatSoLuongTon(maThuocCT, soLuongCT)) {
					return false;
				}
			}
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	private void resetForm() {
		btnTaiLaiThuocActionPerformed();
		btnTaiLaiKhachHangActionPerformed();
		btnTaiLaiHoaDonActionPerformed();
		loadDataToTable();
	}

	private void inHoaDon(String maHoaDon, String ngayLap, double tongTien, String maNV, String maKhachHang,
			String trangThaiStr, String phuongThucThanhToanStr) {
		try {
			List<Object[]> data = new ArrayList<>();
			DefaultTableModel model = (DefaultTableModel) tableChiTiet.getModel();

			for (int i = 0; i < model.getRowCount(); i++) {
				Object[] row = {
					model.getValueAt(i, 1), // Tên thuốc
					model.getValueAt(i, 2), // Số lượng
					model.getValueAt(i, 3), // Đơn giá
					model.getValueAt(i, 4) // Thành tiền
				};
				data.add(row);
			}

			Dialog_InHoaDon inHoaDon = new Dialog_InHoaDon(null, maHoaDon, ngayLap, tongTien, maNV, maKhachHang,
					trangThaiStr, phuongThucThanhToanStr, data);
			inHoaDon.setVisible(true);
		} catch (Exception e) {
			JOptionPane.showMessageDialog(this, "Lỗi khi in hóa đơn: " + e.getMessage());
			e.printStackTrace();
		}

	}

	private void hienThiQRCode(String maHoaDon, double tongTien) {
		try {
			Dialog_InQRCode inQRCode = new Dialog_InQRCode(null, maHoaDon, tongTien);
			inQRCode.setVisible(true);
		} catch (Exception e) {
			JOptionPane.showMessageDialog(this, "Lỗi khi hiển thị QR Code: " + e.getMessage());
			e.printStackTrace();
		}
	}

}
