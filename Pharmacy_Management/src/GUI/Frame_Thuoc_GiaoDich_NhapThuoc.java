package GUI;

import javax.swing.*;
import javax.swing.border.LineBorder;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.JTableHeader;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.toedter.calendar.JDateChooser;

import java.awt.*;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Vector;
import DAO.*;
import connectDB.ConnectDB;

public class Frame_Thuoc_GiaoDich_NhapThuoc extends JPanel {
    private static final long serialVersionUID = 1L;
    private JTextField txtMaPhieuNhap;
    private JTextField txtNgayNhap;
    private JComboBox<String> cboNhaCungCap;
    private JComboBox<String> cboHinhThucThanhToan;
    private JTextField txtTongTien;
    private JTextField txtTimKiemThuoc;
    private JComboBox<String> cboThuoc;
    private JTextField txtDonGiaNhap;
    private JSpinner spinnerSoLuong;
    private JTable tableThuocNhap;
    private DefaultTableModel modelThuocNhap;
    private NhapThuocDAO NhapThuocDAO = new NhapThuocDAO();
    private ChiTietNhapThuocDAO chiTietNhapThuocDAO = new ChiTietNhapThuocDAO();
    private ThuocDAO thuocDAO = new ThuocDAO();
    private NhaCungCapDAO nhaCungCapDAO = new NhaCungCapDAO();
    private TaiChinhDAO taiChinhDAO = new TaiChinhDAO();
    private String maNV;
    private String maThuocKeTiep;
    private JTextField txtMaThuoc; // Added class-level field

    // Các thành phần hiển thị thông tin chi tiết thuốc trong panel_ChonThuoc
    private JLabel lblChiTietMaThuoc;
    private JTextField txtChiTietMaThuoc;
    private JLabel lblChiTietTenThuoc;
    private JTextField txtChiTietTenThuoc;
    private JLabel lblChiTietDonViTinh;
    private JTextField txtChiTietDonViTinh;
    private JLabel lblChiTietDonGiaNhap;
    private JTextField txtChiTietDonGiaNhap;
    private JLabel lblChiTietDonGiaBan;
    private JTextField txtChiTietDonGiaBan;
    private JLabel lblChiTietHanSuDung;
    private JTextField txtChiTietHanSuDung;
    private JLabel lblChiTietHamLuong;
    private JTextField txtChiTietHamLuong;
    private JLabel lblChiTietSoLuongTon;
    private JTextField txtChiTietSoLuongTon;

    // JDateChooser cho Hạn Sử Dụng
    private JDateChooser dateChooserHanSuDung;

    // Panel Chọn Thuốc Nhập
    private JPanel panel_ChonThuoc;

    public Frame_Thuoc_GiaoDich_NhapThuoc(String maNV) {
        this.maNV = maNV;
        setLayout(null);
        setPreferredSize(new Dimension(1550, 755));
        initialize();
        loadData();
        setInitialValues();
    }

