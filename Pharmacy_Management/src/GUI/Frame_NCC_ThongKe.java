package GUI;

import javax.swing.*;
import javax.swing.border.EmptyBorder;
import javax.swing.border.LineBorder;
import javax.swing.border.TitledBorder;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.util.Calendar;

public class Frame_NCC_ThongKe extends JPanel {
    private static final long serialVersionUID = 1L;
    private JTable tableNhaCungCap;
    private DefaultTableModel modelNhaCungCap;
    private JComboBox<String> cboLoaiThongKe;
    private JComboBox<String> cboNam;
    private JComboBox<String> cboThang;
    private JTextField txtTuNgay;
    private JTextField txtDenNgay;
    private JTextField txtTongNhaCungCap;
    private JTextField txtTongGiaoDich;
    private JTextField txtTrungBinh;

    // Define colors from Frame_GiaoDich_NhapThuoc
    private final Color MAIN_COLOR = new Color(254, 222, 192);
    private final Color HEADER_COLOR = new Color(251, 203, 150);
    private final Color BUTTON_COLOR = new Color(249, 187, 118);
    private final Color BUTTON_TEXT_COLOR = new Color(121, 70, 13);
    private final Color TEXT_COLOR = new Color(100, 60, 20);
    private final Color PANEL_BORDER_COLOR = new Color(222, 184, 135);
    private final Color TABLE_HEADER_COLOR = new Color(251, 203, 150);
    private final Color SELECTED_COLOR = new Color(255, 239, 213);

