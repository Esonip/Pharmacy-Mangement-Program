package GUI;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.swing.BorderFactory;
import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JSpinner;
import javax.swing.JTable;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.SpinnerNumberModel;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;
import javax.swing.border.LineBorder;
import javax.swing.border.TitledBorder;
import javax.swing.table.DefaultTableModel;

public class Frame_GiaoDich_NhapThuoc extends JPanel {
    private static final long serialVersionUID = 1L;
    private JTextField txtMaPhieu;
    private JTextField txtNgayGiaoDich;
    private JComboBox<String> cboNhaCungCap;
    private JTextField txtNguoiGiao;
    private JTextArea txtGhiChu;
    private JTable tableThuoc;
    private DefaultTableModel modelThuoc;
    private JSpinner spinnerSoLuong;
    private JTextField txtTongTien;
    private JComboBox<String> cboHinhThucThanhToan;
    private JTextField txtTimKiemThuoc;
    private JComboBox<String> cboThuoc;

    // Define colors
    private final Color MAIN_COLOR = new Color(254, 222, 192);
    private final Color HEADER_COLOR = new Color(251, 203, 150);
    private final Color BUTTON_COLOR = new Color(249, 187, 118);
    private final Color BUTTON_TEXT_COLOR = new Color(121, 70, 13);
    private final Color TEXT_COLOR = new Color(100, 60, 20);
    private final Color PANEL_BORDER_COLOR = new Color(222, 184, 135);
    private final Color TABLE_HEADER_COLOR = new Color(251, 203, 150);
    private final Color SELECTED_COLOR = new Color(255, 239, 213);

    public Frame_GiaoDich_NhapThuoc() {
        initialize();
        setInitialValues(); // Gán giá trị động sau khi khởi tạo giao diện
    }