    @SuppressWarnings("serial")
    private void initialize() {
        JPanel pnlBackground = new JPanel();
        pnlBackground.setBounds(0, 0, 1559, 771);
        pnlBackground.setBackground(new Color(254, 222, 192));
        add(pnlBackground);
        pnlBackground.setLayout(null);

        // Panel Thông Tin Phiếu Nhập
        JPanel panel_PhieuNhap = new JPanel();
        panel_PhieuNhap.setBackground(new Color(220, 128, 78));
        panel_PhieuNhap.setBounds(957, 10, 568, 400);
        panel_PhieuNhap.setBorder(BorderFactory.createTitledBorder(
                new LineBorder(Color.WHITE, 2), "Thông Tin Phiếu Nhập",
                0, 0, new Font("Segoe UI", Font.PLAIN, 12)));
        panel_PhieuNhap.setLayout(null);
        pnlBackground.add(panel_PhieuNhap);

        JLabel lblMaPhieuNhap = new JLabel("Mã Phiếu Nhập:");
        lblMaPhieuNhap.setFont(new Font("Segoe UI", Font.BOLD, 20));
        lblMaPhieuNhap.setBounds(10, 38, 166, 45);
        panel_PhieuNhap.add(lblMaPhieuNhap);

        txtMaPhieuNhap = new JTextField();
        txtMaPhieuNhap.setFont(new Font("Segoe UI", Font.PLAIN, 17));
        txtMaPhieuNhap.setBounds(186, 38, 372, 43);
        txtMaPhieuNhap.setEditable(false);
        panel_PhieuNhap.add(txtMaPhieuNhap);

        JLabel lblNgayNhap = new JLabel("Ngày Nhập:");
        lblNgayNhap.setFont(new Font("Segoe UI", Font.BOLD, 20));
        lblNgayNhap.setBounds(10, 93, 166, 45);
        panel_PhieuNhap.add(lblNgayNhap);

        txtNgayNhap = new JTextField();
        txtNgayNhap.setFont(new Font("Helvetica", Font.PLAIN, 16));
        txtNgayNhap.setBounds(186, 93, 372, 43);
        txtNgayNhap.setEditable(false);
        panel_PhieuNhap.add(txtNgayNhap);

        JLabel lblNhaCungCap = new JLabel("Nhà Cung Cấp:");
        lblNhaCungCap.setFont(new Font("Segoe UI", Font.BOLD, 20));
        lblNhaCungCap.setBounds(10, 148, 166, 45);
        panel_PhieuNhap.add(lblNhaCungCap);

        cboNhaCungCap = new JComboBox<>();
        cboNhaCungCap.setFont(new Font("Segoe UI", Font.PLAIN, 16));
        cboNhaCungCap.setBounds(186, 148, 372, 43);
        panel_PhieuNhap.add(cboNhaCungCap);

        JLabel lblHinhThucThanhToan = new JLabel("Hình Thức TT:");
        lblHinhThucThanhToan.setFont(new Font("Segoe UI", Font.BOLD, 20));
        lblHinhThucThanhToan.setBounds(10, 203, 166, 45);
        panel_PhieuNhap.add(lblHinhThucThanhToan);

        cboHinhThucThanhToan = new JComboBox<>(new String[]{"Tiền mặt", "Chuyển khoản"});
        cboHinhThucThanhToan.setFont(new Font("Segoe UI", Font.PLAIN, 17));
        cboHinhThucThanhToan.setBounds(186, 203, 372, 43);
        panel_PhieuNhap.add(cboHinhThucThanhToan);

        JLabel lblTongTien = new JLabel("Tổng Tiền:");
        lblTongTien.setFont(new Font("Segoe UI", Font.BOLD, 20));
        lblTongTien.setBounds(10, 258, 166, 45);
        panel_PhieuNhap.add(lblTongTien);

        txtTongTien = new JTextField("0đ");
        txtTongTien.setFont(new Font("Segoe UI", Font.PLAIN, 17));
        txtTongTien.setBounds(186, 258, 372, 43);
        txtTongTien.setEditable(false);
        panel_PhieuNhap.add(txtTongTien);

        JButton btnLuu = new JButton("LƯU PHIẾU NHẬP");
        btnLuu.setBounds(82, 338, 200, 51);
        panel_PhieuNhap.add(btnLuu);
        btnLuu.setForeground(Color.WHITE);
        btnLuu.setFont(new Font("Segoe UI", Font.BOLD, 20));
        btnLuu.setBackground(new Color(0, 128, 255));
        btnLuu.setOpaque(true);
        btnLuu.setBorderPainted(false);

        JButton btnHuy = new JButton("HỦY");
        btnHuy.setBounds(296, 338, 200, 51);
        panel_PhieuNhap.add(btnHuy);
        btnHuy.setForeground(Color.WHITE);
        btnHuy.setFont(new Font("Segoe UI", Font.BOLD, 20));
        btnHuy.setBackground(new Color(255, 0, 0));
        btnHuy.setOpaque(true);
        btnHuy.setBorderPainted(false);
        btnHuy.addActionListener(e -> resetForm());
        btnLuu.addActionListener(e -> luuPhieuNhap());

        // Panel Chọn Thuốc Nhập
        panel_ChonThuoc = new JPanel();
        panel_ChonThuoc.setBackground(new Color(220, 128, 78));
        panel_ChonThuoc.setBounds(10, 420, 1515, 321);
        panel_ChonThuoc.setBorder(BorderFactory.createTitledBorder(
                new LineBorder(Color.WHITE, 2), "Chọn Thuốc Nhập",
                0, 0, new Font("Segoe UI", Font.PLAIN, 12)));
        panel_ChonThuoc.setLayout(null);
        pnlBackground.add(panel_ChonThuoc);

        // Khu vực tìm kiếm và nhập liệu thuốc (bên trái)
        JPanel panelNhapThuoc = new JPanel();
        panelNhapThuoc.setBackground(new Color(220, 128, 78));
        panelNhapThuoc.setBounds(22, 20, 701, 280);
        panelNhapThuoc.setBorder(BorderFactory.createTitledBorder(
                new LineBorder(Color.WHITE, 1), "Nhập Thuốc",
                0, 0, new Font("Segoe UI", Font.PLAIN, 12)));
        panelNhapThuoc.setLayout(null);
        panel_ChonThuoc.add(panelNhapThuoc);

        JLabel lblMaThuoc = new JLabel("Mã Thuốc:");
        lblMaThuoc.setFont(new Font("Segoe UI", Font.BOLD, 16));
        lblMaThuoc.setBounds(20, 30, 100, 30);
        panelNhapThuoc.add(lblMaThuoc);

        txtMaThuoc = new JTextField();
        txtMaThuoc.setFont(new Font("Segoe UI", Font.PLAIN, 16));
        txtMaThuoc.setBounds(151, 30, 524, 30);
        txtMaThuoc.setEditable(false);
        panelNhapThuoc.add(txtMaThuoc);

        JLabel lblTenThuoc = new JLabel("Tên Thuốc:");
        lblTenThuoc.setFont(new Font("Segoe UI", Font.BOLD, 16));
        lblTenThuoc.setBounds(20, 80, 100, 30);
        panelNhapThuoc.add(lblTenThuoc);

        txtTimKiemThuoc = new JTextField();
        txtTimKiemThuoc.setFont(new Font("Segoe UI", Font.PLAIN, 16));
        txtTimKiemThuoc.setBounds(151, 80, 240, 30);
        panelNhapThuoc.add(txtTimKiemThuoc);

        JButton btnTimThuoc = new JButton("Tìm");
        btnTimThuoc.setIcon(new ImageIcon("icon\\find.png"));
        btnTimThuoc.setFont(new Font("Times New Roman", Font.BOLD, 16));
        btnTimThuoc.setBounds(403, 82, 120, 30);
        btnTimThuoc.addActionListener(e -> {
            timThuoc();
            String selectedThuoc = (String) cboThuoc.getSelectedItem();
            if (selectedThuoc != null && !selectedThuoc.equals("Không tìm thấy thuốc")) {
                txtMaThuoc.setText(maThuocKeTiep);
            } else {
                txtMaThuoc.setText("");
            }
        });
        panelNhapThuoc.add(btnTimThuoc);

        JButton btnReset = new JButton("Reset");
        btnReset.setIcon(new ImageIcon("icon\\refresh.png"));
        btnReset.setFont(new Font("Times New Roman", Font.BOLD, 16));
        btnReset.setBounds(540, 82, 135, 30);
        btnReset.addActionListener(e -> {
            resetThuoc();
            txtMaThuoc.setText(maThuocKeTiep);
        });
        panelNhapThuoc.add(btnReset);

        JLabel lblThuoc = new JLabel("Thuốc:");
        lblThuoc.setFont(new Font("Segoe UI", Font.BOLD, 16));
        lblThuoc.setBounds(20, 130, 100, 30);
        panelNhapThuoc.add(lblThuoc);

        cboThuoc = new JComboBox<>();
        cboThuoc.setFont(new Font("Segoe UI", Font.PLAIN, 16));
        cboThuoc.setBounds(151, 130, 240, 30);
        cboThuoc.addActionListener(e -> {
            updateDonGia();
            String selectedThuoc = (String) cboThuoc.getSelectedItem();
            if (selectedThuoc != null && !selectedThuoc.equals("Không tìm thấy thuốc")) {
                txtMaThuoc.setText(maThuocKeTiep);
            } else {
                txtMaThuoc.setText("");
            }
        });
        panelNhapThuoc.add(cboThuoc);

        JLabel lblHanSuDung = new JLabel("Hạn Sử Dụng:");
        lblHanSuDung.setFont(new Font("Segoe UI", Font.BOLD, 16));
        lblHanSuDung.setBounds(413, 130, 125, 30);
        panelNhapThuoc.add(lblHanSuDung);

        dateChooserHanSuDung = new JDateChooser();
        dateChooserHanSuDung.setDateFormatString("dd/MM/yyyy");
        dateChooserHanSuDung.setFont(new Font("Segoe UI", Font.PLAIN, 16));
        dateChooserHanSuDung.setBounds(540, 130, 135, 30);
        panelNhapThuoc.add(dateChooserHanSuDung);

        JLabel lblDonGia = new JLabel("Đơn Giá Nhập:");
        lblDonGia.setFont(new Font("Segoe UI", Font.BOLD, 16));
        lblDonGia.setBounds(403, 180, 125, 30);
        panelNhapThuoc.add(lblDonGia);

        txtDonGiaNhap = new JTextField("0đ");
        txtDonGiaNhap.setFont(new Font("Segoe UI", Font.PLAIN, 16));
        txtDonGiaNhap.setBounds(540, 180, 135, 30);
        panelNhapThuoc.add(txtDonGiaNhap);

        JLabel lblSoLuong = new JLabel("Số Lượng:");
        lblSoLuong.setFont(new Font("Segoe UI", Font.BOLD, 16));
        lblSoLuong.setBounds(20, 180, 100, 30);
        panelNhapThuoc.add(lblSoLuong);

        spinnerSoLuong = new JSpinner(new SpinnerNumberModel(1, 1, 1000, 1));
        spinnerSoLuong.setFont(new Font("Segoe UI", Font.PLAIN, 16));
        spinnerSoLuong.setBounds(151, 180, 240, 30);
        panelNhapThuoc.add(spinnerSoLuong);

        JButton btnThemThuoc = new JButton("Thêm");
        btnThemThuoc.setIcon(new ImageIcon("icon\\add.png"));
        btnThemThuoc.setFont(new Font("Times New Roman", Font.BOLD, 20));
        btnThemThuoc.setBounds(151, 223, 185, 44);
        btnThemThuoc.addActionListener(e -> {
            try {
                String hanSuDung = dateChooserHanSuDung.getDate() != null ?
                    new SimpleDateFormat("dd/MM/yyyy").format(dateChooserHanSuDung.getDate()) : "";
                themThuoc(hanSuDung);
            } catch (java.text.ParseException ex) {
                JOptionPane.showMessageDialog(this, "Lỗi định dạng hạn sử dụng: " + ex.getMessage());
            }
        });
        panelNhapThuoc.add(btnThemThuoc);

        JButton btnNhapTuExcel = new JButton("Nhập");
        btnNhapTuExcel.setIcon(new ImageIcon("icon\\excel.png"));
        btnNhapTuExcel.setFont(new Font("Times New Roman", Font.BOLD, 20));
        btnNhapTuExcel.setBounds(348, 223, 185, 44);
        btnNhapTuExcel.addActionListener(e -> nhapTuExcel());
        panelNhapThuoc.add(btnNhapTuExcel);

        // Khu vực thông tin chi tiết thuốc (phần còn lại của panel)
        JPanel panelChiTietThuoc = new JPanel();
        panelChiTietThuoc.setBackground(new Color(220, 128, 78));
        panelChiTietThuoc.setBounds(733, 20, 770, 280);
        panelChiTietThuoc.setBorder(BorderFactory.createTitledBorder(
                new LineBorder(Color.WHITE, 1), "Thông Tin Chi Tiết Thuốc",
                0, 0, new Font("Segoe UI", Font.PLAIN, 12)));
        panelChiTietThuoc.setLayout(null);
        panel_ChonThuoc.add(panelChiTietThuoc);

        lblChiTietMaThuoc = new JLabel("Mã thuốc:");
        lblChiTietMaThuoc.setFont(new Font("Segoe UI", Font.BOLD, 16));
        lblChiTietMaThuoc.setBounds(22, 30, 131, 25);
        panelChiTietThuoc.add(lblChiTietMaThuoc);

        txtChiTietMaThuoc = new JTextField();
        txtChiTietMaThuoc.setFont(new Font("Segoe UI", Font.PLAIN, 14));
        txtChiTietMaThuoc.setBounds(163, 30, 220, 25);
        txtChiTietMaThuoc.setEditable(false);
        panelChiTietThuoc.add(txtChiTietMaThuoc);

        lblChiTietTenThuoc = new JLabel("Tên thuốc:");
        lblChiTietTenThuoc.setFont(new Font("Segoe UI", Font.BOLD, 16));
        lblChiTietTenThuoc.setBounds(22, 79, 131, 25);
        panelChiTietThuoc.add(lblChiTietTenThuoc);

        txtChiTietTenThuoc = new JTextField();
        txtChiTietTenThuoc.setFont(new Font("Segoe UI", Font.PLAIN, 14));
        txtChiTietTenThuoc.setBounds(163, 79, 220, 25);
        txtChiTietTenThuoc.setEditable(false);
        panelChiTietThuoc.add(txtChiTietTenThuoc);

        lblChiTietDonViTinh = new JLabel("Đơn vị tính:");
        lblChiTietDonViTinh.setFont(new Font("Segoe UI", Font.BOLD, 16));
        lblChiTietDonViTinh.setBounds(22, 127, 131, 25);
        panelChiTietThuoc.add(lblChiTietDonViTinh);

        txtChiTietDonViTinh = new JTextField();
        txtChiTietDonViTinh.setFont(new Font("Segoe UI", Font.PLAIN, 14));
        txtChiTietDonViTinh.setBounds(163, 127, 220, 25);
        txtChiTietDonViTinh.setEditable(false);
        panelChiTietThuoc.add(txtChiTietDonViTinh);

        lblChiTietDonGiaNhap = new JLabel("Đơn giá nhập:");
        lblChiTietDonGiaNhap.setFont(new Font("Segoe UI", Font.BOLD, 16));
        lblChiTietDonGiaNhap.setBounds(22, 178, 131, 25);
        panelChiTietThuoc.add(lblChiTietDonGiaNhap);

        txtChiTietDonGiaNhap = new JTextField();
        txtChiTietDonGiaNhap.setFont(new Font("Segoe UI", Font.PLAIN, 14));
        txtChiTietDonGiaNhap.setBounds(163, 178, 220, 25);
        txtChiTietDonGiaNhap.setEditable(false);
        panelChiTietThuoc.add(txtChiTietDonGiaNhap);

        lblChiTietDonGiaBan = new JLabel("Đơn giá bán:");
        lblChiTietDonGiaBan.setFont(new Font("Segoe UI", Font.BOLD, 16));
        lblChiTietDonGiaBan.setBounds(22, 228, 131, 25);
        panelChiTietThuoc.add(lblChiTietDonGiaBan);

        txtChiTietDonGiaBan = new JTextField();
        txtChiTietDonGiaBan.setFont(new Font("Segoe UI", Font.PLAIN, 14));
        txtChiTietDonGiaBan.setBounds(163, 228, 220, 25);
        txtChiTietDonGiaBan.setEditable(false);
        panelChiTietThuoc.add(txtChiTietDonGiaBan);

        lblChiTietHanSuDung = new JLabel("Hạn sử dụng:");
        lblChiTietHanSuDung.setFont(new Font("Segoe UI", Font.BOLD, 16));
        lblChiTietHanSuDung.setBounds(395, 30, 148, 25);
        panelChiTietThuoc.add(lblChiTietHanSuDung);

        txtChiTietHanSuDung = new JTextField();
        txtChiTietHanSuDung.setFont(new Font("Segoe UI", Font.PLAIN, 14));
        txtChiTietHanSuDung.setBounds(553, 30, 200, 25);
        txtChiTietHanSuDung.setEditable(false);
        panelChiTietThuoc.add(txtChiTietHanSuDung);

        lblChiTietHamLuong = new JLabel("Hàm lượng:");
        lblChiTietHamLuong.setFont(new Font("Segoe UI", Font.BOLD, 16));
        lblChiTietHamLuong.setBounds(395, 79, 148, 25);
        panelChiTietThuoc.add(lblChiTietHamLuong);

        txtChiTietHamLuong = new JTextField();
        txtChiTietHamLuong.setFont(new Font("Segoe UI", Font.PLAIN, 14));
        txtChiTietHamLuong.setBounds(553, 79, 200, 25);
        txtChiTietHamLuong.setEditable(false);
        panelChiTietThuoc.add(txtChiTietHamLuong);

        lblChiTietSoLuongTon = new JLabel("Số lượng tồn:");
        lblChiTietSoLuongTon.setFont(new Font("Segoe UI", Font.BOLD, 16));
        lblChiTietSoLuongTon.setBounds(395, 127, 148, 25);
        panelChiTietThuoc.add(lblChiTietSoLuongTon);

        txtChiTietSoLuongTon = new JTextField();
        txtChiTietSoLuongTon.setFont(new Font("Segoe UI", Font.PLAIN, 14));
        txtChiTietSoLuongTon.setBounds(553, 127, 200, 25);
        txtChiTietSoLuongTon.setEditable(false);
        panelChiTietThuoc.add(txtChiTietSoLuongTon);

        // Panel Danh Sách Thuốc Nhập
        JPanel panel_DanhSachThuoc = new JPanel();
        panel_DanhSachThuoc.setBackground(new Color(220, 128, 78));
        panel_DanhSachThuoc.setBounds(10, 10, 933, 400);
        panel_DanhSachThuoc.setBorder(BorderFactory.createTitledBorder(
                new LineBorder(Color.WHITE, 2), "Danh Sách Thuốc Nhập",
                0, 0, new Font("Segoe UI", Font.PLAIN, 12)));
        pnlBackground.add(panel_DanhSachThuoc);
        panel_DanhSachThuoc.setLayout(null);

        JScrollPane scrollPaneThuocNhap = new JScrollPane();
        scrollPaneThuocNhap.setBounds(20, 25, 900, 366);
        panel_DanhSachThuoc.add(scrollPaneThuocNhap);

        tableThuocNhap = new JTable();
        tableThuocNhap.setFont(new Font("Segoe UI", Font.PLAIN, 15));
        JTableHeader header = tableThuocNhap.getTableHeader();
        header.setFont(new Font("Segoe UI", Font.BOLD, 16));
        modelThuocNhap = new DefaultTableModel(
                new Object[][]{},
                new String[]{"Mã Thuốc", "Tên Thuốc", "Đơn Vị Tính", "HSD", "Hàm Lượng", 
                             "ĐGN", "ĐGB", "Số Lượng", "Thành Tiền"}) {
            @Override
            public boolean isCellEditable(int row, int column) {
                return false;
            }
        };
        tableThuocNhap.setModel(modelThuocNhap);
        tableThuocNhap.setRowHeight(30);
        DefaultTableCellRenderer centerRenderer = new DefaultTableCellRenderer();
        centerRenderer.setHorizontalAlignment(JLabel.CENTER);
        for (int i = 0; i < tableThuocNhap.getColumnCount(); i++) {
            tableThuocNhap.getColumnModel().getColumn(i).setCellRenderer(centerRenderer);
        }
        scrollPaneThuocNhap.setViewportView(tableThuocNhap);
    }