    public Frame_NCC_ThongKe() {
        setBackground(MAIN_COLOR);
        setLayout(new BorderLayout(0, 0));
        setBorder(new EmptyBorder(15, 15, 15, 15));

        // Title Panel
        JPanel pnlTitle = new JPanel();
        pnlTitle.setPreferredSize(new Dimension(1000, 60));
        pnlTitle.setBackground(HEADER_COLOR);
        add(pnlTitle, BorderLayout.NORTH);

        JLabel lblTitle = new JLabel("THỐNG KÊ NHÀ CUNG CẤP");
        lblTitle.setHorizontalAlignment(SwingConstants.CENTER);
        lblTitle.setFont(new Font("Arial", Font.BOLD, 28));
        lblTitle.setForeground(TEXT_COLOR);
        pnlTitle.add(lblTitle);

        // Main Content Panel
        JPanel pnlContent = new JPanel();
        pnlContent.setBackground(MAIN_COLOR);
        add(pnlContent, BorderLayout.CENTER);
        pnlContent.setLayout(null);

        // Filter Panel
        JPanel pnlFilter = new JPanel();
        pnlFilter.setBounds(0, 0, 492, 200);
        pnlFilter.setBackground(MAIN_COLOR);
        pnlFilter.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1),
                "Điều kiện thống kê", TitledBorder.LEFT, TitledBorder.TOP,
                new Font("Arial", Font.BOLD, 16), TEXT_COLOR));
        pnlContent.add(pnlFilter);
        pnlFilter.setLayout(null);

        // Filter Row 1
        JLabel lblLoaiThongKe = new JLabel("Loại thống kê:");
        lblLoaiThongKe.setForeground(TEXT_COLOR);
        lblLoaiThongKe.setFont(new Font("Arial", Font.PLAIN, 16));
        lblLoaiThongKe.setBounds(10, 30, 150, 30);
        pnlFilter.add(lblLoaiThongKe);

        cboLoaiThongKe = new JComboBox<>(new String[] {"Ngày", "Tháng", "Năm", "Khoảng thời gian"});
        cboLoaiThongKe.setBackground(Color.WHITE);
        cboLoaiThongKe.setForeground(TEXT_COLOR);
        cboLoaiThongKe.setFont(new Font("Arial", Font.PLAIN, 16));
        cboLoaiThongKe.setBounds(160, 30, 321, 30);
        pnlFilter.add(cboLoaiThongKe);

        JLabel lblNam = new JLabel("Năm:");
        lblNam.setForeground(TEXT_COLOR);
        lblNam.setFont(new Font("Arial", Font.PLAIN, 16));
        lblNam.setBounds(10, 70, 150, 30);
        pnlFilter.add(lblNam);

        cboNam = new JComboBox<>();
        int currentYear = Calendar.getInstance().get(Calendar.YEAR);
        for (int i = currentYear - 5; i <= currentYear + 1; i++) {
            cboNam.addItem(String.valueOf(i));
        }
        cboNam.setSelectedItem(String.valueOf(currentYear));
        cboNam.setBackground(Color.WHITE);
        cboNam.setForeground(TEXT_COLOR);
        cboNam.setFont(new Font("Arial", Font.PLAIN, 16));
        cboNam.setBounds(160, 70, 321, 30);
        pnlFilter.add(cboNam);

        JLabel lblThang = new JLabel("Tháng:");
        lblThang.setForeground(TEXT_COLOR);
        lblThang.setFont(new Font("Arial", Font.PLAIN, 16));
        lblThang.setBounds(10, 110, 150, 30);
        pnlFilter.add(lblThang);

        cboThang = new JComboBox<>();
        for (int i = 1; i <= 12; i++) {
            cboThang.addItem(String.valueOf(i));
        }
        cboThang.setSelectedItem(String.valueOf(Calendar.getInstance().get(Calendar.MONTH) + 1));
        cboThang.setBackground(Color.WHITE);
        cboThang.setForeground(TEXT_COLOR);
        cboThang.setFont(new Font("Arial", Font.PLAIN, 16));
        cboThang.setBounds(160, 110, 321, 30);
        pnlFilter.add(cboThang);

        // Filter Row 2
        JLabel lblTuNgay = new JLabel("Từ ngày:");
        lblTuNgay.setForeground(TEXT_COLOR);
        lblTuNgay.setFont(new Font("Arial", Font.PLAIN, 16));
        lblTuNgay.setBounds(10, 150, 150, 30);
        pnlFilter.add(lblTuNgay);

        txtTuNgay = new JTextField("01/01/2025");
        txtTuNgay.setForeground(TEXT_COLOR);
        txtTuNgay.setFont(new Font("Arial", Font.PLAIN, 16));
        txtTuNgay.setBounds(160, 150, 150, 30);
        pnlFilter.add(txtTuNgay);

        JLabel lblDenNgay = new JLabel("Đến ngày:");
        lblDenNgay.setForeground(TEXT_COLOR);
        lblDenNgay.setFont(new Font("Arial", Font.PLAIN, 16));
        lblDenNgay.setBounds(320, 150, 80, 30);
        pnlFilter.add(lblDenNgay);

        txtDenNgay = new JTextField("13/04/2025");
        txtDenNgay.setForeground(TEXT_COLOR);
        txtDenNgay.setFont(new Font("Arial", Font.PLAIN, 16));
        txtDenNgay.setBounds(400, 150, 150, 30);
        pnlFilter.add(txtDenNgay);

        // Buttons
        JPanel pnlButtons = new JPanel();
        pnlButtons.setBackground(MAIN_COLOR);
        pnlButtons.setBounds(10, 190, 471, 40);
        pnlFilter.add(pnlButtons);
        pnlButtons.setLayout(null);

        JButton btnThongKe = new JButton("Thống kê");
        btnThongKe.setBackground(new Color(254, 152, 65));
        btnThongKe.setForeground(new Color(50, 20, 0));
        btnThongKe.setFont(new Font("Arial", Font.BOLD, 16));
        btnThongKe.setBounds(0, 0, 153, 40);
        pnlButtons.add(btnThongKe);

        JButton btnXuatBaoCao = new JButton("Xuất báo cáo");
        btnXuatBaoCao.setBackground(BUTTON_COLOR);
        btnXuatBaoCao.setForeground(BUTTON_TEXT_COLOR);
        btnXuatBaoCao.setFont(new Font("Arial", Font.BOLD, 16));
        btnXuatBaoCao.setBounds(163, 0, 153, 40);
        pnlButtons.add(btnXuatBaoCao);

        // Table Panel
        JPanel pnlTable = new JPanel();
        pnlTable.setBounds(502, 0, 590, 410);
        pnlTable.setBackground(MAIN_COLOR);
        pnlTable.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1),
                "Bảng thống kê nhà cung cấp", TitledBorder.LEFT, TitledBorder.TOP,
                new Font("Arial", Font.BOLD, 16), TEXT_COLOR));
        pnlContent.add(pnlTable);
        pnlTable.setLayout(null);

        modelNhaCungCap = new DefaultTableModel(
                new Object[][] {
                        {1, "NCC001", "Công ty ABC", "10", "5,000,000 VNĐ", "500,000 VNĐ"},
                        {2, "NCC002", "Công ty XYZ", "8", "4,000,000 VNĐ", "500,000 VNĐ"},
                        {3, "NCC003", "Công ty DEF", "15", "7,500,000 VNĐ", "500,000 VNĐ"},
                        {4, "NCC004", "Công ty GHI", "5", "2,500,000 VNĐ", "500,000 VNĐ"},
                        {5, "NCC005", "Công ty JKL", "12", "6,000,000 VNĐ", "500,000 VNĐ"},
                },
                new String[] {"STT", "Mã nhà cung cấp", "Tên nhà cung cấp", "Số giao dịch", "Tổng chi", "Trung bình"}
        ) {
            private static final long serialVersionUID = 1L;
            @Override
            public boolean isCellEditable(int row, int column) {
                return false;
            }
        };

        tableNhaCungCap = new JTable(modelNhaCungCap);
        tableNhaCungCap.getTableHeader().setFont(new Font("Arial", Font.BOLD, 14));
        tableNhaCungCap.getTableHeader().setBackground(TABLE_HEADER_COLOR);
        tableNhaCungCap.getTableHeader().setForeground(TEXT_COLOR);
        tableNhaCungCap.setBackground(Color.WHITE);
        tableNhaCungCap.setForeground(TEXT_COLOR);
        tableNhaCungCap.setSelectionBackground(SELECTED_COLOR);
        tableNhaCungCap.setRowHeight(30);
        tableNhaCungCap.setFont(new Font("Arial", Font.PLAIN, 14));
        tableNhaCungCap.getColumnModel().getColumn(0).setPreferredWidth(50);
        tableNhaCungCap.getColumnModel().getColumn(1).setPreferredWidth(120);
        tableNhaCungCap.getColumnModel().getColumn(2).setPreferredWidth(150);
        tableNhaCungCap.getColumnModel().getColumn(3).setPreferredWidth(100);
        tableNhaCungCap.getColumnModel().getColumn(4).setPreferredWidth(150);
        tableNhaCungCap.getColumnModel().getColumn(5).setPreferredWidth(150);

        JScrollPane scrollPane = new JScrollPane(tableNhaCungCap);
        scrollPane.setBounds(5, 21, 580, 384);
        pnlTable.add(scrollPane);

        // Summary Panel
        JPanel pnlThongTin = new JPanel();
        pnlThongTin.setBounds(502, 420, 590, 150);
        pnlThongTin.setBackground(MAIN_COLOR);
        pnlThongTin.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1),
                "Thông tin tổng hợp", TitledBorder.LEFT, TitledBorder.TOP,
                new Font("Arial", Font.BOLD, 16), TEXT_COLOR));
        pnlContent.add(pnlThongTin);
        pnlThongTin.setLayout(null);

        JLabel lblTongNhaCungCap = new JLabel("Tổng nhà cung cấp:");
        lblTongNhaCungCap.setForeground(TEXT_COLOR);
        lblTongNhaCungCap.setFont(new Font("Arial", Font.BOLD, 16));
        lblTongNhaCungCap.setBounds(10, 30, 150, 30);
        pnlThongTin.add(lblTongNhaCungCap);

        txtTongNhaCungCap = new JTextField("5");
        txtTongNhaCungCap.setHorizontalAlignment(SwingConstants.RIGHT);
        txtTongNhaCungCap.setEditable(false);
        txtTongNhaCungCap.setFont(new Font("Arial", Font.BOLD, 16));
        txtTongNhaCungCap.setForeground(new Color(165, 42, 42));
        txtTongNhaCungCap.setBackground(new Color(253, 245, 230));
        txtTongNhaCungCap.setBounds(160, 30, 400, 30);
        pnlThongTin.add(txtTongNhaCungCap);

        JLabel lblTongGiaoDich = new JLabel("Tổng giao dịch:");
        lblTongGiaoDich.setForeground(TEXT_COLOR);
        lblTongGiaoDich.setFont(new Font("Arial", Font.BOLD, 16));
        lblTongGiaoDich.setBounds(10, 70, 150, 30);
        pnlThongTin.add(lblTongGiaoDich);

        txtTongGiaoDich = new JTextField("50");
        txtTongGiaoDich.setHorizontalAlignment(SwingConstants.RIGHT);
        txtTongGiaoDich.setEditable(false);
        txtTongGiaoDich.setFont(new Font("Arial", Font.BOLD, 16));
        txtTongGiaoDich.setForeground(TEXT_COLOR);
        txtTongGiaoDich.setBackground(new Color(253, 245, 230));
        txtTongGiaoDich.setBounds(160, 70, 400, 30);
        pnlThongTin.add(txtTongGiaoDich);

        JLabel lblTrungBinh = new JLabel("Trung bình:");
        lblTrungBinh.setForeground(TEXT_COLOR);
        lblTrungBinh.setFont(new Font("Arial", Font.BOLD, 16));
        lblTrungBinh.setBounds(10, 110, 150, 30);
        pnlThongTin.add(lblTrungBinh);

        txtTrungBinh = new JTextField("500,000 VNĐ");
        txtTrungBinh.setHorizontalAlignment(SwingConstants.RIGHT);
        txtTrungBinh.setEditable(false);
        txtTrungBinh.setFont(new Font("Arial", Font.BOLD, 16));
        txtTrungBinh.setForeground(new Color(165, 42, 42));
        txtTrungBinh.setBackground(new Color(253, 245, 230));
        txtTrungBinh.setBounds(160, 110, 400, 30);
        pnlThongTin.add(txtTrungBinh);

        // Event for cboLoaiThongKe
        cboLoaiThongKe.addActionListener(e -> {
            String selectedOption = cboLoaiThongKe.getSelectedItem().toString();
            switch (selectedOption) {
                case "Ngày":
                    lblNam.setVisible(true);
                    cboNam.setVisible(true);
                    lblThang.setVisible(true);
                    cboThang.setVisible(true);
                    lblTuNgay.setVisible(true);
                    txtTuNgay.setVisible(true);
                    lblDenNgay.setVisible(true);
                    txtDenNgay.setVisible(true);
                    break;
                case "Tháng":
                    lblNam.setVisible(true);
                    cboNam.setVisible(true);
                    lblThang.setVisible(true);
                    cboThang.setVisible(true);
                    lblTuNgay.setVisible(false);
                    txtTuNgay.setVisible(false);
                    lblDenNgay.setVisible(false);
                    txtDenNgay.setVisible(false);
                    break;
                case "Năm":
                    lblNam.setVisible(true);
                    cboNam.setVisible(true);
                    lblThang.setVisible(false);
                    cboThang.setVisible(false);
                    lblTuNgay.setVisible(false);
                    txtTuNgay.setVisible(false);
                    lblDenNgay.setVisible(false);
                    txtDenNgay.setVisible(false);
                    break;
                case "Khoảng thời gian":
                    lblNam.setVisible(false);
                    cboNam.setVisible(false);
                    lblThang.setVisible(false);
                    cboThang.setVisible(false);
                    lblTuNgay.setVisible(true);
                    txtTuNgay.setVisible(true);
                    lblDenNgay.setVisible(true);
                    txtDenNgay.setVisible(true);
                    break;
            }
            pnlFilter.revalidate();
            pnlFilter.repaint();
        });

        // Initialize default state
        cboLoaiThongKe.setSelectedIndex(0);  // Set default to "Ngày"
        lblNam.setVisible(true);
        cboNam.setVisible(true);
        lblThang.setVisible(true);
        cboThang.setVisible(true);
        lblTuNgay.setVisible(true);
        txtTuNgay.setVisible(true);
        lblDenNgay.setVisible(true);
        txtDenNgay.setVisible(true);

        // Button events
        btnThongKe.addActionListener(e -> JOptionPane.showMessageDialog(this, "Chức năng thống kê nhà cung cấp"));
        btnXuatBaoCao.addActionListener(e -> JOptionPane.showMessageDialog(this, "Chức năng xuất báo cáo"));
    }

    public static void main(String[] args) {
        EventQueue.invokeLater(() -> {
            try {
                JFrame frame = new JFrame("Thống Kê Nhà Cung Cấp");
                frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
                frame.setSize(1100, 700);
                frame.setContentPane(new Frame_NCC_ThongKe());
                frame.setLocationRelativeTo(null);
                frame.setVisible(true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        });
    }
}