    private void initialize() {
        setBackground(MAIN_COLOR);
        setLayout(new BorderLayout(0, 0));
        setBorder(new EmptyBorder(15, 15, 15, 15));

        // Title Panel
        JPanel pnlTitle = new JPanel();
        pnlTitle.setPreferredSize(new Dimension(1000, 60));
        pnlTitle.setBackground(HEADER_COLOR);
        add(pnlTitle, BorderLayout.NORTH);

        JLabel lblTitle = new JLabel("GIAO DỊCH NHẬP THUỐC");
        lblTitle.setHorizontalAlignment(SwingConstants.CENTER);
        lblTitle.setFont(new Font("Arial", Font.BOLD, 28));
        lblTitle.setForeground(TEXT_COLOR);
        pnlTitle.add(lblTitle);

        // Main Panel
        JPanel pnlMain = new JPanel();
        pnlMain.setBackground(MAIN_COLOR);
        add(pnlMain, BorderLayout.CENTER);
        pnlMain.setLayout(null);

        // Left Panel
        JPanel pnlLeft = new JPanel();
        pnlLeft.setBounds(0, 0, 492, 610);
        pnlLeft.setPreferredSize(new Dimension(600, 600));
        pnlLeft.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1), 
            "Thông tin giao dịch nhập thuốc", TitledBorder.LEFT, TitledBorder.TOP,
            new Font("Arial", Font.BOLD, 16), TEXT_COLOR));
        pnlLeft.setBackground(MAIN_COLOR);
        pnlLeft.setLayout(null); // Sử dụng AbsoluteLayout
        pnlMain.add(pnlLeft);

        // Transaction Info
        JLabel lblMaPhieu = new JLabel("Mã phiếu nhập:");
        lblMaPhieu.setForeground(TEXT_COLOR);
        lblMaPhieu.setFont(new Font("Arial", Font.PLAIN, 16));
        lblMaPhieu.setBounds(10, 30, 150, 30);
        pnlLeft.add(lblMaPhieu);

        txtMaPhieu = new JTextField();
        txtMaPhieu.setEditable(false);
        txtMaPhieu.setForeground(TEXT_COLOR);
        txtMaPhieu.setBackground(new Color(240, 240, 240));
        txtMaPhieu.setFont(new Font("Arial", Font.PLAIN, 16));
        txtMaPhieu.setBounds(160, 30, 321, 30);
        pnlLeft.add(txtMaPhieu);

        JLabel lblNgayGiaoDich = new JLabel("Ngày nhập:");
        lblNgayGiaoDich.setForeground(TEXT_COLOR);
        lblNgayGiaoDich.setFont(new Font("Arial", Font.PLAIN, 16));
        lblNgayGiaoDich.setBounds(10, 70, 150, 30);
        pnlLeft.add(lblNgayGiaoDich);

        txtNgayGiaoDich = new JTextField();
        txtNgayGiaoDich.setEditable(false);
        txtNgayGiaoDich.setForeground(TEXT_COLOR);
        txtNgayGiaoDich.setBackground(new Color(240, 240, 240));
        txtNgayGiaoDich.setFont(new Font("Arial", Font.PLAIN, 16));
        txtNgayGiaoDich.setBounds(160, 70, 321, 30);
        pnlLeft.add(txtNgayGiaoDich);

        JLabel lblNhaCungCap = new JLabel("Nhà cung cấp:");
        lblNhaCungCap.setForeground(TEXT_COLOR);
        lblNhaCungCap.setFont(new Font("Arial", Font.PLAIN, 16));
        lblNhaCungCap.setBounds(10, 110, 150, 30);
        pnlLeft.add(lblNhaCungCap);

        cboNhaCungCap = new JComboBox<>(new String[] {
            "NCC001 - Công ty Dược phẩm A", "NCC002 - Công ty Dược phẩm B", "NCC003 - Công ty Dược phẩm C"
        });
        cboNhaCungCap.setBackground(Color.WHITE);
        cboNhaCungCap.setForeground(TEXT_COLOR);
        cboNhaCungCap.setFont(new Font("Arial", Font.PLAIN, 16));
        cboNhaCungCap.setBounds(160, 110, 321, 30);
        pnlLeft.add(cboNhaCungCap);

        JLabel lblNguoiGiao = new JLabel("Người giao:");
        lblNguoiGiao.setForeground(TEXT_COLOR);
        lblNguoiGiao.setFont(new Font("Arial", Font.PLAIN, 16));
        lblNguoiGiao.setBounds(10, 150, 150, 30);
        pnlLeft.add(lblNguoiGiao);

        txtNguoiGiao = new JTextField();
        txtNguoiGiao.setForeground(TEXT_COLOR);
        txtNguoiGiao.setFont(new Font("Arial", Font.PLAIN, 16));
        txtNguoiGiao.setBounds(160, 150, 321, 30);
        pnlLeft.add(txtNguoiGiao);

        JLabel lblHinhThucThanhToan = new JLabel("Hình thức thanh toán:");
        lblHinhThucThanhToan.setForeground(TEXT_COLOR);
        lblHinhThucThanhToan.setFont(new Font("Arial", Font.PLAIN, 16));
        lblHinhThucThanhToan.setBounds(10, 190, 150, 30);
        pnlLeft.add(lblHinhThucThanhToan);

        cboHinhThucThanhToan = new JComboBox<>(new String[] {"Tiền mặt", "Chuyển khoản", "Công nợ"});
        cboHinhThucThanhToan.setBackground(Color.WHITE);
        cboHinhThucThanhToan.setForeground(TEXT_COLOR);
        cboHinhThucThanhToan.setFont(new Font("Arial", Font.PLAIN, 16));
        cboHinhThucThanhToan.setBounds(160, 190, 321, 30);
        pnlLeft.add(cboHinhThucThanhToan);

        // Note
        JPanel pnlGhiChu = new JPanel();
        pnlGhiChu.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1), 
            "Ghi chú", TitledBorder.LEFT, TitledBorder.TOP,
            new Font("Arial", Font.BOLD, 16), TEXT_COLOR));
        pnlGhiChu.setBackground(MAIN_COLOR);
        pnlGhiChu.setBounds(10, 230, 471, 150);
        pnlLeft.add(pnlGhiChu);
        pnlGhiChu.setLayout(null);

        txtGhiChu = new JTextArea(5, 0);
        txtGhiChu.setForeground(TEXT_COLOR);
        txtGhiChu.setFont(new Font("Arial", Font.PLAIN, 16));
        JScrollPane scrollGhiChu = new JScrollPane(txtGhiChu);
        scrollGhiChu.setBounds(5, 21, 456, 124);
        pnlGhiChu.add(scrollGhiChu);

        // Total Amount
        JPanel pnlTotal = new JPanel();
        pnlTotal.setBackground(MAIN_COLOR);
        pnlTotal.setBounds(10, 390, 471, 40);
        pnlLeft.add(pnlTotal);
        pnlTotal.setLayout(null);

        JLabel lblTongTien = new JLabel("Tổng tiền:");
        lblTongTien.setBounds(0, 0, 91, 40);
        lblTongTien.setFont(new Font("Arial", Font.BOLD, 18));
        lblTongTien.setForeground(TEXT_COLOR);
        pnlTotal.add(lblTongTien);

        txtTongTien = new JTextField("0 VNĐ");
        txtTongTien.setBounds(106, 0, 365, 40);
        txtTongTien.setEditable(false);
        txtTongTien.setFont(new Font("Arial", Font.BOLD, 18));
        txtTongTien.setForeground(new Color(165, 42, 42));
        txtTongTien.setBackground(new Color(253, 245, 230));
        txtTongTien.setHorizontalAlignment(SwingConstants.RIGHT);
        pnlTotal.add(txtTongTien);

        // Action Buttons
        JPanel pnlActions = new JPanel();
        pnlActions.setBackground(MAIN_COLOR);
        pnlActions.setLayout(null);
        pnlActions.setBounds(10, 440, 471, 40);
        pnlLeft.add(pnlActions);

        JButton btnSave = new JButton("Lưu nhập thuốc");
        btnSave.setBackground(new Color(254, 152, 65));
        btnSave.setForeground(new Color(50, 20, 0));
        btnSave.setFont(new Font("Arial", Font.BOLD, 16));
        btnSave.setBounds(0, 0, 153, 40);
        pnlActions.add(btnSave);

        JButton btnClear = new JButton("Làm mới");
        btnClear.setBackground(BUTTON_COLOR);
        btnClear.setForeground(BUTTON_TEXT_COLOR);
        btnClear.setFont(new Font("Arial", Font.BOLD, 16));
        btnClear.setBounds(163, 0, 153, 40);
        pnlActions.add(btnClear);

        JButton btnCancel = new JButton("Hủy");
        btnCancel.setBackground(BUTTON_COLOR);
        btnCancel.setForeground(BUTTON_TEXT_COLOR);
        btnCancel.setFont(new Font("Arial", Font.BOLD, 16));
        btnCancel.setBounds(326, 0, 153, 40);
        pnlActions.add(btnCancel);

        // Right Panel
        JPanel pnlRight = new JPanel();
        pnlRight.setBounds(502, 0, 590, 610);
        pnlRight.setBackground(MAIN_COLOR);
        pnlMain.add(pnlRight);
        pnlRight.setLayout(null);

        // Medication Selection
        JPanel pnlMedicationSelection = new JPanel();
        pnlMedicationSelection.setBounds(0, 0, 477, 162);
        pnlMedicationSelection.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1),
            "Chọn thuốc nhập", TitledBorder.LEFT, TitledBorder.TOP,
            new Font("Arial", Font.BOLD, 16), TEXT_COLOR));
        pnlMedicationSelection.setBackground(MAIN_COLOR);
        pnlMedicationSelection.setLayout(null);
        pnlMedicationSelection.setPreferredSize(new Dimension(500, 200)); // Đặt kích thước cụ thể
        pnlRight.add(pnlMedicationSelection);

        JLabel lblTimKiemThuoc = new JLabel("Tìm kiếm thuốc:");
        lblTimKiemThuoc.setForeground(TEXT_COLOR);
        lblTimKiemThuoc.setFont(new Font("Arial", Font.PLAIN, 16));
        lblTimKiemThuoc.setBounds(10, 30, 150, 30);
        pnlMedicationSelection.add(lblTimKiemThuoc);

        txtTimKiemThuoc = new JTextField();
        txtTimKiemThuoc.setForeground(TEXT_COLOR);
        txtTimKiemThuoc.setFont(new Font("Arial", Font.PLAIN, 16));
        txtTimKiemThuoc.setBounds(160, 30, 300, 30);
        pnlMedicationSelection.add(txtTimKiemThuoc);

        JLabel lblThuoc = new JLabel("Thuốc:");
        lblThuoc.setForeground(TEXT_COLOR);
        lblThuoc.setFont(new Font("Arial", Font.PLAIN, 16));
        lblThuoc.setBounds(10, 70, 150, 30);
        pnlMedicationSelection.add(lblThuoc);

        cboThuoc = new JComboBox<>(new String[] {
            "T001 - Paracetamol 500mg", "T002 - Amoxicillin 500mg", "T003 - Omeprazole 20mg",
            "T004 - Vitamin C 1000mg", "T005 - Aspirin 81mg"
        });
        cboThuoc.setBackground(Color.WHITE);
        cboThuoc.setForeground(TEXT_COLOR);
        cboThuoc.setFont(new Font("Arial", Font.PLAIN, 16));
        cboThuoc.setBounds(160, 70, 300, 30);
        pnlMedicationSelection.add(cboThuoc);

        JLabel lblSoLuong = new JLabel("Số lượng nhập:");
        lblSoLuong.setForeground(TEXT_COLOR);
        lblSoLuong.setFont(new Font("Arial", Font.PLAIN, 16));
        lblSoLuong.setBounds(10, 110, 150, 30);
        pnlMedicationSelection.add(lblSoLuong);

        spinnerSoLuong = new JSpinner(new SpinnerNumberModel(1, 1, 1000, 1));
        spinnerSoLuong.getEditor().getComponent(0).setForeground(TEXT_COLOR);
        spinnerSoLuong.setFont(new Font("Arial", Font.PLAIN, 16));
        spinnerSoLuong.setBounds(160, 110, 100, 30);
        pnlMedicationSelection.add(spinnerSoLuong);

        // Medication Buttons
        JPanel pnlMedicationButtons = new JPanel();
        pnlMedicationButtons.setBounds(0, 161, 477, 83);
        pnlMedicationButtons.setBackground(MAIN_COLOR);
        pnlMedicationButtons.setLayout(null);
        pnlMedicationButtons.setPreferredSize(new Dimension(500, 60)); // Đặt kích thước cụ thể
        pnlRight.add(pnlMedicationButtons);
        
                JButton btnAddMedication = new JButton("Thêm thuốc nhập");
                btnAddMedication.setBounds(29, 10, 200, 40);
                pnlMedicationButtons.add(btnAddMedication);
                btnAddMedication.setBackground(new Color(254, 152, 65));
                btnAddMedication.setForeground(new Color(50, 20, 0));
                btnAddMedication.setFont(new Font("Arial", Font.BOLD, 16));
                
                        JButton btnRemoveMedication = new JButton("Xóa thuốc");
                        btnRemoveMedication.setBounds(252, 10, 200, 40);
                        pnlMedicationButtons.add(btnRemoveMedication);
                        btnRemoveMedication.setBackground(BUTTON_COLOR);
                        btnRemoveMedication.setForeground(BUTTON_TEXT_COLOR);
                        btnRemoveMedication.setFont(new Font("Arial", Font.BOLD, 16));
                        btnRemoveMedication.addActionListener(e -> removeMedicationFromTable());
                
                        // Event Handlers
                        btnAddMedication.addActionListener(e -> addMedicationToTable());

        // Medication Table
        JPanel pnlTable = new JPanel();
        pnlTable.setBounds(0, 243, 590, 367);
        pnlTable.setBackground(MAIN_COLOR);
        pnlTable.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1),
            "Danh sách thuốc nhập", TitledBorder.LEFT, TitledBorder.TOP,
            new Font("Arial", Font.BOLD, 16), TEXT_COLOR));
        pnlRight.add(pnlTable);

        modelThuoc = new DefaultTableModel(new Object[] {"STT", "Mã thuốc", "Tên thuốc", "Số lượng nhập", "Đơn giá", "Thành tiền"}, 0) {
            private static final long serialVersionUID = 1L;
            @Override
            public boolean isCellEditable(int row, int column) {
                return false;
            }
        };

        tableThuoc = new JTable(modelThuoc);
        tableThuoc.getTableHeader().setFont(new Font("Arial", Font.BOLD, 14));
        tableThuoc.getTableHeader().setBackground(TABLE_HEADER_COLOR);
        tableThuoc.getTableHeader().setForeground(TEXT_COLOR);
        pnlTable.setLayout(null);
        tableThuoc.setBackground(Color.WHITE);
        tableThuoc.setForeground(TEXT_COLOR);
        tableThuoc.setSelectionBackground(SELECTED_COLOR);
        tableThuoc.setRowHeight(30);
        tableThuoc.setFont(new Font("Arial", Font.PLAIN, 14));

        JScrollPane scrollThuoc = new JScrollPane(tableThuoc);
        scrollThuoc.setBounds(5, 21, 580, 341);
        scrollThuoc.setPreferredSize(new Dimension(500, 300));
        pnlTable.add(scrollThuoc);
        btnSave.addActionListener(e -> saveTransaction());
        btnClear.addActionListener(e -> clearForm());
        btnCancel.addActionListener(e -> cancelTransaction());
    }

    private void setInitialValues() {
        txtMaPhieu.setText("PN" + new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()));
        txtNgayGiaoDich.setText(new SimpleDateFormat("dd/MM/yyyy").format(new Date()));
    }

    private void addMedicationToTable() {
        String selectedThuoc = (String) cboThuoc.getSelectedItem();
        if (selectedThuoc == null || selectedThuoc.isEmpty()) {
            JOptionPane.showMessageDialog(this, "Vui lòng chọn thuốc!", "Lỗi", JOptionPane.ERROR_MESSAGE);
            return;
        }

        int soLuong = (int) spinnerSoLuong.getValue();
        if (soLuong <= 0) {
            JOptionPane.showMessageDialog(this, "Số lượng nhập phải lớn hơn 0!", "Lỗi", JOptionPane.ERROR_MESSAGE);
            return;
        }

        String[] parts = selectedThuoc.split(" - ");
        String maThuoc = parts[0];
        String tenThuoc = parts[1];

        double donGia = getDonGia(maThuoc);
        double thanhTien = soLuong * donGia;

        int existingRow = -1;
        for (int i = 0; i < modelThuoc.getRowCount(); i++) {
            if (modelThuoc.getValueAt(i, 1).equals(maThuoc)) {
                existingRow = i;
                break;
            }
        }

        DecimalFormat formatter = new DecimalFormat("#,###");
        if (existingRow >= 0) {
            int currentSoLuong = Integer.parseInt(modelThuoc.getValueAt(existingRow, 3).toString());
            int newSoLuong = currentSoLuong + soLuong;
            double newThanhTien = newSoLuong * donGia;
            modelThuoc.setValueAt(newSoLuong, existingRow, 3);
            modelThuoc.setValueAt(formatter.format(newThanhTien) + " VNĐ", existingRow, 5);
        } else {
            modelThuoc.addRow(new Object[] {
                modelThuoc.getRowCount() + 1, maThuoc, tenThuoc, soLuong,
                formatter.format(donGia) + " VNĐ", formatter.format(thanhTien) + " VNĐ"
            });
        }
        updateTotalAmount();
    }

    private void removeMedicationFromTable() {
        int selectedRow = tableThuoc.getSelectedRow();
        if (selectedRow == -1) {
            JOptionPane.showMessageDialog(this, "Vui lòng chọn thuốc cần xóa!", "Lỗi", JOptionPane.ERROR_MESSAGE);
            return;
        }
        modelThuoc.removeRow(selectedRow);
        for (int i = 0; i < modelThuoc.getRowCount(); i++) {
            modelThuoc.setValueAt(i + 1, i, 0);
        }
        updateTotalAmount();
    }

    private void updateTotalAmount() {
        double totalAmount = 0;
        for (int i = 0; i < modelThuoc.getRowCount(); i++) {
            String thanhTienStr = modelThuoc.getValueAt(i, 5).toString().replace(" VNĐ", "").replace(",", "");
            totalAmount += Double.parseDouble(thanhTienStr);
        }
        DecimalFormat formatter = new DecimalFormat("#,###");
        txtTongTien.setText(formatter.format(totalAmount) + " VNĐ");
    }

    private void saveTransaction() {
        if (modelThuoc.getRowCount() == 0) {
            JOptionPane.showMessageDialog(this, "Vui lòng thêm ít nhất một thuốc!", "Lỗi", JOptionPane.ERROR_MESSAGE);
            return;
        }
        if (txtNguoiGiao.getText().trim().isEmpty()) {
            JOptionPane.showMessageDialog(this, "Vui lòng nhập tên người giao!", "Lỗi", JOptionPane.ERROR_MESSAGE);
            return;
        }
        JOptionPane.showMessageDialog(this, "Đã lưu giao dịch nhập thuốc thành công!", "Thông báo", JOptionPane.INFORMATION_MESSAGE);
        clearForm();
    }

    private void clearForm() {
        setInitialValues();
        cboNhaCungCap.setSelectedIndex(0);
        txtNguoiGiao.setText("");
        txtGhiChu.setText("");
        cboHinhThucThanhToan.setSelectedIndex(0);
        modelThuoc.setRowCount(0);
        txtTongTien.setText("0 VNĐ");
    }

    private void cancelTransaction() {
        int option = JOptionPane.showConfirmDialog(this, "Bạn có chắc muốn hủy?", "Xác nhận", JOptionPane.YES_NO_OPTION);
        if (option == JOptionPane.YES_OPTION) {
            clearForm();
        }
    }

    private double getDonGia(String maThuoc) {
        switch (maThuoc) {
            case "T001": return 2000;
            case "T002": return 5000;
            case "T003": return 8000;
            case "T004": return 10000;
            case "T005": return 3000;
            default: return 0;
        }
    }

    public static void main(String[] args) {
        JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(1100, 700);
        frame.setContentPane(new Frame_GiaoDich_NhapThuoc());
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
    }
}