    private void setInitialValues() {
        txtMaPhieuNhap.setText(NhapThuocDAO.generateMaPhieuNhap());
        txtNgayNhap.setText(new SimpleDateFormat("dd/MM/yyyy").format(new Date()));
        txtTongTien.setText("0đ");
        clearChiTietThuoc();
        // Khởi tạo mã thuốc mới dựa trên mã cuối cùng trong database
        String lastMaThuoc = thuocDAO.getLastMaThuoc();
        maThuocKeTiep = generateMaThuocKeTiep(lastMaThuoc);
        txtMaThuoc.setText(maThuocKeTiep);
    }

    private void loadData() {
        List<Object[]> thuocList = thuocDAO.getAllThuoc();
        Vector<String> thuocItems = new Vector<>();
        for (Object[] thuoc : thuocList) {
            thuocItems.add(thuoc[0] + " - " + thuoc[1]);
        }
        cboThuoc.setModel(new DefaultComboBoxModel<>(thuocItems));

        List<Object[]> nccList = nhaCungCapDAO.getAllNhaCungCap();
        Vector<String> nccItems = new Vector<>();
        for (Object[] ncc : nccList) {
            nccItems.add(ncc[0] + " - " + ncc[1]);
        }
        cboNhaCungCap.setModel(new DefaultComboBoxModel<>(nccItems));
    }

