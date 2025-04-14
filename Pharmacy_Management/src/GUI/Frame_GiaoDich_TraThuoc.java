package GUI;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.text.DecimalFormat;
import javax.swing.BorderFactory;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JSpinner;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.SpinnerNumberModel;
import javax.swing.border.EtchedBorder;
import javax.swing.border.LineBorder;
import javax.swing.border.TitledBorder;
import javax.swing.table.DefaultTableModel;

public class Frame_GiaoDich_TraThuoc extends JPanel {
    private static final long serialVersionUID = 1L;
    private JTextField txtMaHoaDon;
    private JTextField txtTimKiem;
    private JTextField txtNgayLap;
    private JTextField txtMaKhachHang;
    private JTextField txtHoTenKH;
    private JTextField txtTongTien;
    private JTextField txtTienHoanTra;
    private JTable tableHoaDon;
    private JTable tableChiTietHoaDon;
    private JTable tableChiTietTra;
    private DefaultTableModel modelHoaDon;
    private DefaultTableModel modelChiTietHoaDon;
    private DefaultTableModel modelChiTietTra;
    private JComboBox<String> cboLoaiTimKiem;
    private JComboBox<String> cboPhuongThucThanhToan;
    private JTextField txtTienTraLai;
    private JButton btnTimKiem;
    private JButton btnTraThuoc;
    private JButton btnHuy;
    private JButton btnLamMoi;
    private JButton btnThemVaoDS;
    private JTextField txtLyDoTra;
    private JSpinner spinnerSoLuongTra;

    // Định nghĩa màu sắc
    private final Color MAIN_COLOR = new Color(254, 222, 192);         
    private final Color HEADER_COLOR = new Color(251, 203, 150);        
    private final Color BUTTON_COLOR = new Color(249, 187, 118);        
    private final Color BUTTON_TEXT_COLOR = new Color(121, 70, 13);     
    private final Color TEXT_COLOR = new Color(100, 60, 20);           
    private final Color PANEL_BORDER_COLOR = new Color(222, 184, 135);  
    private final Color TABLE_HEADER_COLOR = new Color(251, 203, 150);  
    private final Color SELECTED_COLOR = new Color(255, 239, 213);      

