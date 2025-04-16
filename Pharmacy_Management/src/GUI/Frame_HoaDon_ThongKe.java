package GUI;

import javax.swing.*;
import javax.swing.border.LineBorder;
import javax.swing.border.TitledBorder;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.toedter.calendar.JDateChooser;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.data.general.DefaultPieDataset;

import DAO.HoaDonDAO;

public class Frame_HoaDon_ThongKe extends JPanel {
    private static final long serialVersionUID = 1L;
    private JTable tableHoaDon;
    private DefaultTableModel modelHoaDon;
    private JComboBox<String> cboLoaiThongKe;
    private JComboBox<String> cboNam;
    private JComboBox<String> cboThang;
    private JComboBox<String> cboTuan;
    private JDateChooser dateChooserTuNgay;
    private JDateChooser dateChooserDenNgay;
    private JTextField txtTongHoaDon;
    private JTextField txtTongDoanhThu;
    private HoaDonDAO hoaDonDAO = new HoaDonDAO();
    private ChartPanel chartPanelTrangThai;
    private ChartPanel chartPanelPhuongThuc;

    // Define colors from Frame_GiaoDich_NhapThuoc
    private final Color MAIN_COLOR = new Color(254, 222, 192);
    private final Color HEADER_COLOR = new Color(251, 203, 150);
    private final Color BUTTON_COLOR = new Color(249, 187, 118);
    private final Color BUTTON_TEXT_COLOR = new Color(121, 70, 13);
    private final Color TEXT_COLOR = new Color(100, 60, 20);
    private final Color PANEL_BORDER_COLOR = new Color(222, 184, 135);
    private final Color TABLE_HEADER_COLOR = new Color(251, 203, 150);
    private final Color SELECTED_COLOR = new Color(255, 239, 213);