    private void timThuoc() {
        String keyword = txtTimKiemThuoc.getText().trim();
        List<Object[]> results = thuocDAO.timKiemThuoc("", keyword, "");
        Vector<String> thuocItems = new Vector<>();

        if (results.isEmpty()) {
            JOptionPane.showMessageDialog(this, "Không tìm thấy thuốc với tên: " + keyword);
            thuocItems.add("Không tìm thấy thuốc");
            cboThuoc.setModel(new DefaultComboBoxModel<>(thuocItems));
            txtDonGiaNhap.setText("0đ");
            clearChiTietThuoc();
            txtMaThuoc.setText("");
            return;
        }

        thuocItems.clear();
        for (Object[] thuoc : results) {
            String maThuoc = (String) thuoc[0];
            String tenThuoc = (String) thuoc[1];
            thuocItems.add(maThuoc + " - " + tenThuoc);
            if (thuocItems.size() == 1) {
                txtChiTietMaThuoc.setText((String) thuoc[0]);
                txtChiTietTenThuoc.setText((String) thuoc[1]);
                txtChiTietDonViTinh.setText((String) thuoc[2]);
                txtChiTietDonGiaNhap.setText((String) thuoc[3]);
                txtChiTietDonGiaBan.setText((String) thuoc[4]);
                txtChiTietHanSuDung.setText((String) thuoc[5]);
                txtChiTietHamLuong.setText((String) thuoc[6]);
                txtChiTietSoLuongTon.setText(String.valueOf(thuoc[7] != null ? thuoc[7] : "0"));
            }
        }
        cboThuoc.setModel(new DefaultComboBoxModel<>(thuocItems));
        updateDonGia();
        txtMaThuoc.setText(maThuocKeTiep);
    }

