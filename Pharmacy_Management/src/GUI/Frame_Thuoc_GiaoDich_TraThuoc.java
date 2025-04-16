package GUI;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
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
import javax.swing.SwingConstants;
import javax.swing.border.EtchedBorder;
import javax.swing.border.LineBorder;
import javax.swing.border.TitledBorder;
import javax.swing.table.DefaultTableModel;

import DAO.ChiTietHoaDonDAO;
import DAO.HoaDonDAO;
import DAO.KhachHangDAO;
import DAO.ThuocDAO;
import connectDB.ConnectDB;

public class Frame_Thuoc_GiaoDich_TraThuoc extends JPanel {
    private static final long serialVersionUID = 1L;
    private JTextField txtMaHoaDon;
    private JTextField txtTimKiem;
    private JTextField txtNgayLap;
    private JTextField txtMaKhachHang;
    private JTextField txtHoTenKH;
    private JTextField txtTongTien;
    private JTextField txtTienHoanTra;
    private JTextField txtTienTraLai;
    private JTextField txtLyDoTra;
    private JTable tableHoaDon;
    private JTable tableChiTietHoaDon;
    private JTable tableChiTietTra;
    private DefaultTableModel modelHoaDon;
    private DefaultTableModel modelChiTietHoaDon;
    private DefaultTableModel modelChiTietTra;
    private JComboBox<String> cboLoaiTimKiem;
    private JComboBox<String> cboPhuongThucThanhToan;
    private JSpinner spinnerSoLuongTra;
    private JButton btnTimKiem;
    private JButton btnTraThuoc;
    private JButton btnHuy;
    private JButton btnLamMoi;
    private JButton btnThemVaoDS;

    private final Color MAIN_COLOR = new Color(254, 222, 192);
    private final Color HEADER_COLOR = new Color(251, 203, 150);
    private final Color BUTTON_COLOR = new Color(249, 187, 118);
    private final Color BUTTON_TEXT_COLOR = new Color(121, 70, 13);
    private final Color TEXT_COLOR = new Color(100, 60, 20);
    private final Color PANEL_BORDER_COLOR = new Color(222, 184, 135);
    private final Color TABLE_HEADER_COLOR = new Color(251, 203, 150);
    private final Color SELECTED_COLOR = new Color(255, 239, 213);

    private HoaDonDAO hoaDonDAO;
    private ChiTietHoaDonDAO chiTietHoaDonDAO;
    private ThuocDAO thuocDAO;
    private KhachHangDAO khachHangDAO;