    public Frame_HoaDon_ThongKe() {
        setBackground(MAIN_COLOR);
        setLayout(null);
        setPreferredSize(new Dimension(1550, 878));

        // Title Panel
        JPanel pnlTitle = new JPanel();
        pnlTitle.setBounds(0, 0, 1540, 60);
        pnlTitle.setBackground(HEADER_COLOR);
        add(pnlTitle);
        pnlTitle.setLayout(new BorderLayout());

        JLabel lblTitle = new JLabel("THỐNG KÊ HÓA ĐƠN");
        lblTitle.setHorizontalAlignment(SwingConstants.CENTER);
        lblTitle.setFont(new Font("Arial", Font.BOLD, 28));
        lblTitle.setForeground(TEXT_COLOR);
        pnlTitle.add(lblTitle, BorderLayout.CENTER);

        // Filter Panel
        JPanel pnlFilter = new JPanel();
        pnlFilter.setBounds(10, 70, 509, 342);
        pnlFilter.setBackground(MAIN_COLOR);
        pnlFilter.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1),
                "Điều kiện thống kê", TitledBorder.LEFT, TitledBorder.TOP,
                new Font("Arial", Font.BOLD, 16), TEXT_COLOR));
        add(pnlFilter);
        pnlFilter.setLayout(null);

        // Filter Row 1
        JLabel lblLoaiThongKe = new JLabel("Loại thống kê:");
        lblLoaiThongKe.setForeground(TEXT_COLOR);
        lblLoaiThongKe.setFont(new Font("Arial", Font.PLAIN, 16));
        lblLoaiThongKe.setBounds(10, 30, 150, 30);
        pnlFilter.add(lblLoaiThongKe);

        cboLoaiThongKe = new JComboBox<>(new String[] {"Ngày", "Tuần", "Tháng", "Quý", "Năm"});
        cboLoaiThongKe.setBackground(Color.WHITE);
        cboLoaiThongKe.setForeground(TEXT_COLOR);
        cboLoaiThongKe.setFont(new Font("Arial", Font.PLAIN, 16));
        cboLoaiThongKe.setBounds(160, 30, 322, 30);
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
        cboNam.setBounds(160, 70, 322, 30);
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
        cboThang.setBounds(160, 110, 322, 30);
        pnlFilter.add(cboThang);

        JLabel lblTuan = new JLabel("Tuần:");
        lblTuan.setForeground(TEXT_COLOR);
        lblTuan.setFont(new Font("Arial", Font.PLAIN, 16));
        lblTuan.setBounds(10, 150, 150, 30);
        pnlFilter.add(lblTuan);

        cboTuan = new JComboBox<>(new String[] {"1", "2", "3", "4", "5"});
        cboTuan.setBackground(Color.WHITE);
        cboTuan.setForeground(TEXT_COLOR);
        cboTuan.setFont(new Font("Arial", Font.PLAIN, 16));
        cboTuan.setBounds(160, 150, 322, 30);
        pnlFilter.add(cboTuan);

        // Filter Row 2
        JLabel lblTuNgay = new JLabel("Từ ngày:");
        lblTuNgay.setForeground(TEXT_COLOR);
        lblTuNgay.setFont(new Font("Arial", Font.PLAIN, 16));
        lblTuNgay.setBounds(10, 190, 150, 30);
        pnlFilter.add(lblTuNgay);

        dateChooserTuNgay = new JDateChooser();
        dateChooserTuNgay.setDateFormatString("dd/MM/yyyy");
        dateChooserTuNgay.setFont(new Font("Arial", Font.PLAIN, 16));
        dateChooserTuNgay.setBounds(160, 190, 150, 30);
        dateChooserTuNgay.setDate(new Date());
        pnlFilter.add(dateChooserTuNgay);

        JLabel lblDenNgay = new JLabel("Đến ngày:");
        lblDenNgay.setForeground(TEXT_COLOR);
        lblDenNgay.setFont(new Font("Arial", Font.PLAIN, 16));
        lblDenNgay.setBounds(320, 190, 80, 30);
        pnlFilter.add(lblDenNgay);

        dateChooserDenNgay = new JDateChooser();
        dateChooserDenNgay.setDateFormatString("dd/MM/yyyy");
        dateChooserDenNgay.setFont(new Font("Arial", Font.PLAIN, 16));
        dateChooserDenNgay.setBounds(400, 190, 150, 30);
        dateChooserDenNgay.setDate(new Date());
        pnlFilter.add(dateChooserDenNgay);

        // Buttons
        JPanel pnlButtons = new JPanel();
        pnlButtons.setBackground(MAIN_COLOR);
        pnlButtons.setBounds(90, 270, 331, 40);
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
        pnlTable.setBounds(529, 70, 1011, 342);
        pnlTable.setBackground(MAIN_COLOR);
        pnlTable.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1),
                "Bảng thống kê hóa đơn", TitledBorder.LEFT, TitledBorder.TOP,
                new Font("Arial", Font.BOLD, 16), TEXT_COLOR));
        add(pnlTable);
        pnlTable.setLayout(null);

        modelHoaDon = new DefaultTableModel(
                new Object[][] {},
                new String[] {"Mã hóa đơn", "Ngày lập", "Mã khách hàng", "Tổng tiền"}
        ) {
            private static final long serialVersionUID = 1L;
            @Override
            public boolean isCellEditable(int row, int column) {
                return false;
            }
        };

        tableHoaDon = new JTable(modelHoaDon);
        tableHoaDon.getTableHeader().setFont(new Font("Arial", Font.BOLD, 14));
        tableHoaDon.getTableHeader().setBackground(TABLE_HEADER_COLOR);
        tableHoaDon.getTableHeader().setForeground(TEXT_COLOR);
        tableHoaDon.setBackground(Color.WHITE);
        tableHoaDon.setForeground(TEXT_COLOR);
        tableHoaDon.setSelectionBackground(SELECTED_COLOR);
        tableHoaDon.setRowHeight(30);
        tableHoaDon.setFont(new Font("Arial", Font.PLAIN, 14));
        tableHoaDon.getColumnModel().getColumn(0).setPreferredWidth(100);
        tableHoaDon.getColumnModel().getColumn(1).setPreferredWidth(100);
        tableHoaDon.getColumnModel().getColumn(2).setPreferredWidth(100);
        tableHoaDon.getColumnModel().getColumn(3).setPreferredWidth(150);

        JScrollPane scrollPane = new JScrollPane(tableHoaDon);
        scrollPane.setBounds(5, 21, 996, 311);
        pnlTable.add(scrollPane);

        // Summary Panel
        JPanel pnlThongTin = new JPanel();
        pnlThongTin.setBounds(10, 422, 509, 156);
        pnlThongTin.setBackground(MAIN_COLOR);
        pnlThongTin.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1),
                "Thông tin tổng hợp", TitledBorder.LEFT, TitledBorder.TOP,
                new Font("Arial", Font.BOLD, 16), TEXT_COLOR));
        add(pnlThongTin);
        pnlThongTin.setLayout(null);

        JLabel lblTongHoaDon = new JLabel("Tổng số hóa đơn:");
        lblTongHoaDon.setForeground(TEXT_COLOR);
        lblTongHoaDon.setFont(new Font("Arial", Font.BOLD, 18));
        lblTongHoaDon.setBounds(10, 30, 300, 30);
        pnlThongTin.add(lblTongHoaDon);

        txtTongHoaDon = new JTextField("0");
        txtTongHoaDon.setHorizontalAlignment(SwingConstants.RIGHT);
        txtTongHoaDon.setEditable(false);
        txtTongHoaDon.setFont(new Font("Arial", Font.BOLD, 18));
        txtTongHoaDon.setForeground(new Color(165, 42, 42));
        txtTongHoaDon.setBackground(new Color(253, 245, 230));
        txtTongHoaDon.setBounds(171, 30, 343, 30);
        pnlThongTin.add(txtTongHoaDon);

        JLabel lblTongDoanhThu = new JLabel("Tổng doanh thu:");
        lblTongDoanhThu.setForeground(TEXT_COLOR);
        lblTongDoanhThu.setFont(new Font("Arial", Font.BOLD, 18));
        lblTongDoanhThu.setBounds(10, 70, 300, 30);
        pnlThongTin.add(lblTongDoanhThu);

        txtTongDoanhThu = new JTextField("0 VNĐ");
        txtTongDoanhThu.setHorizontalAlignment(SwingConstants.RIGHT);
        txtTongDoanhThu.setEditable(false);
        txtTongDoanhThu.setFont(new Font("Arial", Font.BOLD, 18));
        txtTongDoanhThu.setForeground(new Color(165, 42, 42));
        txtTongDoanhThu.setBackground(new Color(253, 245, 230));
        txtTongDoanhThu.setBounds(171, 70, 343, 30);
        pnlThongTin.add(txtTongDoanhThu);

        // Chart Panel for trạng thái hóa đơn
        chartPanelTrangThai = new ChartPanel(null);
        chartPanelTrangThai.setBounds(539, 422, 450, 300);
        chartPanelTrangThai.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1),
                "Biểu đồ theo trạng thái hóa đơn", TitledBorder.LEFT, TitledBorder.TOP,
                new Font("Arial", Font.BOLD, 12), TEXT_COLOR));
        add(chartPanelTrangThai);

        // Chart Panel for phương thức thanh toán
        chartPanelPhuongThuc = new ChartPanel(null);
        chartPanelPhuongThuc.setBounds(1030, 422, 450, 300);
        chartPanelPhuongThuc.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1),
                "Biểu đồ theo phương thức thanh toán", TitledBorder.LEFT, TitledBorder.TOP,
                new Font("Arial", Font.BOLD, 12), TEXT_COLOR));
        add(chartPanelPhuongThuc);

        // Event for cboLoaiThongKe
        cboLoaiThongKe.addActionListener(e -> {
            String selectedOption = cboLoaiThongKe.getSelectedItem().toString();
            switch (selectedOption) {
                case "Ngày":
                    lblNam.setVisible(true);
                    cboNam.setVisible(true);
                    lblThang.setVisible(false);
                    cboThang.setVisible(false);
                    lblTuan.setVisible(false);
                    cboTuan.setVisible(false);
                    lblTuNgay.setVisible(true);
                    dateChooserTuNgay.setVisible(true);
                    lblDenNgay.setVisible(false);
                    dateChooserDenNgay.setVisible(false);
                    break;
                case "Tuần":
                    lblNam.setVisible(true);
                    cboNam.setVisible(true);
                    lblThang.setVisible(true);
                    cboThang.setVisible(true);
                    lblTuan.setVisible(true);
                    cboTuan.setVisible(true);
                    lblTuNgay.setVisible(false);
                    dateChooserTuNgay.setVisible(false);
                    lblDenNgay.setVisible(false);
                    dateChooserDenNgay.setVisible(false);
                    break;
                case "Tháng":
                case "Quý":
                case "Năm":
                    lblNam.setVisible(true);
                    cboNam.setVisible(true);
                    lblThang.setVisible(false);
                    cboThang.setVisible(false);
                    lblTuan.setVisible(false);
                    cboTuan.setVisible(false);
                    lblTuNgay.setVisible(false);
                    dateChooserTuNgay.setVisible(false);
                    lblDenNgay.setVisible(false);
                    dateChooserDenNgay.setVisible(false);
                    break;
            }
            pnlFilter.revalidate();
            pnlFilter.repaint();
        });

        // Initialize default state
        cboLoaiThongKe.setSelectedIndex(0); // Set default to "Ngày"

        // Button events
        btnThongKe.addActionListener(e -> thongKeHoaDon());
        btnXuatBaoCao.addActionListener(e -> JOptionPane.showMessageDialog(this, "Chức năng xuất báo cáo chưa được triển khai!"));

        // Load initial charts
        updateCharts();
    }

    private void thongKeHoaDon() {
        modelHoaDon.setRowCount(0);
        String loaiThongKe = cboLoaiThongKe.getSelectedItem().toString();
        List<Object[]> data = null;
        int tongHoaDon = 0;
        double tongDoanhThu = 0;

        SimpleDateFormat sdfSQL = new SimpleDateFormat("yyyy-MM-dd");
        try {
            switch (loaiThongKe) {
                case "Ngày":
                    if (dateChooserTuNgay.getDate() == null) {
                        JOptionPane.showMessageDialog(this, "Vui lòng chọn ngày!");
                        return;
                    }
                    String ngaySQL = sdfSQL.format(dateChooserTuNgay.getDate());
                    data = hoaDonDAO.thongKeTheoNgay(ngaySQL);
                    break;
                case "Tuần":
                    int namTuan = Integer.parseInt(cboNam.getSelectedItem().toString());
                    int thangTuan = Integer.parseInt(cboThang.getSelectedItem().toString());
                    int tuan = Integer.parseInt(cboTuan.getSelectedItem().toString());
                    data = hoaDonDAO.thongKeTheoTuan(namTuan, thangTuan, tuan);
                    break;
                case "Tháng":
                    int namThang = Integer.parseInt(cboNam.getSelectedItem().toString());
                    modelHoaDon.setColumnIdentifiers(new String[] {"Tháng", "Số hóa đơn", "Tổng doanh thu"});
                    data = hoaDonDAO.thongKeTheoThang(namThang);
                    break;
                case "Quý":
                    int namQuy = Integer.parseInt(cboNam.getSelectedItem().toString());
                    modelHoaDon.setColumnIdentifiers(new String[] {"Quý", "Số hóa đơn", "Tổng doanh thu"});
                    data = hoaDonDAO.thongKeTheoQuy(namQuy);
                    break;
                case "Năm":
                    modelHoaDon.setColumnIdentifiers(new String[] {"Năm", "Số hóa đơn", "Tổng doanh thu"});
                    data = hoaDonDAO.thongKeTheoNam();
                    break;
            }

            // Update table and calculate totals
            if (data != null) {
                for (Object[] row : data) {
                    modelHoaDon.addRow(row);
                    if (loaiThongKe.equals("Ngày") || loaiThongKe.equals("Tuần")) {
                        tongHoaDon++;
                        String tongTienStr = row[3].toString();
                        double tongTien = Double.parseDouble(tongTienStr.replaceAll("[^\\d.]", ""));
                        tongDoanhThu += tongTien;
                    } else {
                        int soHoaDon = Integer.parseInt(row[1].toString());
                        String tongDoanhThuStr = row[2].toString();
                        double doanhThu = Double.parseDouble(tongDoanhThuStr.replaceAll("[^\\d.]", ""));
                        tongHoaDon += soHoaDon;
                        tongDoanhThu += doanhThu;
                    }
                }
            }

            // Update summary
            txtTongHoaDon.setText(String.valueOf(tongHoaDon));
            txtTongDoanhThu.setText(String.format("%,.0f VNĐ", tongDoanhThu));

            // Update charts
            updateCharts();

        } catch (Exception e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(this, "Lỗi khi thống kê: " + e.getMessage());
        }
    }

    private void updateCharts() {
        String tuNgay = "2000-01-01";
        String denNgay = "2100-12-31";
        SimpleDateFormat sdfSQL = new SimpleDateFormat("yyyy-MM-dd");

        try {
            String loaiThongKe = cboLoaiThongKe.getSelectedItem().toString();
            if (loaiThongKe.equals("Ngày")) {
                if (dateChooserTuNgay.getDate() != null) {
                    tuNgay = sdfSQL.format(dateChooserTuNgay.getDate());
                    denNgay = tuNgay;
                    System.out.println("Khoảng thời gian (theo ngày): " + tuNgay + " đến " + denNgay);
                }
            } else if (loaiThongKe.equals("Tuần")) {
                int nam = Integer.parseInt(cboNam.getSelectedItem().toString());
                int thang = Integer.parseInt(cboThang.getSelectedItem().toString());
                int tuan = Integer.parseInt(cboTuan.getSelectedItem().toString());
                int ngayBatDau, ngayKetThuc;
                switch (tuan) {
                    case 1:
                        ngayBatDau = 1;
                        ngayKetThuc = 7;
                        break;
                    case 2:
                        ngayBatDau = 8;
                        ngayKetThuc = 14;
                        break;
                    case 3:
                        ngayBatDau = 15;
                        ngayKetThuc = 21;
                        break;
                    case 4:
                        ngayBatDau = 22;
                        ngayKetThuc = 28;
                        break;
                    case 5:
                        ngayBatDau = 29;
                        ngayKetThuc = 31;
                        break;
                    default:
                        ngayBatDau = 1;
                        ngayKetThuc = 31;
                        break;
                }
                tuNgay = String.format("%d-%02d-%02d", nam, thang, ngayBatDau);
                denNgay = String.format("%d-%02d-%02d", nam, thang, ngayKetThuc);
                System.out.println("Khoảng thời gian (theo tuần): " + tuNgay + " đến " + denNgay);
            } else if (loaiThongKe.equals("Tháng") || loaiThongKe.equals("Quý")) {
                int nam = Integer.parseInt(cboNam.getSelectedItem().toString());
                tuNgay = nam + "-01-01";
                denNgay = nam + "-12-31";
                System.out.println("Khoảng thời gian (theo tháng/quý): " + tuNgay + " đến " + denNgay);
            } else if (loaiThongKe.equals("Năm")) {
                tuNgay = "2000-01-01";
                denNgay = "2100-12-31";
                System.out.println("Khoảng thời gian (theo năm): " + tuNgay + " đến " + denNgay);
            }

            // Chart Biểu đồ theo trạng thái hóa đơn
            Map<String, Double> trangThaiData = hoaDonDAO.thongKeTrangThai(tuNgay, denNgay);
            DefaultPieDataset trangThaiDataset = new DefaultPieDataset();
            if (trangThaiData.isEmpty()) {
                trangThaiDataset.setValue("Không có dữ liệu", 100.0);
            } else {
                for (Map.Entry<String, Double> entry : trangThaiData.entrySet()) {
                    trangThaiDataset.setValue(entry.getKey() + " (" + String.format("%.1f%%", entry.getValue()) + ")", entry.getValue());
                }
            }
            JFreeChart trangThaiChart = ChartFactory.createPieChart("", trangThaiDataset, true, true, false);
            chartPanelTrangThai.setChart(trangThaiChart);

            // Chart Biểu đồ theo phương thức thanh toán
            Map<String, Double> phuongThucData = hoaDonDAO.thongKePhuongThucThanhToan(tuNgay, denNgay);
            DefaultPieDataset phuongThucDataset = new DefaultPieDataset();
            if (phuongThucData.isEmpty()) {
                phuongThucDataset.setValue("Không có dữ liệu", 100.0);
            } else {
                for (Map.Entry<String, Double> entry : phuongThucData.entrySet()) {
                    phuongThucDataset.setValue(entry.getKey() + " (" + String.format("%.1f%%", entry.getValue()) + ")", entry.getValue());
                }
            }
            JFreeChart phuongThucChart = ChartFactory.createPieChart("", phuongThucDataset, true, true, false);
            chartPanelPhuongThuc.setChart(phuongThucChart);

        } catch (Exception e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(this, "Lỗi khi cập nhật biểu đồ: " + e.getMessage());
        }
    }

    public static void main(String[] args) {
        EventQueue.invokeLater(() -> {
            try {
                JFrame frame = new JFrame("Thống Kê Hóa Đơn");
                frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
                frame.setSize(1550, 878);
                frame.setContentPane(new Frame_HoaDon_ThongKe());
                frame.setLocationRelativeTo(null);
                frame.setVisible(true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        });
    }
}