    private void updateDonGia() {
        String selectedThuoc = (String) cboThuoc.getSelectedItem();
        if (selectedThuoc != null && !selectedThuoc.equals("Không tìm thấy thuốc")) {
            String maThuoc = selectedThuoc.split(" - ")[0];
            double donGia = thuocDAO.getDonGiaNhap(maThuoc);
            txtDonGiaNhap.setText(String.format("%,.0fđ", donGia));

            List<Object[]> results = thuocDAO.timKiemThuoc(maThuoc, "", "");
            if (!results.isEmpty()) {
                Object[] thuoc = results.get(0);
                txtChiTietMaThuoc.setText((String) thuoc[0]);
                txtChiTietTenThuoc.setText((String) thuoc[1]);
                txtChiTietDonViTinh.setText((String) thuoc[2]);
                txtChiTietDonGiaNhap.setText((String) thuoc[3]);
                txtChiTietDonGiaBan.setText((String) thuoc[4]);
                txtChiTietHanSuDung.setText((String) thuoc[5]);
                txtChiTietHamLuong.setText((String) thuoc[6]);
                txtChiTietSoLuongTon.setText(String.valueOf(thuoc[7] != null ? thuoc[7] : "0"));
            }
            txtMaThuoc.setText(maThuocKeTiep);
        } else {
            txtDonGiaNhap.setText("0đ");
            clearChiTietThuoc();
            txtMaThuoc.setText("");
        }
    }

    private void themThuoc(String hanSuDung) throws java.text.ParseException {
        String selectedThuoc = (String) cboThuoc.getSelectedItem();
        if (selectedThuoc == null || selectedThuoc.equals("Không tìm thấy thuốc")) {
            JOptionPane.showMessageDialog(this, "Vui lòng chọn thuốc!");
            return;
        }
        if (hanSuDung == null || hanSuDung.trim().isEmpty()) {
            JOptionPane.showMessageDialog(this, "Hạn sử dụng không được để trống!");
            return;
        }
        String error = Dialog_ChiTietThuoc.kiemTraNhap.validateHSD(hanSuDung);
        if (error != null) {
            JOptionPane.showMessageDialog(this, "Hạn sử dụng không hợp lệ! Vui lòng nhập theo định dạng dd/MM/yyyy.");
            return;
        }

        // Kiểm tra hạn sử dụng
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        Date hsdDate = sdf.parse(hanSuDung);
        Date currentDate = new Date();
        if (!hsdDate.after(currentDate)) {
            JOptionPane.showMessageDialog(this, "Hạn sử dụng phải sau ngày hiện tại!");
            return;
        }

        String donGiaNhapStr = txtDonGiaNhap.getText().trim().replace("đ", "").replace(",", "");
        if (donGiaNhapStr.isEmpty()) {
            JOptionPane.showMessageDialog(this, "Đơn giá nhập không được để trống!");
            return;
        }
        error = Dialog_ChiTietThuoc.kiemTraNhap.validateDonGiaNhap(donGiaNhapStr);
        if (error != null) {
            JOptionPane.showMessageDialog(this, "Đơn giá nhập không hợp lệ! Vui lòng nhập số nguyên.");
            return;
        }

        String tenThuoc = selectedThuoc.split(" - ")[1];
        String maThuocBase = selectedThuoc.split(" - ")[0];
        int soLuong = (int) spinnerSoLuong.getValue();
        double donGiaNhap = Double.parseDouble(donGiaNhapStr);
        double donGiaBan = thuocDAO.getDonGiaBan(maThuocBase);
        String donViTinh = "";
        String hamLuong = "";

        List<Object[]> thuocList = thuocDAO.timKiemThuoc(maThuocBase, "", "");
        if (!thuocList.isEmpty()) {
            Object[] thuoc = thuocList.get(0);
            donViTinh = (String) thuoc[2];
            hamLuong = (String) thuoc[6];
        } else {
            JOptionPane.showMessageDialog(this, "Không tìm thấy thông tin thuốc!");
            return;
        }

        String maThuocMoi = maThuocKeTiep;

        // Kiểm tra xem thuốc có trùng với row nào trong bảng không
        boolean found = false;
        for (int i = 0; i < modelThuocNhap.getRowCount(); i++) {
            String tableTenThuoc = modelThuocNhap.getValueAt(i, 1).toString();
            String tableDonViTinh = modelThuocNhap.getValueAt(i, 2).toString();
            String tableHanSuDung = modelThuocNhap.getValueAt(i, 3).toString();
            String tableHamLuong = modelThuocNhap.getValueAt(i, 4).toString();
            String tableDonGiaNhap = modelThuocNhap.getValueAt(i, 5).toString();
            String tableDonGiaBan = modelThuocNhap.getValueAt(i, 6).toString();
            int tableSoLuong = Integer.parseInt(modelThuocNhap.getValueAt(i, 7).toString());

            if (tenThuoc.equalsIgnoreCase(tableTenThuoc) &&
                donViTinh.equalsIgnoreCase(tableDonViTinh) &&
                hanSuDung.equals(tableHanSuDung) &&
                hamLuong.equalsIgnoreCase(tableHamLuong) &&
                String.format("%,.0fđ", donGiaNhap).equals(tableDonGiaNhap) &&
                String.format("%,.0fđ", donGiaBan).equals(tableDonGiaBan) &&
                soLuong == tableSoLuong) {
                int soLuongCu = Integer.parseInt(modelThuocNhap.getValueAt(i, 7).toString());
                int soLuongMoi = soLuongCu + soLuong;
                modelThuocNhap.setValueAt(soLuongMoi, i, 7);
                modelThuocNhap.setValueAt(String.format("%,.0fđ", soLuongMoi * donGiaNhap), i, 8);
                found = true;
                break;
            }
        }

        if (!found) {
            double thanhTien = soLuong * donGiaNhap;
            modelThuocNhap.addRow(new Object[]{
                maThuocMoi,
                tenThuoc,
                donViTinh,
                hanSuDung,
                hamLuong,
                String.format("%,.0fđ", donGiaNhap),
                String.format("%,.0fđ", donGiaBan),
                soLuong,
                String.format("%,.0fđ", thanhTien)
            });
            // Tăng mã thuốc mới cho lần thêm tiếp theo
            maThuocKeTiep = generateMaThuocKeTiep(maThuocKeTiep);
        }

        // Reset toàn bộ thông tin trong "Nhập Thuốc"
        resetNhapThuoc();
        // Cập nhật txtMaThuoc với mã thuốc mới
        txtMaThuoc.setText(maThuocKeTiep);

        updateTongTien();
    }

