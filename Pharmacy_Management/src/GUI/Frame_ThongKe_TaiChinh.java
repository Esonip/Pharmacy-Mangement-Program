package GUI;

import javax.swing.*;
import javax.swing.border.EmptyBorder;
import javax.swing.border.LineBorder;
import javax.swing.border.TitledBorder;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.util.Calendar;

public class Frame_ThongKe_TaiChinh extends JPanel {
    private static final long serialVersionUID = 1L;
    private JTable tableTaiChinh;
    private DefaultTableModel modelTaiChinh;
    private JComboBox<String> cboLoaiThongKe;
    private JComboBox<String> cboNam;
    private JComboBox<String> cboThang;
    private JTextField txtTuNgay;
    private JTextField txtDenNgay;
    private JTextField txtTongThu;
    private JTextField txtTongChi;
    private JTextField txtLoiNhuan;

    // Define colors from Frame_GiaoDich_NhapThuoc
    private final Color MAIN_COLOR = new Color(254, 222, 192);
    private final Color HEADER_COLOR = new Color(251, 203, 150);
    private final Color BUTTON_COLOR = new Color(249, 187, 118);
    private final Color BUTTON_TEXT_COLOR = new Color(121, 70, 13);
    private final Color TEXT_COLOR = new Color(100, 60, 20);
    private final Color PANEL_BORDER_COLOR = new Color(222, 184, 135);
    private final Color TABLE_HEADER_COLOR = new Color(251, 203, 150);
    private final Color SELECTED_COLOR = new Color(255, 239, 213);