    // Constructor: khởi tạo giao diện trên JPanel
    public Frame_GiaoDich_TraThuoc() {
        // Thiết lập kích thước và layout của panel
        setPreferredSize(new Dimension(1200, 700));
        setBackground(MAIN_COLOR);
        setLayout(null);
		setPreferredSize(new Dimension(1550, 755));

        // Panel tìm kiếm hóa đơn
        JPanel panelTimKiem = new JPanel();
        panelTimKiem.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1), "Tìm kiếm hóa đơn", 
                TitledBorder.LEADING, TitledBorder.TOP, new Font("Arial", Font.BOLD, 12), TEXT_COLOR));
        panelTimKiem.setBounds(10, 11, 1164, 100);
        panelTimKiem.setBackground(MAIN_COLOR);
        panelTimKiem.setLayout(null);
        add(panelTimKiem);
        
        JLabel lblLoaiTimKiem = new JLabel("Loại tìm kiếm:");
        lblLoaiTimKiem.setForeground(TEXT_COLOR);
        lblLoaiTimKiem.setFont(new Font("Arial", Font.PLAIN, 12));
        lblLoaiTimKiem.setBounds(10, 25, 100, 20);
        panelTimKiem.add(lblLoaiTimKiem);
        
        cboLoaiTimKiem = new JComboBox<>();
        cboLoaiTimKiem.setModel(new DefaultComboBoxModel<>(new String[] {"Mã hóa đơn", "Số điện thoại khách hàng", "Tên khách hàng"}));
        cboLoaiTimKiem.setBounds(120, 25, 200, 20);
        cboLoaiTimKiem.setBackground(Color.WHITE);
        cboLoaiTimKiem.setForeground(TEXT_COLOR);
        panelTimKiem.add(cboLoaiTimKiem);
        
        JLabel lblTimKiem = new JLabel("Nhập tìm kiếm:");
        lblTimKiem.setForeground(TEXT_COLOR);
        lblTimKiem.setFont(new Font("Arial", Font.PLAIN, 12));
        lblTimKiem.setBounds(10, 60, 100, 20);
        panelTimKiem.add(lblTimKiem);
        
        txtTimKiem = new JTextField();
        txtTimKiem.setBounds(120, 60, 200, 20);
        txtTimKiem.setForeground(TEXT_COLOR);
        panelTimKiem.add(txtTimKiem);
        txtTimKiem.setColumns(10);
        
        btnTimKiem = new JButton("Tìm kiếm");
        btnTimKiem.setFont(new Font("Arial", Font.BOLD, 12));
        btnTimKiem.setBackground(BUTTON_COLOR);
        btnTimKiem.setForeground(BUTTON_TEXT_COLOR);
        btnTimKiem.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                timKiemHoaDon();
            }
        });
        btnTimKiem.setBounds(330, 25, 100, 55);
        panelTimKiem.add(btnTimKiem);
        
        // Panel danh sách hóa đơn
        JPanel panelDSHoaDon = new JPanel();
        panelDSHoaDon.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1), "Danh sách hóa đơn", 
                TitledBorder.LEADING, TitledBorder.TOP, new Font("Arial", Font.BOLD, 12), TEXT_COLOR));
        panelDSHoaDon.setBounds(10, 122, 570, 200);
        panelDSHoaDon.setBackground(MAIN_COLOR);
        panelDSHoaDon.setLayout(null);
        add(panelDSHoaDon);
        
        JScrollPane scrollPaneHoaDon = new JScrollPane();
        scrollPaneHoaDon.setBounds(10, 20, 550, 170);
        panelDSHoaDon.add(scrollPaneHoaDon);
        
        tableHoaDon = new JTable();
        modelHoaDon = new DefaultTableModel(
            new Object[][] {},
            new String[] {"Mã HD", "Ngày lập", "Khách hàng", "Tổng tiền", "Trạng thái"}
        );
        tableHoaDon.setModel(modelHoaDon);
        tableHoaDon.setBackground(Color.WHITE);
        tableHoaDon.setForeground(TEXT_COLOR);
        tableHoaDon.setSelectionBackground(SELECTED_COLOR);
        tableHoaDon.getTableHeader().setBackground(TABLE_HEADER_COLOR);
        tableHoaDon.getTableHeader().setForeground(TEXT_COLOR);
        tableHoaDon.getTableHeader().setFont(new Font("Arial", Font.BOLD, 12));
        tableHoaDon.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                hienThiChiTietHoaDon();
            }
        });
        scrollPaneHoaDon.setViewportView(tableHoaDon);
        
        // Panel thông tin hóa đơn
        JPanel panelThongTinHD = new JPanel();
        panelThongTinHD.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1), "Thông tin hóa đơn", 
                TitledBorder.LEADING, TitledBorder.TOP, new Font("Arial", Font.BOLD, 12), TEXT_COLOR));
        panelThongTinHD.setBounds(590, 122, 584, 200);
        panelThongTinHD.setBackground(MAIN_COLOR);
        panelThongTinHD.setLayout(null);
        add(panelThongTinHD);
        
        JLabel lblMaHoaDon = new JLabel("Mã hóa đơn:");
        lblMaHoaDon.setForeground(TEXT_COLOR);
        lblMaHoaDon.setFont(new Font("Arial", Font.PLAIN, 12));
        lblMaHoaDon.setBounds(10, 25, 100, 20);
        panelThongTinHD.add(lblMaHoaDon);
        
        txtMaHoaDon = new JTextField();
        txtMaHoaDon.setEditable(false);
        txtMaHoaDon.setBounds(120, 25, 150, 20);
        txtMaHoaDon.setForeground(TEXT_COLOR);
        txtMaHoaDon.setBackground(new Color(240, 240, 240));
        panelThongTinHD.add(txtMaHoaDon);
        txtMaHoaDon.setColumns(10);
        
        JLabel lblNgayLap = new JLabel("Ngày lập:");
        lblNgayLap.setForeground(TEXT_COLOR);
        lblNgayLap.setFont(new Font("Arial", Font.PLAIN, 12));
        lblNgayLap.setBounds(10, 55, 100, 20);
        panelThongTinHD.add(lblNgayLap);
        
        txtNgayLap = new JTextField();
        txtNgayLap.setEditable(false);
        txtNgayLap.setBounds(120, 55, 150, 20);
        txtNgayLap.setForeground(TEXT_COLOR);
        txtNgayLap.setBackground(new Color(240, 240, 240));
        panelThongTinHD.add(txtNgayLap);
        txtNgayLap.setColumns(10);
        
        JLabel lblMaKH = new JLabel("Mã khách hàng:");
        lblMaKH.setForeground(TEXT_COLOR);
        lblMaKH.setFont(new Font("Arial", Font.PLAIN, 12));
        lblMaKH.setBounds(10, 85, 100, 20);
        panelThongTinHD.add(lblMaKH);
        
        txtMaKhachHang = new JTextField();
        txtMaKhachHang.setEditable(false);
        txtMaKhachHang.setBounds(120, 85, 150, 20);
        txtMaKhachHang.setForeground(TEXT_COLOR);
        txtMaKhachHang.setBackground(new Color(240, 240, 240));
        panelThongTinHD.add(txtMaKhachHang);
        txtMaKhachHang.setColumns(10);
        
        JLabel lblHoTenKH = new JLabel("Tên khách hàng:");
        lblHoTenKH.setForeground(TEXT_COLOR);
        lblHoTenKH.setFont(new Font("Arial", Font.PLAIN, 12));
        lblHoTenKH.setBounds(280, 25, 100, 20);
        panelThongTinHD.add(lblHoTenKH);
        
        txtHoTenKH = new JTextField();
        txtHoTenKH.setEditable(false);
        txtHoTenKH.setBounds(390, 25, 180, 20);
        txtHoTenKH.setForeground(TEXT_COLOR);
        txtHoTenKH.setBackground(new Color(240, 240, 240));
        panelThongTinHD.add(txtHoTenKH);
        txtHoTenKH.setColumns(10);
        
        JLabel lblTongTien = new JLabel("Tổng tiền:");
        lblTongTien.setForeground(TEXT_COLOR);
        lblTongTien.setFont(new Font("Arial", Font.PLAIN, 12));
        lblTongTien.setBounds(280, 55, 100, 20);
        panelThongTinHD.add(lblTongTien);
        
        txtTongTien = new JTextField();
        txtTongTien.setEditable(false);
        txtTongTien.setBounds(390, 55, 180, 20);
        txtTongTien.setForeground(TEXT_COLOR);
        txtTongTien.setBackground(new Color(240, 240, 240));
        panelThongTinHD.add(txtTongTien);
        txtTongTien.setColumns(10);
        
        JLabel lblPTTT = new JLabel("PT thanh toán:");
        lblPTTT.setForeground(TEXT_COLOR);
        lblPTTT.setFont(new Font("Arial", Font.PLAIN, 12));
        lblPTTT.setBounds(280, 85, 100, 20);
        panelThongTinHD.add(lblPTTT);
        
        cboPhuongThucThanhToan = new JComboBox<>();
        cboPhuongThucThanhToan.setModel(new DefaultComboBoxModel<>(new String[] {"Tiền mặt", "Chuyển khoản", "Quẹt thẻ"}));
        cboPhuongThucThanhToan.setBounds(390, 85, 180, 20);
        cboPhuongThucThanhToan.setBackground(Color.WHITE);
        cboPhuongThucThanhToan.setForeground(TEXT_COLOR);
        panelThongTinHD.add(cboPhuongThucThanhToan);
        
        JLabel lblLyDoTra = new JLabel("Lý do trả:");
        lblLyDoTra.setForeground(TEXT_COLOR);
        lblLyDoTra.setFont(new Font("Arial", Font.PLAIN, 12));
        lblLyDoTra.setBounds(10, 115, 100, 20);
        panelThongTinHD.add(lblLyDoTra);
        
        txtLyDoTra = new JTextField();
        txtLyDoTra.setBounds(120, 115, 450, 20);
        txtLyDoTra.setForeground(TEXT_COLOR);
        panelThongTinHD.add(txtLyDoTra);
        txtLyDoTra.setColumns(10);
        
        JLabel lblTienHoanTra = new JLabel("Tiền hoàn trả:");
        lblTienHoanTra.setForeground(TEXT_COLOR);
        lblTienHoanTra.setFont(new Font("Arial", Font.PLAIN, 12));
        lblTienHoanTra.setBounds(10, 145, 100, 20);
        panelThongTinHD.add(lblTienHoanTra);
        
        txtTienHoanTra = new JTextField();
        txtTienHoanTra.setEditable(false);
        txtTienHoanTra.setBounds(120, 145, 180, 20);
        txtTienHoanTra.setForeground(TEXT_COLOR);
        txtTienHoanTra.setBackground(new Color(240, 240, 240));
        panelThongTinHD.add(txtTienHoanTra);
        txtTienHoanTra.setColumns(10);
        
        // Panel chi tiết hóa đơn
        JPanel panelChiTietHD = new JPanel();
        panelChiTietHD.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1), "Chi tiết hóa đơn", 
                TitledBorder.LEADING, TitledBorder.TOP, new Font("Arial", Font.BOLD, 12), TEXT_COLOR));
        panelChiTietHD.setBounds(10, 333, 570, 200);
        panelChiTietHD.setBackground(MAIN_COLOR);
        panelChiTietHD.setLayout(null);
        add(panelChiTietHD);
        
        JScrollPane scrollPaneChiTietHD = new JScrollPane();
        scrollPaneChiTietHD.setBounds(10, 20, 550, 170);
        panelChiTietHD.add(scrollPaneChiTietHD);
        
        tableChiTietHoaDon = new JTable();
        modelChiTietHoaDon = new DefaultTableModel(
            new Object[][] {},
            new String[] {"Mã thuốc", "Tên thuốc", "Đơn vị tính", "Số lượng", "Đơn giá", "Thành tiền"}
        );
        tableChiTietHoaDon.setModel(modelChiTietHoaDon);
        tableChiTietHoaDon.setBackground(Color.WHITE);
        tableChiTietHoaDon.setForeground(TEXT_COLOR);
        tableChiTietHoaDon.setSelectionBackground(SELECTED_COLOR);
        tableChiTietHoaDon.getTableHeader().setBackground(TABLE_HEADER_COLOR);
        tableChiTietHoaDon.getTableHeader().setForeground(TEXT_COLOR);
        tableChiTietHoaDon.getTableHeader().setFont(new Font("Arial", Font.BOLD, 12));
        tableChiTietHoaDon.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                chonThuocDeTra();
            }
        });
        scrollPaneChiTietHD.setViewportView(tableChiTietHoaDon);
        
        // Panel chi tiết trả thuốc
        JPanel panelChiTietTra = new JPanel();
        panelChiTietTra.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1), "Chi tiết trả thuốc", 
                TitledBorder.LEADING, TitledBorder.TOP, new Font("Arial", Font.BOLD, 12), TEXT_COLOR));
        panelChiTietTra.setBounds(590, 333, 584, 200);
        panelChiTietTra.setBackground(MAIN_COLOR);
        panelChiTietTra.setLayout(null);
        add(panelChiTietTra);
        
        JLabel lblSoLuongTra = new JLabel("Số lượng trả:");
        lblSoLuongTra.setForeground(TEXT_COLOR);
        lblSoLuongTra.setFont(new Font("Arial", Font.PLAIN, 12));
        lblSoLuongTra.setBounds(10, 25, 100, 20);
        panelChiTietTra.add(lblSoLuongTra);
        
        spinnerSoLuongTra = new JSpinner();
        spinnerSoLuongTra.setModel(new SpinnerNumberModel(1, 1, 100, 1));
        spinnerSoLuongTra.setBounds(120, 25, 100, 20);
        spinnerSoLuongTra.getEditor().getComponent(0).setForeground(TEXT_COLOR);
        panelChiTietTra.add(spinnerSoLuongTra);
        
        btnThemVaoDS = new JButton("Thêm vào DS trả");
        btnThemVaoDS.setFont(new Font("Arial", Font.BOLD, 12));
        btnThemVaoDS.setBackground(BUTTON_COLOR);
        btnThemVaoDS.setForeground(BUTTON_TEXT_COLOR);
        btnThemVaoDS.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                themVaoDanhSachTra();
            }
        });
        btnThemVaoDS.setBounds(230, 25, 150, 20);
        panelChiTietTra.add(btnThemVaoDS);
        
        JScrollPane scrollPaneChiTietTra = new JScrollPane();
        scrollPaneChiTietTra.setBounds(10, 60, 564, 130);
        panelChiTietTra.add(scrollPaneChiTietTra);
        
        tableChiTietTra = new JTable();
        modelChiTietTra = new DefaultTableModel(
            new Object[][] {},
            new String[] {"Mã thuốc", "Tên thuốc", "Đơn vị tính", "Số lượng trả", "Đơn giá", "Thành tiền"}
        );
        tableChiTietTra.setModel(modelChiTietTra);
        tableChiTietTra.setBackground(Color.WHITE);
        tableChiTietTra.setForeground(TEXT_COLOR);
        tableChiTietTra.setSelectionBackground(SELECTED_COLOR);
        tableChiTietTra.getTableHeader().setBackground(TABLE_HEADER_COLOR);
        tableChiTietTra.getTableHeader().setForeground(TEXT_COLOR);
        tableChiTietTra.getTableHeader().setFont(new Font("Arial", Font.BOLD, 12));
        scrollPaneChiTietTra.setViewportView(tableChiTietTra);
        
        // Panel thao tác
        JPanel panelThaoTac = new JPanel();
        panelThaoTac.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1), "Thao tác", 
                TitledBorder.LEADING, TitledBorder.TOP, new Font("Arial", Font.BOLD, 12), TEXT_COLOR));
        panelThaoTac.setBounds(10, 544, 1164, 106);
        panelThaoTac.setBackground(HEADER_COLOR);
        panelThaoTac.setLayout(null);
        add(panelThaoTac);
        
        JLabel lblTienTraLai = new JLabel("Tiền trả lại khách:");
        lblTienTraLai.setForeground(TEXT_COLOR);
        lblTienTraLai.setFont(new Font("Arial", Font.BOLD, 14));
        lblTienTraLai.setBounds(10, 30, 150, 25);
        panelThaoTac.add(lblTienTraLai);
        
        txtTienTraLai = new JTextField();
        txtTienTraLai.setFont(new Font("Arial", Font.BOLD, 14));
        txtTienTraLai.setEditable(false);
        txtTienTraLai.setBounds(160, 30, 200, 25);
        txtTienTraLai.setForeground(new Color(165, 42, 42));
        txtTienTraLai.setBackground(new Color(253, 245, 230));
        panelThaoTac.add(txtTienTraLai);
        txtTienTraLai.setColumns(10);
        
        btnTraThuoc = new JButton("Trả thuốc");
        btnTraThuoc.setFont(new Font("Arial", Font.BOLD, 14));
        btnTraThuoc.setBackground(new Color(254, 152, 65));
        btnTraThuoc.setForeground(new Color(50, 20, 0));
        btnTraThuoc.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                thucHienTraThuoc();
            }
        });
        btnTraThuoc.setBounds(400, 30, 150, 50);
        panelThaoTac.add(btnTraThuoc);
        
        btnHuy = new JButton("Hủy");
        btnHuy.setFont(new Font("Arial", Font.BOLD, 14));
        btnHuy.setBackground(BUTTON_COLOR);
        btnHuy.setForeground(BUTTON_TEXT_COLOR);
        btnHuy.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                xoaDuLieuForm();
            }
        });
        btnHuy.setBounds(570, 30, 150, 50);
        panelThaoTac.add(btnHuy);
        
        btnLamMoi = new JButton("Làm mới");
        btnLamMoi.setFont(new Font("Arial", Font.BOLD, 14));
        btnLamMoi.setBackground(BUTTON_COLOR);
        btnLamMoi.setForeground(BUTTON_TEXT_COLOR);
        btnLamMoi.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                xoaDuLieuForm();
            }
        });
        btnLamMoi.setBounds(740, 30, 150, 50);
        panelThaoTac.add(btnLamMoi);
        
        // Khởi tạo dữ liệu mẫu
        taoDataMau();
    }
    
    // Các phương thức xử lý sự kiện (không thay đổi so với phiên bản JFrame)
    private void taoDataMau() {
        modelHoaDon.addRow(new Object[]{"HD001", "01/04/2025", "Nguyễn Văn A", "250,000", "Đã thanh toán"});
        modelHoaDon.addRow(new Object[]{"HD002", "02/04/2025", "Trần Thị B", "780,000", "Đã thanh toán"});
        modelHoaDon.addRow(new Object[]{"HD003", "03/04/2025", "Lê Văn C", "520,000", "Đã thanh toán"});
    }
    
    private void timKiemHoaDon() {
        String tuKhoa = txtTimKiem.getText().trim();
        if (tuKhoa.isEmpty()) {
            JOptionPane.showMessageDialog(this, "Vui lòng nhập từ khóa tìm kiếm", "Thông báo", JOptionPane.WARNING_MESSAGE);
            return;
        }
        if (tuKhoa.equalsIgnoreCase("HD001") || tuKhoa.equals("0123456789") || tuKhoa.equalsIgnoreCase("Nguyễn Văn A")) {
            while (modelHoaDon.getRowCount() > 0) {
                modelHoaDon.removeRow(0);
            }
            modelHoaDon.addRow(new Object[]{"HD001", "01/04/2025", "Nguyễn Văn A", "250,000", "Đã thanh toán"});
        } else {
            JOptionPane.showMessageDialog(this, "Không tìm thấy hóa đơn phù hợp", "Thông báo", JOptionPane.INFORMATION_MESSAGE);
        }
    }
    
    private void hienThiChiTietHoaDon() {
        int row = tableHoaDon.getSelectedRow();
        if (row >= 0) {
            String maHD = modelHoaDon.getValueAt(row, 0).toString();
            String ngayLap = modelHoaDon.getValueAt(row, 1).toString();
            String tenKH = modelHoaDon.getValueAt(row, 2).toString();
            String tongTien = modelHoaDon.getValueAt(row, 3).toString();
            txtMaHoaDon.setText(maHD);
            txtNgayLap.setText(ngayLap);
            txtMaKhachHang.setText("KH001");
            txtHoTenKH.setText(tenKH);
            txtTongTien.setText(tongTien);
            while (modelChiTietHoaDon.getRowCount() > 0) {
                modelChiTietHoaDon.removeRow(0);
            }
            if (maHD.equals("HD001")) {
                modelChiTietHoaDon.addRow(new Object[]{"T001", "Paracetamol", "Hộp", 2, "50,000", "100,000"});
                modelChiTietHoaDon.addRow(new Object[]{"T002", "Vitamin C", "Hộp", 3, "50,000", "150,000"});
            }
        }
    }
    
    private void chonThuocDeTra() {
        spinnerSoLuongTra.setValue(1);
    }
    
    private void themVaoDanhSachTra() {
        int rowHD = tableChiTietHoaDon.getSelectedRow();
        if (rowHD < 0) {
            JOptionPane.showMessageDialog(this, "Vui lòng chọn thuốc cần trả", "Thông báo", JOptionPane.WARNING_MESSAGE);
            return;
        }
        String maThuoc = modelChiTietHoaDon.getValueAt(rowHD, 0).toString();
        String tenThuoc = modelChiTietHoaDon.getValueAt(rowHD, 1).toString();
        String donViTinh = modelChiTietHoaDon.getValueAt(rowHD, 2).toString();
        int soLuongMua = Integer.parseInt(modelChiTietHoaDon.getValueAt(rowHD, 3).toString());
        String donGia = modelChiTietHoaDon.getValueAt(rowHD, 4).toString();
        int soLuongTra = (int) spinnerSoLuongTra.getValue();
        if (soLuongTra > soLuongMua) {
            JOptionPane.showMessageDialog(this, "Số lượng trả không được lớn hơn số lượng đã mua", "Cảnh báo", JOptionPane.WARNING_MESSAGE);
            return;
        }
        String donGiaStr = donGia.replace(",", "");
        double donGiaValue = Double.parseDouble(donGiaStr);
        double thanhTien = donGiaValue * soLuongTra;
        DecimalFormat df = new DecimalFormat("#,###");
        String thanhTienFormatted = df.format(thanhTien);
        boolean daTonTai = false;
        for (int i = 0; i < modelChiTietTra.getRowCount(); i++) {
            if (modelChiTietTra.getValueAt(i, 0).equals(maThuoc)) {
                daTonTai = true;
                JOptionPane.showMessageDialog(this, "Thuốc này đã có trong danh sách trả", "Thông báo", JOptionPane.INFORMATION_MESSAGE);
                break;
            }
        }
        if (!daTonTai) {
            modelChiTietTra.addRow(new Object[]{maThuoc, tenThuoc, donViTinh, soLuongTra, donGia, thanhTienFormatted});
            capNhatTongTienHoanTra();
        }
    }
    
    private void capNhatTongTienHoanTra() {
        double tongTienHoanTra = 0;
        for (int i = 0; i < modelChiTietTra.getRowCount(); i++) {
            String thanhTienStr = modelChiTietTra.getValueAt(i, 5).toString().replace(",", "");
            tongTienHoanTra += Double.parseDouble(thanhTienStr);
        }
        DecimalFormat df = new DecimalFormat("#,###");
        txtTienHoanTra.setText(df.format(tongTienHoanTra));
        txtTienTraLai.setText(df.format(tongTienHoanTra));
    }
    
    private void thucHienTraThuoc() {
        if (modelChiTietTra.getRowCount() == 0) {
            JOptionPane.showMessageDialog(this, "Vui lòng chọn ít nhất một thuốc để trả", "Thông báo", JOptionPane.WARNING_MESSAGE);
            return;
        }
        if (txtLyDoTra.getText().trim().isEmpty()) {
            JOptionPane.showMessageDialog(this, "Vui lòng nhập lý do trả thuốc", "Thông báo", JOptionPane.WARNING_MESSAGE);
            txtLyDoTra.requestFocus();
            return;
        }
        JOptionPane.showMessageDialog(this, "Trả thuốc thành công\nSố tiền hoàn trả: " + txtTienHoanTra.getText(), 
                "Thông báo", JOptionPane.INFORMATION_MESSAGE);
        xoaDuLieuForm();
    }
    
    private void xoaDuLieuForm() {
        txtMaHoaDon.setText("");
        txtNgayLap.setText("");
        txtMaKhachHang.setText("");
        txtHoTenKH.setText("");
        txtTongTien.setText("");
        txtTienHoanTra.setText("");
        txtTienTraLai.setText("");
        txtLyDoTra.setText("");
        txtTimKiem.setText("");
        while (modelChiTietHoaDon.getRowCount() > 0) {
            modelChiTietHoaDon.removeRow(0);
        }
        while (modelChiTietTra.getRowCount() > 0) {
            modelChiTietTra.removeRow(0);
        }
        while (modelHoaDon.getRowCount() > 0) {
            modelHoaDon.removeRow(0);
        }
        taoDataMau();
    }
    
    // Ví dụ main method để kiểm tra panel (bạn có thể tách riêng ra nếu cần)
    public static void main(String[] args) {
        EventQueue.invokeLater(new Runnable() {
            public void run() {
                javax.swing.JFrame frame = new javax.swing.JFrame("Test Panel Giao Dịch Trả Thuốc");
                frame.setDefaultCloseOperation(javax.swing.JFrame.EXIT_ON_CLOSE);
                frame.getContentPane().add(new Frame_GiaoDich_TraThuoc());
                frame.pack();
                frame.setLocationRelativeTo(null);
                frame.setVisible(true);
            }
        });
    }
}