    private void nhapTuExcel() {
        JFileChooser fileChooser = new JFileChooser();
        fileChooser.setDialogTitle("Chọn file Excel");
        fileChooser.setFileFilter(new javax.swing.filechooser.FileNameExtensionFilter("Excel files", "xlsx", "xls"));
        int result = fileChooser.showOpenDialog(this);
        if (result != JFileChooser.APPROVE_OPTION) {
            return;
        }

        File file = fileChooser.getSelectedFile();
        try (FileInputStream fis = new FileInputStream(file);
             Workbook workbook = new XSSFWorkbook(fis)) {

            Sheet sheet = workbook.getSheetAt(0);
            if (sheet == null) {
                JOptionPane.showMessageDialog(this, "File Excel không có sheet dữ liệu!");
                return;
            }

            // Đọc mã nhà cung cấp từ dòng đầu tiên
            Row nccRow = sheet.getRow(0);
            if (nccRow == null || nccRow.getCell(0) == null) {
                JOptionPane.showMessageDialog(this, "Dòng đầu tiên phải chứa mã nhà cung cấp!");
                return;
            }
            String maNCC = getCellValueAsString(nccRow.getCell(1)).trim();
            if (maNCC.isEmpty()) {
                JOptionPane.showMessageDialog(this, "Mã nhà cung cấp không được để trống!");
                return;
            }

            // Cập nhật combo box Nhà Cung Cấp
            boolean nccFound = false;
            for (int i = 0; i < cboNhaCungCap.getItemCount(); i++) {
                String item = cboNhaCungCap.getItemAt(i);
                String maNCCItem = item.split(" - ")[0];
                if (maNCCItem.equals(maNCC)) {
                    cboNhaCungCap.setSelectedIndex(i);
                    nccFound = true;
                    break;
                }
            }
            if (!nccFound) {
                JOptionPane.showMessageDialog(this, "Nhà cung cấp với mã '" + maNCC + "' không tồn tại trong hệ thống!");
                return;
            }

            // Kiểm tra header (dòng thứ 2, index 1)
            Row headerRow = sheet.getRow(1);
            if (headerRow == null || !isValidHeader(headerRow)) {
                JOptionPane.showMessageDialog(this, "File Excel không đúng định dạng! Cần các cột: Mã Thuốc, Tên Thuốc, Đơn Vị Tính, Hạn Sử Dụng, Hàm Lượng, Đơn Giá Nhập, Đơn Giá Bán, Số Lượng");
                return;
            }

            // Đọc dữ liệu từ dòng thứ 3 trở đi (index 2)
            for (int i = 2; i <= sheet.getLastRowNum(); i++) {
                Row row = sheet.getRow(i);
                if (row == null) continue;

                try {
                    String maThuoc = getCellValueAsString(row.getCell(0));
                    String tenThuoc = getCellValueAsString(row.getCell(1));
                    String donViTinh = getCellValueAsString(row.getCell(2));
                    String hanSuDung = getCellValueAsString(row.getCell(3));
                    String hamLuong = getCellValueAsString(row.getCell(4));
                    Cell donGiaNhapCell = row.getCell(5);
                    Cell donGiaBanCell = row.getCell(6);
                    Cell soLuongCell = row.getCell(7);

                    // Kiểm tra dữ liệu hợp lệ
                    if (tenThuoc == null || tenThuoc.trim().isEmpty()) {
                        JOptionPane.showMessageDialog(this, "Dòng " + (i + 1) + ": Tên Thuốc không được để trống!");
                        continue;
                    }
                    if (donViTinh == null || donViTinh.trim().isEmpty()) {
                        JOptionPane.showMessageDialog(this, "Dòng " + (i + 1) + ": Đơn Vị Tính không được để trống!");
                        continue;
                    }
                    if (hanSuDung == null || hanSuDung.trim().isEmpty()) {
                        JOptionPane.showMessageDialog(this, "Dòng " + (i + 1) + ": Hạn Sử Dụng không được để trống!");
                        continue;
                    }
                    if (hamLuong == null || hamLuong.trim().isEmpty()) {
                        JOptionPane.showMessageDialog(this, "Dòng " + (i + 1) + ": Hàm Lượng không được để trống!");
                        continue;
                    }
                    if (soLuongCell == null || soLuongCell.getCellType() != CellType.NUMERIC) {
                        JOptionPane.showMessageDialog(this, "Dòng " + (i + 1) + ": Số Lượng phải là số!");
                        continue;
                    }
                    if (donGiaNhapCell == null || donGiaNhapCell.getCellType() != CellType.NUMERIC) {
                        JOptionPane.showMessageDialog(this, "Dòng " + (i + 1) + ": Đơn Giá Nhập phải là số!");
                        continue;
                    }
                    if (donGiaBanCell == null || donGiaBanCell.getCellType() != CellType.NUMERIC) {
                        JOptionPane.showMessageDialog(this, "Dòng " + (i + 1) + ": Đơn Giá Bán phải là số!");
                        continue;
                    }

                    int soLuong = (int) soLuongCell.getNumericCellValue();
                    double donGiaNhap = donGiaNhapCell.getNumericCellValue();
                    double donGiaBan = donGiaBanCell.getNumericCellValue();

                    if (soLuong <= 0) {
                        JOptionPane.showMessageDialog(this, "Dòng " + (i + 1) + ": Số Lượng phải là số dương!");
                        continue;
                    }
                    if (donGiaNhap <= 0) {
                        JOptionPane.showMessageDialog(this, "Dòng " + (i + 1) + ": Đơn Giá Nhập phải là số dương!");
                        continue;
                    }
                    if (donGiaBan <= 0) {
                        JOptionPane.showMessageDialog(this, "Dòng " + (i + 1) + ": Đơn Giá Bán phải là số dương!");
                        continue;
                    }

                    // Kiểm tra hạn sử dụng
                    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                    Date hsdDate = sdf.parse(hanSuDung);
                    Date currentDate = new Date();
                    if (!hsdDate.after(currentDate)) {
                        JOptionPane.showMessageDialog(this, "Dòng " + (i + 1) + ": Hạn sử dụng phải sau ngày hiện tại!");
                        continue;
                    }

                    String error = Dialog_ChiTietThuoc.kiemTraNhap.validateTenThuoc(tenThuoc);
                    if (error != null) {
                        JOptionPane.showMessageDialog(this, "Dòng " + (i + 1) + ": " + error);
                        continue;
                    }
                    error = Dialog_ChiTietThuoc.kiemTraNhap.validateDonViTinh(donViTinh);
                    if (error != null) {
                        JOptionPane.showMessageDialog(this, "Dòng " + (i + 1) + ": " + error);
                        continue;
                    }
                    error = Dialog_ChiTietThuoc.kiemTraNhap.validateHamLuong(hamLuong);
                    if (error != null) {
                        JOptionPane.showMessageDialog(this, "Dòng " + (i + 1) + ": " + error);
                        continue;
                    }
                    error = Dialog_ChiTietThuoc.kiemTraNhap.validateDonGiaNhap(String.valueOf((long) donGiaNhap));
                    if (error != null) {
                        JOptionPane.showMessageDialog(this, "Dòng " + (i + 1) + ": " + error);
                        continue;
                    }
                    error = Dialog_ChiTietThuoc.kiemTraNhap.validateDonGiaBan(String.valueOf((long) donGiaBan));
                    if (error != null) {
                        JOptionPane.showMessageDialog(this, "Dòng " + (i + 1) + ": " + error);
                        continue;
                    }
                    error = Dialog_ChiTietThuoc.kiemTraNhap.validateSLTon(String.valueOf(soLuong));
                    if (error != null) {
                        JOptionPane.showMessageDialog(this, "Dòng " + (i + 1) + ": " + error);
                        continue;
                    }
                    error = Dialog_ChiTietThuoc.kiemTraNhap.validateSLTT(String.valueOf(soLuong));
                    if (error != null) {
                        JOptionPane.showMessageDialog(this, "Dòng " + (i + 1) + ": " + error);
                        continue;
                    }
                    error = Dialog_ChiTietThuoc.kiemTraNhap.validateHSD(hanSuDung);
                    if (error != null) {
                        JOptionPane.showMessageDialog(this, "Dòng " + (i + 1) + ": " + error);
                        continue;
                    }

                    String maThuocMoi;
                    List<Object[]> thuocList = thuocDAO.timKiemThuoc("", tenThuoc, "");
                    boolean thuocExists = false;

                    for (Object[] thuoc : thuocList) {
                        String dbTenThuoc = (String) thuoc[1];
                        String dbDonViTinh = (String) thuoc[2];
                        String dbHamLuong = (String) thuoc[6];
                        if (tenThuoc.equalsIgnoreCase(dbTenThuoc) &&
                            donViTinh.equalsIgnoreCase(dbDonViTinh) &&
                            hamLuong.equalsIgnoreCase(dbHamLuong)) {
                            thuocExists = true;
                            break;
                        }
                    }

                    // Nếu mã thuốc trống hoặc thuốc đã tồn tại, sử dụng mã thuốc mới từ maThuocKeTiep
                    if (maThuoc == null || maThuoc.trim().isEmpty() || thuocExists || thuocDAO.isDuplicateMaThuoc(maThuoc)) {
                        maThuocMoi = maThuocKeTiep;
                        maThuocKeTiep = generateMaThuocKeTiep(maThuocKeTiep);
                    } else {
                        maThuocMoi = maThuoc;
                        String maThuocError = Dialog_ChiTietThuoc.kiemTraNhap.validateMaThuoc(maThuocMoi);
                        if (maThuocError != null) {
                            JOptionPane.showMessageDialog(this, "Dòng " + (i + 1) + ": " + maThuocError);
                            continue;
                        }
                    }

                    // Kiểm tra xem thuốc đã tồn tại trong bảng chưa (dựa trên mã thuốc và hạn sử dụng)
                    boolean found = false;
                    for (int j = 0; j < modelThuocNhap.getRowCount(); j++) {
                        if (modelThuocNhap.getValueAt(j, 0).equals(maThuocMoi) &&
                            modelThuocNhap.getValueAt(j, 3).equals(hanSuDung)) {
                            int soLuongCu = Integer.parseInt(modelThuocNhap.getValueAt(j, 7).toString());
                            int soLuongMoi = soLuongCu + soLuong;
                            modelThuocNhap.setValueAt(soLuongMoi, j, 7);
                            modelThuocNhap.setValueAt(String.format("%,.0fđ", soLuongMoi * donGiaNhap), j, 8);
                            found = true;
                            break;
                        }
                    }

                    if (!found) {
                        double thanhTien = soLuong * donGiaNhap;
                        modelThuocNhap.addRow(new Object[]{
                            maThuocMoi,
                            tenThuoc,
                            donViTinh,
                            hanSuDung,
                            hamLuong,
                            String.format("%,.0fđ", donGiaNhap),
                            String.format("%,.0fđ", donGiaBan),
                            soLuong,
                            String.format("%,.0fđ", thanhTien)
                        });
                    }
                } catch (Exception e) {
                    JOptionPane.showMessageDialog(this, "Lỗi khi đọc dòng " + (i + 1) + ": " + e.getMessage());
                    continue;
                }
            }

            updateTongTien();
            // Cập nhật txtMaThuoc với mã thuốc mới sau khi nhập Excel
            txtMaThuoc.setText(maThuocKeTiep);
            JOptionPane.showMessageDialog(this, "Đã nhập dữ liệu từ file Excel thành công!");

        } catch (IOException e) {
            JOptionPane.showMessageDialog(this, "Lỗi khi đọc file Excel: " + e.getMessage());
        }
    }