    public Frame_Thuoc_GiaoDich_TraThuoc() {
        hoaDonDAO = new HoaDonDAO();
        chiTietHoaDonDAO = new ChiTietHoaDonDAO();
        thuocDAO = new ThuocDAO();
        khachHangDAO = new KhachHangDAO();

        setPreferredSize(new Dimension(1550, 755));
        setBackground(MAIN_COLOR);
        setLayout(null);

        // Title Panel
        JPanel pnlTitle = new JPanel();
        pnlTitle.setBounds(0, 0, 1540, 60);
        pnlTitle.setBackground(HEADER_COLOR);
        add(pnlTitle);
        pnlTitle.setLayout(new BorderLayout());

        JLabel lblTitle = new JLabel("TRẢ THUỐC");
        lblTitle.setHorizontalAlignment(SwingConstants.CENTER);
        lblTitle.setFont(new Font("Arial", Font.BOLD, 28));
        lblTitle.setForeground(TEXT_COLOR);
        pnlTitle.add(lblTitle, BorderLayout.CENTER);

        // Panel tìm kiếm hóa đơn
        JPanel panelTimKiem = new JPanel();
        panelTimKiem.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1), "Tìm kiếm hóa đơn",
                TitledBorder.LEFT, TitledBorder.TOP, new Font("Arial", Font.BOLD, 18), TEXT_COLOR));
        panelTimKiem.setBounds(10, 70, 700, 150);
        panelTimKiem.setBackground(MAIN_COLOR);
        panelTimKiem.setLayout(null);
        add(panelTimKiem);

        JLabel lblLoaiTimKiem = new JLabel("Loại tìm kiếm:");
        lblLoaiTimKiem.setForeground(TEXT_COLOR);
        lblLoaiTimKiem.setFont(new Font("Arial", Font.PLAIN, 18));
        lblLoaiTimKiem.setBounds(10, 30, 150, 30);
        panelTimKiem.add(lblLoaiTimKiem);

        cboLoaiTimKiem = new JComboBox<>();
        cboLoaiTimKiem.setModel(new DefaultComboBoxModel<>(new String[]{"Mã hóa đơn", "Số điện thoại khách hàng", "Tên khách hàng"}));
        cboLoaiTimKiem.setBounds(170, 30, 300, 30);
        cboLoaiTimKiem.setBackground(Color.WHITE);
        cboLoaiTimKiem.setForeground(TEXT_COLOR);
        cboLoaiTimKiem.setFont(new Font("Arial", Font.PLAIN, 18));
        panelTimKiem.add(cboLoaiTimKiem);

        JLabel lblTimKiem = new JLabel("Nhập tìm kiếm:");
        lblTimKiem.setForeground(TEXT_COLOR);
        lblTimKiem.setFont(new Font("Arial", Font.PLAIN, 18));
        lblTimKiem.setBounds(10, 80, 150, 30);
        panelTimKiem.add(lblTimKiem);

        txtTimKiem = new JTextField();
        txtTimKiem.setBounds(170, 80, 300, 30);
        txtTimKiem.setForeground(TEXT_COLOR);
        txtTimKiem.setFont(new Font("Arial", Font.PLAIN, 18));
        panelTimKiem.add(txtTimKiem);
        txtTimKiem.setColumns(10);

        btnTimKiem = new JButton("Tìm kiếm");
        btnTimKiem.setFont(new Font("Arial", Font.BOLD, 18));
        btnTimKiem.setBackground(BUTTON_COLOR);
        btnTimKiem.setForeground(BUTTON_TEXT_COLOR);
        btnTimKiem.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                timKiemHoaDon();
            }
        });
        btnTimKiem.setBounds(480, 40, 120, 70);
        panelTimKiem.add(btnTimKiem);

        // Panel danh sách hóa đơn
        JPanel panelDSHoaDon = new JPanel();
        panelDSHoaDon.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1), "Danh sách hóa đơn",
                TitledBorder.LEFT, TitledBorder.TOP, new Font("Arial", Font.BOLD, 18), TEXT_COLOR));
        panelDSHoaDon.setBounds(10, 230, 700, 250);
        panelDSHoaDon.setBackground(MAIN_COLOR);
        panelDSHoaDon.setLayout(null);
        add(panelDSHoaDon);

        JScrollPane scrollPaneHoaDon = new JScrollPane();
        scrollPaneHoaDon.setBounds(10, 20, 680, 220);
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
        tableHoaDon.getTableHeader().setFont(new Font("Arial", Font.BOLD, 18));
        tableHoaDon.setRowHeight(30);
        tableHoaDon.setFont(new Font("Arial", Font.PLAIN, 16));
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
                TitledBorder.LEFT, TitledBorder.TOP, new Font("Arial", Font.BOLD, 18), TEXT_COLOR));
        panelThongTinHD.setBounds(720, 70, 820, 250);
        panelThongTinHD.setBackground(MAIN_COLOR);
        panelThongTinHD.setLayout(null);
        add(panelThongTinHD);

        JLabel lblMaHoaDon = new JLabel("Mã hóa đơn:");
        lblMaHoaDon.setForeground(TEXT_COLOR);
        lblMaHoaDon.setFont(new Font("Arial", Font.PLAIN, 18));
        lblMaHoaDon.setBounds(10, 30, 150, 30);
        panelThongTinHD.add(lblMaHoaDon);

        txtMaHoaDon = new JTextField();
        txtMaHoaDon.setEditable(false);
        txtMaHoaDon.setBounds(170, 30, 200, 30);
        txtMaHoaDon.setForeground(TEXT_COLOR);
        txtMaHoaDon.setBackground(new Color(240, 240, 240));
        txtMaHoaDon.setFont(new Font("Arial", Font.PLAIN, 18));
        panelThongTinHD.add(txtMaHoaDon);
        txtMaHoaDon.setColumns(10);

        JLabel lblNgayLap = new JLabel("Ngày lập:");
        lblNgayLap.setForeground(TEXT_COLOR);
        lblNgayLap.setFont(new Font("Arial", Font.PLAIN, 18));
        lblNgayLap.setBounds(10, 80, 150, 30);
        panelThongTinHD.add(lblNgayLap);

        txtNgayLap = new JTextField();
        txtNgayLap.setEditable(false);
        txtNgayLap.setBounds(170, 80, 200, 30);
        txtNgayLap.setForeground(TEXT_COLOR);
        txtNgayLap.setBackground(new Color(240, 240, 240));
        txtNgayLap.setFont(new Font("Arial", Font.PLAIN, 18));
        panelThongTinHD.add(txtNgayLap);
        txtNgayLap.setColumns(10);

        JLabel lblMaKH = new JLabel("Mã khách hàng:");
        lblMaKH.setForeground(TEXT_COLOR);
        lblMaKH.setFont(new Font("Arial", Font.PLAIN, 18));
        lblMaKH.setBounds(10, 130, 150, 30);
        panelThongTinHD.add(lblMaKH);

        txtMaKhachHang = new JTextField();
        txtMaKhachHang.setEditable(false);
        txtMaKhachHang.setBounds(170, 130, 200, 30);
        txtMaKhachHang.setForeground(TEXT_COLOR);
        txtMaKhachHang.setBackground(new Color(240, 240, 240));
        txtMaKhachHang.setFont(new Font("Arial", Font.PLAIN, 18));
        panelThongTinHD.add(txtMaKhachHang);
        txtMaKhachHang.setColumns(10);

        JLabel lblHoTenKH = new JLabel("Tên khách hàng:");
        lblHoTenKH.setForeground(TEXT_COLOR);
        lblHoTenKH.setFont(new Font("Arial", Font.PLAIN, 18));
        lblHoTenKH.setBounds(400, 30, 150, 30);
        panelThongTinHD.add(lblHoTenKH);

        txtHoTenKH = new JTextField();
        txtHoTenKH.setEditable(false);
        txtHoTenKH.setBounds(560, 30, 250, 30);
        txtHoTenKH.setForeground(TEXT_COLOR);
        txtHoTenKH.setBackground(new Color(240, 240, 240));
        txtHoTenKH.setFont(new Font("Arial", Font.PLAIN, 18));
        panelThongTinHD.add(txtHoTenKH);
        txtHoTenKH.setColumns(10);

        JLabel lblTongTien = new JLabel("Tổng tiền:");
        lblTongTien.setForeground(TEXT_COLOR);
        lblTongTien.setFont(new Font("Arial", Font.PLAIN, 18));
        lblTongTien.setBounds(400, 80, 150, 30);
        panelThongTinHD.add(lblTongTien);

        txtTongTien = new JTextField();
        txtTongTien.setEditable(false);
        txtTongTien.setBounds(560, 80, 250, 30);
        txtTongTien.setForeground(TEXT_COLOR);
        txtTongTien.setBackground(new Color(240, 240, 240));
        txtTongTien.setFont(new Font("Arial", Font.PLAIN, 18));
        panelThongTinHD.add(txtTongTien);
        txtTongTien.setColumns(10);

        JLabel lblPTTT = new JLabel("PT thanh toán:");
        lblPTTT.setForeground(TEXT_COLOR);
        lblPTTT.setFont(new Font("Arial", Font.PLAIN, 18));
        lblPTTT.setBounds(400, 130, 150, 30);
        panelThongTinHD.add(lblPTTT);

        cboPhuongThucThanhToan = new JComboBox<>();
        cboPhuongThucThanhToan.setModel(new DefaultComboBoxModel<>(new String[]{"Tiền mặt", "Chuyển khoản", "Quẹt thẻ"}));
        cboPhuongThucThanhToan.setBounds(560, 130, 250, 30);
        cboPhuongThucThanhToan.setBackground(Color.WHITE);
        cboPhuongThucThanhToan.setForeground(TEXT_COLOR);
        cboPhuongThucThanhToan.setFont(new Font("Arial", Font.PLAIN, 18));
        panelThongTinHD.add(cboPhuongThucThanhToan);

        JLabel lblLyDoTra = new JLabel("Lý do trả:");
        lblLyDoTra.setForeground(TEXT_COLOR);
        lblLyDoTra.setFont(new Font("Arial", Font.PLAIN, 18));
        lblLyDoTra.setBounds(10, 180, 150, 30);
        panelThongTinHD.add(lblLyDoTra);

        txtLyDoTra = new JTextField();
        txtLyDoTra.setBounds(170, 180, 640, 30);
        txtLyDoTra.setForeground(TEXT_COLOR);
        txtLyDoTra.setFont(new Font("Arial", Font.PLAIN, 18));
        panelThongTinHD.add(txtLyDoTra);
        txtLyDoTra.setColumns(10);

        JLabel lblTienHoanTra = new JLabel("Tiền hoàn trả:");
        lblTienHoanTra.setForeground(TEXT_COLOR);
        lblTienHoanTra.setFont(new Font("Arial", Font.PLAIN, 18));
        lblTienHoanTra.setBounds(10, 220, 150, 30);
        panelThongTinHD.add(lblTienHoanTra);

        txtTienHoanTra = new JTextField();
        txtTienHoanTra.setEditable(false);
        txtTienHoanTra.setBounds(170, 220, 200, 30);
        txtTienHoanTra.setForeground(TEXT_COLOR);
        txtTienHoanTra.setBackground(new Color(240, 240, 240));
        txtTienHoanTra.setFont(new Font("Arial", Font.PLAIN, 18));
        panelThongTinHD.add(txtTienHoanTra);
        txtTienHoanTra.setColumns(10);

        // Panel chi tiết hóa đơn
        JPanel panelChiTietHD = new JPanel();
        panelChiTietHD.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1), "Chi tiết hóa đơn",
                TitledBorder.LEFT, TitledBorder.TOP, new Font("Arial", Font.BOLD, 18), TEXT_COLOR));
        panelChiTietHD.setBounds(10, 490, 700, 250);
        panelChiTietHD.setBackground(MAIN_COLOR);
        panelChiTietHD.setLayout(null);
        add(panelChiTietHD);

        JScrollPane scrollPaneChiTietHD = new JScrollPane();
        scrollPaneChiTietHD.setBounds(10, 20, 680, 220);
        panelChiTietHD.add(scrollPaneChiTietHD);

        tableChiTietHoaDon = new JTable();
        modelChiTietHoaDon = new DefaultTableModel(
            new Object[][] {},
            new String[] {"Tên thuốc", "Số lượng", "Đơn giá", "Thành tiền"}
        );
        tableChiTietHoaDon.setModel(modelChiTietHoaDon);
        tableChiTietHoaDon.setBackground(Color.WHITE);
        tableChiTietHoaDon.setForeground(TEXT_COLOR);
        tableChiTietHoaDon.setSelectionBackground(SELECTED_COLOR);
        tableChiTietHoaDon.getTableHeader().setBackground(TABLE_HEADER_COLOR);
        tableChiTietHoaDon.getTableHeader().setForeground(TEXT_COLOR);
        tableChiTietHoaDon.getTableHeader().setFont(new Font("Arial", Font.BOLD, 18));
        tableChiTietHoaDon.setRowHeight(30);
        tableChiTietHoaDon.setFont(new Font("Arial", Font.PLAIN, 16));
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
                TitledBorder.LEFT, TitledBorder.TOP, new Font("Arial", Font.BOLD, 18), TEXT_COLOR));
        panelChiTietTra.setBounds(720, 330, 820, 328);
        panelChiTietTra.setBackground(MAIN_COLOR);
        panelChiTietTra.setLayout(null);
        add(panelChiTietTra);

        JLabel lblSoLuongTra = new JLabel("Số lượng trả:");
        lblSoLuongTra.setForeground(TEXT_COLOR);
        lblSoLuongTra.setFont(new Font("Arial", Font.PLAIN, 18));
        lblSoLuongTra.setBounds(10, 30, 150, 30);
        panelChiTietTra.add(lblSoLuongTra);

        spinnerSoLuongTra = new JSpinner();
        spinnerSoLuongTra.setModel(new SpinnerNumberModel(1, 1, 100, 1));
        spinnerSoLuongTra.setBounds(170, 30, 100, 30);
        spinnerSoLuongTra.setFont(new Font("Arial", Font.PLAIN, 18));
        panelChiTietTra.add(spinnerSoLuongTra);

        btnThemVaoDS = new JButton("Thêm vào DS trả");
        btnThemVaoDS.setFont(new Font("Arial", Font.BOLD, 18));
        btnThemVaoDS.setBackground(BUTTON_COLOR);
        btnThemVaoDS.setForeground(BUTTON_TEXT_COLOR);
        btnThemVaoDS.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                themVaoDanhSachTra();
            }
        });
        btnThemVaoDS.setBounds(280, 30, 200, 30);
        panelChiTietTra.add(btnThemVaoDS);

        JScrollPane scrollPaneChiTietTra = new JScrollPane();
        scrollPaneChiTietTra.setBounds(10, 80, 800, 238);
        panelChiTietTra.add(scrollPaneChiTietTra);

        tableChiTietTra = new JTable();
        modelChiTietTra = new DefaultTableModel(
            new Object[][] {},
            new String[] {"Tên thuốc", "Số lượng trả", "Đơn giá", "Thành tiền"}
        );
        tableChiTietTra.setModel(modelChiTietTra);
        tableChiTietTra.setBackground(Color.WHITE);
        tableChiTietTra.setForeground(TEXT_COLOR);
        tableChiTietTra.setSelectionBackground(SELECTED_COLOR);
        tableChiTietTra.getTableHeader().setBackground(TABLE_HEADER_COLOR);
        tableChiTietTra.getTableHeader().setForeground(TEXT_COLOR);
        tableChiTietTra.getTableHeader().setFont(new Font("Arial", Font.BOLD, 18));
        tableChiTietTra.setRowHeight(30);
        tableChiTietTra.setFont(new Font("Arial", Font.PLAIN, 16));
        scrollPaneChiTietTra.setViewportView(tableChiTietTra);
        
                // Panel thao tác
                JPanel panelThaoTac = new JPanel();
                panelThaoTac.setBounds(720, 661, 820, 79);
                add(panelThaoTac);
                panelThaoTac.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1), "Thao tác",
                        TitledBorder.LEFT, TitledBorder.TOP, new Font("Arial", Font.BOLD, 18), TEXT_COLOR));
                panelThaoTac.setBackground(HEADER_COLOR);
                panelThaoTac.setLayout(null);
                
                        JLabel lblTienTraLai = new JLabel("Tiền trả lại khách:");
                        lblTienTraLai.setForeground(TEXT_COLOR);
                        lblTienTraLai.setFont(new Font("Arial", Font.BOLD, 16));
                        lblTienTraLai.setBounds(10, 30, 200, 40);
                        panelThaoTac.add(lblTienTraLai);
                        
                                txtTienTraLai = new JTextField();
                                txtTienTraLai.setFont(new Font("Arial", Font.BOLD, 16));
                                txtTienTraLai.setEditable(false);
                                txtTienTraLai.setBounds(155, 31, 250, 40);
                                txtTienTraLai.setForeground(new Color(165, 42, 42));
                                txtTienTraLai.setBackground(new Color(253, 245, 230));
                                panelThaoTac.add(txtTienTraLai);
                                txtTienTraLai.setColumns(10);
                                
                                        btnTraThuoc = new JButton("Trả thuốc");
                                        btnTraThuoc.setFont(new Font("Arial", Font.BOLD, 16));
                                        btnTraThuoc.setBackground(new Color(254, 152, 65));
                                        btnTraThuoc.setForeground(new Color(50, 20, 0));
                                        btnTraThuoc.addActionListener(new ActionListener() {
                                            public void actionPerformed(ActionEvent e) {
                                                thucHienTraThuoc();
                                            }
                                        });
                                        btnTraThuoc.setBounds(428, 30, 120, 40);
                                        panelThaoTac.add(btnTraThuoc);
                                        
                                                btnHuy = new JButton("Hủy");
                                                btnHuy.setFont(new Font("Arial", Font.BOLD, 16));
                                                btnHuy.setBackground(BUTTON_COLOR);
                                                btnHuy.setForeground(BUTTON_TEXT_COLOR);
                                                btnHuy.addActionListener(new ActionListener() {
                                                    public void actionPerformed(ActionEvent e) {
                                                        xoaDuLieuForm();
                                                    }
                                                });
                                                btnHuy.setBounds(558, 30, 120, 40);
                                                panelThaoTac.add(btnHuy);
                                                
                                                        btnLamMoi = new JButton("Làm mới");
                                                        btnLamMoi.setFont(new Font("Arial", Font.BOLD, 16));
                                                        btnLamMoi.setBackground(BUTTON_COLOR);
                                                        btnLamMoi.setForeground(BUTTON_TEXT_COLOR);
                                                        btnLamMoi.addActionListener(new ActionListener() {
                                                            public void actionPerformed(ActionEvent e) {
                                                                xoaDuLieuForm();
                                                            }
                                                        });
                                                        btnLamMoi.setBounds(688, 30, 120, 40);
                                                        panelThaoTac.add(btnLamMoi);
    }

    private void timKiemHoaDon() {
        String tuKhoa = txtTimKiem.getText().trim();
        String loaiTimKiem = (String) cboLoaiTimKiem.getSelectedItem();
        if (tuKhoa.isEmpty()) {
            JOptionPane.showMessageDialog(this, "Vui lòng nhập từ khóa tìm kiếm", "Thông báo", JOptionPane.WARNING_MESSAGE);
            return;
        }

        while (modelHoaDon.getRowCount() > 0) {
            modelHoaDon.removeRow(0);
        }

        String maHoaDon = "";
        String maNV = "";
        String maKH = "";
        String fromDate = "";
        String toDate = "";

        if ("Mã hóa đơn".equals(loaiTimKiem)) {
            maHoaDon = tuKhoa;
        } else if ("Số điện thoại khách hàng".equals(loaiTimKiem)) {
            Map<String, String> khachHangData = khachHangDAO.getThongTinKhachHang(tuKhoa);
            maKH = khachHangData.getOrDefault("maKH", null);
            if (maKH == null) {
                JOptionPane.showMessageDialog(this, "Không tìm thấy khách hàng với số điện thoại này!", "Thông báo", JOptionPane.INFORMATION_MESSAGE);
                return;
            }
        } else if ("Tên khách hàng".equals(loaiTimKiem)) {
            List<Object[]> khachHangList = khachHangDAO.searchKhachHang("", tuKhoa, "", "");
            if (khachHangList.isEmpty()) {
                JOptionPane.showMessageDialog(this, "Không tìm thấy khách hàng với tên này!", "Thông báo", JOptionPane.INFORMATION_MESSAGE);
                return;
            }
            maKH = (String) khachHangList.get(0)[0]; // Lấy maKH của khách hàng đầu tiên
        }

        List<Object[]> result = hoaDonDAO.searchHoaDon(maHoaDon, maNV, maKH, fromDate, toDate);
        for (Object[] row : result) {
            String maHD = (String) row[0];
            double tongTien = 0;
            List<Object[]> chiTiet = chiTietHoaDonDAO.getChiTietHoaDon(maHD);
            for (Object[] ct : chiTiet) {
                String thanhTienStr = ((String) ct[3]).replace("đ", "").replace(",", "");
                tongTien += Double.parseDouble(thanhTienStr);
            }
            DecimalFormat df = new DecimalFormat("#,###");
            String tongTienFormatted = df.format(tongTien) + "đ";
            String tenKH = khachHangDAO.getTenKHByMaKH((String) row[2]);
            modelHoaDon.addRow(new Object[]{row[0], row[3], tenKH, tongTienFormatted, "Đã thanh toán"});
        }
    }

    private void hienThiChiTietHoaDon() {
        int row = tableHoaDon.getSelectedRow();
        if (row >= 0) {
            String maHD = modelHoaDon.getValueAt(row, 0).toString();
            String ngayLap = modelHoaDon.getValueAt(row, 1).toString();
            String maKH = hoaDonDAO.searchHoaDon(maHD, "", "", "", "").get(0)[2].toString(); // Lấy maKH từ hóa đơn
            String tongTien = modelHoaDon.getValueAt(row, 3).toString();

            txtMaHoaDon.setText(maHD);
            txtNgayLap.setText(ngayLap);
            txtMaKhachHang.setText(maKH);
            txtHoTenKH.setText(khachHangDAO.getTenKHByMaKH(maKH));
            txtTongTien.setText(tongTien);

            while (modelChiTietHoaDon.getRowCount() > 0) {
                modelChiTietHoaDon.removeRow(0);
            }
            List<Object[]> chiTiet = chiTietHoaDonDAO.getChiTietHoaDon(maHD);
            for (Object[] rowChiTiet : chiTiet) {
                modelChiTietHoaDon.addRow(rowChiTiet);
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
        String tenThuoc = (String) modelChiTietHoaDon.getValueAt(rowHD, 0);
        int soLuongMua = (int) modelChiTietHoaDon.getValueAt(rowHD, 1);
        String donGia = ((String) modelChiTietHoaDon.getValueAt(rowHD, 2)).replace("đ", "").replace(",", "");
        int soLuongTra = (int) spinnerSoLuongTra.getValue();
        if (soLuongTra > soLuongMua) {
            JOptionPane.showMessageDialog(this, "Số lượng trả không được lớn hơn số lượng đã mua", "Cảnh báo", JOptionPane.WARNING_MESSAGE);
            return;
        }
        double donGiaValue = Double.parseDouble(donGia);
        double thanhTien = donGiaValue * soLuongTra;
        DecimalFormat df = new DecimalFormat("#,###");
        String thanhTienFormatted = df.format(thanhTien) + "đ";
        boolean daTonTai = false;
        for (int i = 0; i < modelChiTietTra.getRowCount(); i++) {
            if (modelChiTietTra.getValueAt(i, 0).equals(tenThuoc)) {
                daTonTai = true;
                JOptionPane.showMessageDialog(this, "Thuốc này đã có trong danh sách trả", "Thông báo", JOptionPane.INFORMATION_MESSAGE);
                break;
            }
        }
        if (!daTonTai) {
            modelChiTietTra.addRow(new Object[]{tenThuoc, soLuongTra, donGia + "đ", thanhTienFormatted});
            capNhatTongTienHoanTra();
        }
    }

    private void capNhatTongTienHoanTra() {
        double tongTienHoanTra = 0;
        for (int i = 0; i < modelChiTietTra.getRowCount(); i++) {
            String thanhTienStr = ((String) modelChiTietTra.getValueAt(i, 3)).replace("đ", "").replace(",", "");
            tongTienHoanTra += Double.parseDouble(thanhTienStr);
        }
        DecimalFormat df = new DecimalFormat("#,###");
        txtTienHoanTra.setText(df.format(tongTienHoanTra) + "đ");
        txtTienTraLai.setText(df.format(tongTienHoanTra) + "đ");
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

        String maHD = txtMaHoaDon.getText();
        String lyDo = txtLyDoTra.getText();
        List<Object[]> chiTietTra = new ArrayList<>();
        for (int i = 0; i < modelChiTietTra.getRowCount(); i++) {
            Object[] row = new Object[4];
            for (int j = 0; j < 4; j++) {
                row[j] = modelChiTietTra.getValueAt(i, j);
            }
            chiTietTra.add(row);
        }

        Connection con = null;
        PreparedStatement stmt = null;
        try {
            con = ConnectDB.getConnection("DB_QuanLyNhaThuoc");
            con.setAutoCommit(false);

            String sqlTraHang = "INSERT INTO TraHang (maHD, ngayTra, lyDo, tongTien) VALUES (?, ?, ?, ?)";
            stmt = con.prepareStatement(sqlTraHang);
            stmt.setString(1, maHD);
            stmt.setDate(2, new java.sql.Date(new java.util.Date().getTime()));
            stmt.setString(3, lyDo);
            double tongTien = Double.parseDouble(txtTienHoanTra.getText().replace("đ", "").replace(",", ""));
            stmt.setDouble(4, tongTien);
            stmt.executeUpdate();

            String sqlUpdateThuoc = "UPDATE Thuoc t JOIN ChiTietHoaDon c ON t.maThuoc = c.maThuoc " +
                    "SET t.soLuongTon = t.soLuongTon + ? WHERE c.maHD = ? AND t.tenThuoc = ?";
            for (Object[] ct : chiTietTra) {
                stmt = con.prepareStatement(sqlUpdateThuoc);
                stmt.setInt(1, (int) ct[1]); // soLuongTra
                stmt.setString(2, maHD);
                stmt.setString(3, (String) ct[0]); // tenThuoc
                stmt.executeUpdate();
            }

            con.commit();
            JOptionPane.showMessageDialog(this, "Trả thuốc thành công\nSố tiền hoàn trả: " + txtTienHoanTra.getText(),
                    "Thông báo", JOptionPane.INFORMATION_MESSAGE);
            xoaDuLieuForm();
        } catch (SQLException e) {
            e.printStackTrace();
            if (con != null) try { con.rollback(); } catch (SQLException ex) { ex.printStackTrace(); }
            JOptionPane.showMessageDialog(this, "Trả thuốc thất bại: " + e.getMessage(), "Lỗi", JOptionPane.ERROR_MESSAGE);
        } finally {
            if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
            if (con != null) try { con.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
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
    }

    public static void main(String[] args) {
        EventQueue.invokeLater(new Runnable() {
            public void run() {
                javax.swing.JFrame frame = new javax.swing.JFrame("Test Panel Giao Dịch Trả Thuốc");
                frame.setDefaultCloseOperation(javax.swing.JFrame.EXIT_ON_CLOSE);
                frame.getContentPane().add(new Frame_Thuoc_GiaoDich_TraThuoc());
                frame.pack();
                frame.setLocationRelativeTo(null);
                frame.setVisible(true);
            }
        });
    }
}