    public Frame_ThongKe_TaiChinh() {
        setBackground(MAIN_COLOR);
        setLayout(new BorderLayout(0, 0));
        setBorder(new EmptyBorder(15, 15, 15, 15));

        // Title Panel
        JPanel pnlTitle = new JPanel();
        pnlTitle.setPreferredSize(new Dimension(1000, 60));
        pnlTitle.setBackground(HEADER_COLOR);
        add(pnlTitle, BorderLayout.NORTH);

        JLabel lblTitle = new JLabel("THỐNG KÊ TÀI CHÍNH");
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
        pnlFilter.setBounds(0, 0, 492, 236);
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
        pnlTable.setBounds(502, 0, 655, 410);
        pnlTable.setBackground(MAIN_COLOR);
        pnlTable.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1),
                "Bảng thống kê tài chính", TitledBorder.LEFT, TitledBorder.TOP,
                new Font("Arial", Font.BOLD, 16), TEXT_COLOR));
        pnlContent.add(pnlTable);
        pnlTable.setLayout(null);

        modelTaiChinh = new DefaultTableModel(
                new Object[][] {
                        {1, "01/04/2025", "Thu", "Bán hàng", "1,500,000 VNĐ", "Doanh thu bán thuốc"},
                        {2, "02/04/2025", "Chi", "Nhập hàng", "-800,000 VNĐ", "Nhập thuốc từ NCC ABC"},
                        {3, "03/04/2025", "Thu", "Bán hàng", "1,200,000 VNĐ", "Doanh thu bán thuốc"},
                        {4, "04/04/2025", "Chi", "Chi phí khác", "-300,000 VNĐ", "Chi phí vận hành"},
                        {5, "05/04/2025", "Thu", "Bán hàng", "900,000 VNĐ", "Doanh thu bán thuốc"},
                },
                new String[] {"STT", "Ngày", "Loại", "Nội dung", "Số tiền", "Ghi chú"}
        ) {
            private static final long serialVersionUID = 1L;
            @Override
            public boolean isCellEditable(int row, int column) {
                return false;
            }
        };

        tableTaiChinh = new JTable(modelTaiChinh);
        tableTaiChinh.getTableHeader().setFont(new Font("Arial", Font.BOLD, 14));
        tableTaiChinh.getTableHeader().setBackground(TABLE_HEADER_COLOR);
        tableTaiChinh.getTableHeader().setForeground(TEXT_COLOR);
        tableTaiChinh.setBackground(Color.WHITE);
        tableTaiChinh.setForeground(TEXT_COLOR);
        tableTaiChinh.setSelectionBackground(SELECTED_COLOR);
        tableTaiChinh.setRowHeight(30);
        tableTaiChinh.setFont(new Font("Arial", Font.PLAIN, 14));
        tableTaiChinh.getColumnModel().getColumn(0).setPreferredWidth(50);
        tableTaiChinh.getColumnModel().getColumn(1).setPreferredWidth(100);
        tableTaiChinh.getColumnModel().getColumn(2).setPreferredWidth(80);
        tableTaiChinh.getColumnModel().getColumn(3).setPreferredWidth(120);
        tableTaiChinh.getColumnModel().getColumn(4).setPreferredWidth(120);
        tableTaiChinh.getColumnModel().getColumn(5).setPreferredWidth(150);

        JScrollPane scrollPane = new JScrollPane(tableTaiChinh);
        scrollPane.setBounds(5, 21, 638, 429);
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

        JLabel lblTongThu = new JLabel("Tổng thu:");
        lblTongThu.setForeground(TEXT_COLOR);
        lblTongThu.setFont(new Font("Arial", Font.BOLD, 16));
        lblTongThu.setBounds(10, 30, 150, 30);
        pnlThongTin.add(lblTongThu);

        txtTongThu = new JTextField("3,600,000 VNĐ");
        txtTongThu.setHorizontalAlignment(SwingConstants.RIGHT);
        txtTongThu.setEditable(false);
        txtTongThu.setFont(new Font("Arial", Font.BOLD, 16));
        txtTongThu.setForeground(new Color(165, 42, 42));
        txtTongThu.setBackground(new Color(253, 245, 230));
        txtTongThu.setBounds(160, 30, 400, 30);
        pnlThongTin.add(txtTongThu);

        JLabel lblTongChi = new JLabel("Tổng chi:");
        lblTongChi.setForeground(TEXT_COLOR);
        lblTongChi.setFont(new Font("Arial", Font.BOLD, 16));
        lblTongChi.setBounds(10, 70, 150, 30);
        pnlThongTin.add(lblTongChi);

        txtTongChi = new JTextField("1,100,000 VNĐ");
        txtTongChi.setHorizontalAlignment(SwingConstants.RIGHT);
        txtTongChi.setEditable(false);
        txtTongChi.setFont(new Font("Arial", Font.BOLD, 16));
        txtTongChi.setForeground(new Color(165, 42, 42));
        txtTongChi.setBackground(new Color(253, 245, 230));
        txtTongChi.setBounds(160, 70, 400, 30);
        pnlThongTin.add(txtTongChi);

        JLabel lblLoiNhuan = new JLabel("Lợi nhuận:");
        lblLoiNhuan.setForeground(TEXT_COLOR);
        lblLoiNhuan.setFont(new Font("Arial", Font.BOLD, 16));
        lblLoiNhuan.setBounds(10, 110, 150, 30);
        pnlThongTin.add(lblLoiNhuan);

        txtLoiNhuan = new JTextField("2,500,000 VNĐ");
        txtLoiNhuan.setHorizontalAlignment(SwingConstants.RIGHT);
        txtLoiNhuan.setEditable(false);
        txtLoiNhuan.setFont(new Font("Arial", Font.BOLD, 16));
        txtLoiNhuan.setForeground(new Color(165, 42, 42));
        txtLoiNhuan.setBackground(new Color(253, 245, 230));
        txtLoiNhuan.setBounds(160, 110, 400, 30);
        pnlThongTin.add(txtLoiNhuan);

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
        btnThongKe.addActionListener(e -> JOptionPane.showMessageDialog(this, "Chức năng thống kê tài chính"));
        btnXuatBaoCao.addActionListener(e -> JOptionPane.showMessageDialog(this, "Chức năng xuất báo cáo"));
    }

    public static void main(String[] args) {
        EventQueue.invokeLater(() -> {
            try {
                JFrame frame = new JFrame("Thống Kê Tài Chính");
                frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
                frame.setSize(1100, 700);
                frame.setContentPane(new Frame_ThongKe_TaiChinh());
                frame.setLocationRelativeTo(null);
                frame.setVisible(true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        });
    }
}