    private String generateMaThuocKeTiep(String lastMaThuoc) {
        if (lastMaThuoc == null || lastMaThuoc.isEmpty() || !lastMaThuoc.startsWith("T")) {
            return "T001";
        }
        String numPart = lastMaThuoc.substring(1);
        int num = Integer.parseInt(numPart) + 1;
        return String.format("T%03d", num);
    }

    private void clearChiTietThuoc() {
        txtChiTietMaThuoc.setText("");
        txtChiTietTenThuoc.setText("");
        txtChiTietDonViTinh.setText("");
        txtChiTietDonGiaNhap.setText("");
        txtChiTietDonGiaBan.setText("");
        txtChiTietHanSuDung.setText("");
        txtChiTietHamLuong.setText("");
        txtChiTietSoLuongTon.setText("");
    }

    private void resetThuoc() {
        loadData();
        clearChiTietThuoc();
        txtTimKiemThuoc.setText("");
        txtDonGiaNhap.setText("0đ");
        dateChooserHanSuDung.setDate(null);
        txtMaThuoc.setText(maThuocKeTiep);
    }

    private void resetNhapThuoc() {
        txtTimKiemThuoc.setText("");
        cboThuoc.setSelectedIndex(-1);
        txtDonGiaNhap.setText("0đ");
        spinnerSoLuong.setValue(1);
        dateChooserHanSuDung.setDate(null);
        txtMaThuoc.setText(maThuocKeTiep);
    }

    private void updateTongTien() {
        double tongTien = 0;
        for (int i = 0; i < modelThuocNhap.getRowCount(); i++) {
            Object thanhTienObj = modelThuocNhap.getValueAt(i, 8);
            if (thanhTienObj != null) {
                String thanhTienStr = thanhTienObj.toString().replace("đ", "").replace(",", "");
                try {
                    tongTien += Double.parseDouble(thanhTienStr);
                } catch (NumberFormatException e) {
                    // Skip invalid values
                }
            }
        }
        txtTongTien.setText(String.format("%,.0fđ", tongTien));
    }

    private void luuPhieuNhap() {
        if (modelThuocNhap.getRowCount() == 0) {
            JOptionPane.showMessageDialog(this, "Danh sách thuốc nhập trống!");
            return;
        }
        String maPhieuNhap = txtMaPhieuNhap.getText().trim();
        String ngayNhap = txtNgayNhap.getText().trim();
        String maNCC = cboNhaCungCap.getSelectedItem() != null ? cboNhaCungCap.getSelectedItem().toString().split(" - ")[0] : "";
        String hinhThucThanhToan = cboHinhThucThanhToan.getSelectedItem().toString();

        if (maPhieuNhap.isEmpty() || ngayNhap.isEmpty() || maNCC.isEmpty()) {
            JOptionPane.showMessageDialog(this, "Vui lòng nhập đầy đủ thông tin!");
            return;
        }

        // Lưu phiếu nhập
        boolean success = NhapThuocDAO.luuPhieuNhap(maPhieuNhap, maNV, maNCC, ngayNhap, hinhThucThanhToan, 0);
        if (!success) {
            JOptionPane.showMessageDialog(this, "Lưu phiếu nhập thất bại!");
            return;
        }

        // Lưu từng thuốc vào cơ sở dữ liệu và cập nhật số lượng tồn
        for (int i = 0; i < modelThuocNhap.getRowCount(); i++) {
            String maThuoc = modelThuocNhap.getValueAt(i, 0).toString();
            String tenThuoc = modelThuocNhap.getValueAt(i, 1).toString();
            String donViTinh = modelThuocNhap.getValueAt(i, 2).toString();
            String hanSuDung = modelThuocNhap.getValueAt(i, 3).toString();
            String hamLuong = modelThuocNhap.getValueAt(i, 4).toString();
            String donGiaNhapStr = modelThuocNhap.getValueAt(i, 5).toString().replace("đ", "").replace(",", "");
            String donGiaBanStr = modelThuocNhap.getValueAt(i, 6).toString().replace("đ", "").replace(",", "");
            Object soLuongObj = modelThuocNhap.getValueAt(i, 7);

            try {
                int soLuong = Integer.parseInt(soLuongObj.toString());

                // Thêm thuốc vào cơ sở dữ liệu
                success = thuocDAO.themThuoc(
                    maThuoc,
                    tenThuoc,
                    donViTinh,
                    donGiaNhapStr,
                    donGiaBanStr,
                    hanSuDung,
                    hamLuong,
                    String.valueOf(soLuong),
                    String.valueOf(soLuong)
                );
                if (!success) {
                    JOptionPane.showMessageDialog(this, "Thêm thuốc " + maThuoc + " vào cơ sở dữ liệu thất bại!");
                    return;
                }

                // Cập nhật số lượng tồn
                NhapThuocDAO.capNhatSoLuongTon(maThuoc, soLuong);
            } catch (NumberFormatException | java.text.ParseException e) {
                JOptionPane.showMessageDialog(this, "Dữ liệu tại dòng " + (i + 1) + " không hợp lệ: " + e.getMessage());
                return;
            }
        }

        // Lưu chi tiết phiếu nhập
        success = chiTietNhapThuocDAO.luuChiTietPhieuNhap(maPhieuNhap, modelThuocNhap);
        if (!success) {
            JOptionPane.showMessageDialog(this, "Lưu chi tiết phiếu nhập thất bại!");
            return;
        }

        // Lưu phiếu thu chi
        success = taiChinhDAO.luuPhieuThu(maNV, ngayNhap, hinhThucThanhToan, "Nhập thuốc", maPhieuNhap);
        if (!success) {
            JOptionPane.showMessageDialog(this, "Lưu phiếu thu chi thất bại!");
            return;
        }

        JOptionPane.showMessageDialog(this, "Lưu phiếu nhập thành công!");
        resetForm();
    }

    private void resetForm() {
        setInitialValues();
        cboNhaCungCap.setSelectedIndex(0);
        cboHinhThucThanhToan.setSelectedIndex(0);
        modelThuocNhap.setRowCount(0);
        txtTimKiemThuoc.setText("");
        loadData();
    }

    private boolean isValidHeader(Row headerRow) {
        String[] expectedHeaders = {
            "Mã Thuốc", 
            "Tên Thuốc", 
            "Đơn Vị Tính", 
            "Hạn Sử Dụng", 
            "Hàm Lượng", 
            "Đơn Giá Nhập", 
            "Đơn Giá Bán", 
            "Số Lượng"
        };
        if (headerRow.getPhysicalNumberOfCells() < expectedHeaders.length) {
            return false;
        }
        for (int i = 0; i < expectedHeaders.length; i++) {
            Cell cell = headerRow.getCell(i);
            if (cell == null || !getCellValueAsString(cell).trim().equalsIgnoreCase(expectedHeaders[i])) {
                return false;
            }
        }
        return true;
    }

    private String getCellValueAsString(Cell cell) {
        if (cell == null) {
            return "";
        }
        switch (cell.getCellType()) {
            case STRING:
                return cell.getStringCellValue();
            case NUMERIC:
                if (DateUtil.isCellDateFormatted(cell)) {
                    return new SimpleDateFormat("dd/MM/yyyy").format(cell.getDateCellValue());
                } else {
                    return String.valueOf((long) cell.getNumericCellValue());
                }
            case BOOLEAN:
                return String.valueOf(cell.getBooleanCellValue());
            default:
                return "";
        }
    }
}