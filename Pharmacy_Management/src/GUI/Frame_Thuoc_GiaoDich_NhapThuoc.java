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
import java.util.List;

import javax.swing.BorderFactory;
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
import javax.swing.JTextField;
import javax.swing.SpinnerNumberModel;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;
import javax.swing.border.LineBorder;
import javax.swing.border.TitledBorder;
import javax.swing.table.DefaultTableModel;

import DAO.ThuocDAO;
import DAO.NhaCungCapDAO;

public class Frame_Thuoc_GiaoDich_NhapThuoc extends JPanel {
    private static final long serialVersionUID = 1L;
    private JTextField txtMaPhieu;
    private JTextField txtNgayGiaoDich;
    private JComboBox<String> cboNhaCungCap;
    private JTable tableThuoc;
    private DefaultTableModel modelThuoc;
    private JSpinner spinnerSoLuong;
    private JTextField txtTongTien;
    private JComboBox<String> cboHinhThucThanhToan;
    private JTextField txtTimKiemThuoc;
    private JComboBox<String> cboThuoc;
    private JTextField txtGia;
    private ThuocDAO thuocDAO = new ThuocDAO();
    private NhaCungCapDAO nhaCungCapDAO = new NhaCungCapDAO();
    private static final DecimalFormat df = new DecimalFormat("#,###");

    private final Color MAIN_COLOR = new Color(254, 222, 192);
    private final Color HEADER_COLOR = new Color(251, 203, 150);
    private final Color BUTTON_COLOR = new Color(249, 187, 118);
    private final Color BUTTON_TEXT_COLOR = new Color(121, 70, 13);
    private final Color TEXT_COLOR = new Color(100, 60, 20);
    private final Color PANEL_BORDER_COLOR = new Color(222, 184, 135);
    private final Color TABLE_HEADER_COLOR = new Color(251, 203, 150);
    private final Color SELECTED_COLOR = new Color(255, 239, 213);

    public Frame_Thuoc_GiaoDich_NhapThuoc() {
        initialize();
        setInitialValues();
        loadMedicationData();
        loadSupplierData();
    }

    private void initialize() {
        setBackground(MAIN_COLOR);
        setLayout(null);
        setPreferredSize(new Dimension(1550, 878));

        // Title Panel
        JPanel pnlTitle = new JPanel();
        pnlTitle.setBounds(0, 0, 1540, 60);
        pnlTitle.setBackground(HEADER_COLOR);
        add(pnlTitle);
        pnlTitle.setLayout(new BorderLayout());

        JLabel lblTitle = new JLabel("GIAO DỊCH NHẬP THUỐC");
        lblTitle.setHorizontalAlignment(SwingConstants.CENTER);
        lblTitle.setFont(new Font("Arial", Font.BOLD, 28));
        lblTitle.setForeground(TEXT_COLOR);
        pnlTitle.add(lblTitle, BorderLayout.CENTER);

        // Left Panel (Transaction Info and Medication Selection)
        JPanel pnlLeft = new JPanel();
        pnlLeft.setBounds(10, 70, 509, 798);
        pnlLeft.setBackground(MAIN_COLOR);
        pnlLeft.setLayout(null);
        add(pnlLeft);

        // Transaction Info
        JPanel pnlTransactionInfo = new JPanel();
        pnlTransactionInfo.setBounds(0, 0, 489, 240);
        pnlTransactionInfo.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1),
                "Thông tin giao dịch nhập thuốc", TitledBorder.LEFT, TitledBorder.TOP,
                new Font("Arial", Font.BOLD, 16), TEXT_COLOR));
        pnlTransactionInfo.setBackground(MAIN_COLOR);
        pnlTransactionInfo.setLayout(null);
        pnlLeft.add(pnlTransactionInfo);

        JLabel lblMaPhieu = new JLabel("Mã phiếu nhập:");
        lblMaPhieu.setForeground(TEXT_COLOR);
        lblMaPhieu.setFont(new Font("Arial", Font.PLAIN, 16));
        lblMaPhieu.setBounds(10, 30, 150, 30);
        pnlTransactionInfo.add(lblMaPhieu);

        txtMaPhieu = new JTextField();
        txtMaPhieu.setEditable(false);
        txtMaPhieu.setForeground(TEXT_COLOR);
        txtMaPhieu.setBackground(new Color(240, 240, 240));
        txtMaPhieu.setFont(new Font("Arial", Font.PLAIN, 16));
        txtMaPhieu.setBounds(160, 30, 319, 30);
        pnlTransactionInfo.add(txtMaPhieu);

        JLabel lblNgayGiaoDich = new JLabel("Ngày nhập:");
        lblNgayGiaoDich.setForeground(TEXT_COLOR);
        lblNgayGiaoDich.setFont(new Font("Arial", Font.PLAIN, 16));
        lblNgayGiaoDich.setBounds(10, 70, 150, 30);
        pnlTransactionInfo.add(lblNgayGiaoDich);

        txtNgayGiaoDich = new JTextField();
        txtNgayGiaoDich.setEditable(false);
        txtNgayGiaoDich.setForeground(TEXT_COLOR);
        txtNgayGiaoDich.setBackground(new Color(240, 240, 240));
        txtNgayGiaoDich.setFont(new Font("Arial", Font.PLAIN, 16));
        txtNgayGiaoDich.setBounds(160, 70, 319, 30);
        pnlTransactionInfo.add(txtNgayGiaoDich);

        JLabel lblNhaCungCap = new JLabel("Nhà cung cấp:");
        lblNhaCungCap.setForeground(TEXT_COLOR);
        lblNhaCungCap.setFont(new Font("Arial", Font.PLAIN, 16));
        lblNhaCungCap.setBounds(10, 110, 150, 30);
        pnlTransactionInfo.add(lblNhaCungCap);

        cboNhaCungCap = new JComboBox<>();
        cboNhaCungCap.setBackground(Color.WHITE);
        cboNhaCungCap.setForeground(TEXT_COLOR);
        cboNhaCungCap.setFont(new Font("Arial", Font.PLAIN, 16));
        cboNhaCungCap.setBounds(160, 110, 319, 30);
        pnlTransactionInfo.add(cboNhaCungCap);

        JLabel lblHinhThucThanhToan = new JLabel("Hình thức thanh toán:");
        lblHinhThucThanhToan.setForeground(TEXT_COLOR);
        lblHinhThucThanhToan.setFont(new Font("Arial", Font.PLAIN, 16));
        lblHinhThucThanhToan.setBounds(10, 150, 150, 30);
        pnlTransactionInfo.add(lblHinhThucThanhToan);

        cboHinhThucThanhToan = new JComboBox<>(new String[] {"Tiền mặt", "Chuyển khoản", "Công nợ"});
        cboHinhThucThanhToan.setBackground(Color.WHITE);
        cboHinhThucThanhToan.setForeground(TEXT_COLOR);
        cboHinhThucThanhToan.setFont(new Font("Arial", Font.PLAIN, 16));
        cboHinhThucThanhToan.setBounds(160, 150, 319, 30);
        pnlTransactionInfo.add(cboHinhThucThanhToan);

        // Total Amount
        JPanel pnlTotal = new JPanel();
        pnlTotal.setBackground(MAIN_COLOR);
        pnlTotal.setBounds(10, 190, 469, 40);
        pnlTransactionInfo.add(pnlTotal);
        pnlTotal.setLayout(null);

        JLabel lblTongTien = new JLabel("Tổng tiền:");
        lblTongTien.setBounds(0, 0, 91, 40);
        lblTongTien.setFont(new Font("Arial", Font.BOLD, 18));
        lblTongTien.setForeground(TEXT_COLOR);
        pnlTotal.add(lblTongTien);

        txtTongTien = new JTextField("0 VNĐ");
        txtTongTien.setBounds(91, 0, 368, 40);
        txtTongTien.setEditable(false);
        txtTongTien.setFont(new Font("Arial", Font.BOLD, 18));
        txtTongTien.setForeground(new Color(165, 42, 42));
        txtTongTien.setBackground(new Color(253, 245, 230));
        txtTongTien.setHorizontalAlignment(SwingConstants.RIGHT);
        pnlTotal.add(txtTongTien);

        // Action Buttons
        JPanel pnlActions = new JPanel();
        pnlActions.setBounds(0, 261, 489, 40);
        pnlLeft.add(pnlActions);
        pnlActions.setBackground(MAIN_COLOR);
        pnlActions.setLayout(null);

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
        btnClear.setBounds(168, 0, 153, 40);
        pnlActions.add(btnClear);

        JButton btnCancel = new JButton("Hủy");
        btnCancel.setBackground(BUTTON_COLOR);
        btnCancel.setForeground(BUTTON_TEXT_COLOR);
        btnCancel.setFont(new Font("Arial", Font.BOLD, 16));
        btnCancel.setBounds(336, 0, 153, 40);
        pnlActions.add(btnCancel);
        btnSave.addActionListener(e -> saveTransaction());
        btnClear.addActionListener(e -> clearForm());
        btnCancel.addActionListener(e -> cancelTransaction());

        // Medication Selection
        JPanel pnlMedicationSelection = new JPanel();
        pnlMedicationSelection.setBounds(0, 335, 489, 202);
        pnlMedicationSelection.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1),
                "Chọn thuốc nhập", TitledBorder.LEFT, TitledBorder.TOP,
                new Font("Arial", Font.BOLD, 16), TEXT_COLOR));
        pnlMedicationSelection.setBackground(MAIN_COLOR);
        pnlMedicationSelection.setLayout(null);
        pnlLeft.add(pnlMedicationSelection);

        JLabel lblTimKiemThuoc = new JLabel("Tìm kiếm thuốc:");
        lblTimKiemThuoc.setForeground(TEXT_COLOR);
        lblTimKiemThuoc.setFont(new Font("Arial", Font.PLAIN, 16));
        lblTimKiemThuoc.setBounds(10, 30, 150, 30);
        pnlMedicationSelection.add(lblTimKiemThuoc);

        txtTimKiemThuoc = new JTextField();
        txtTimKiemThuoc.setForeground(TEXT_COLOR);
        txtTimKiemThuoc.setFont(new Font("Arial", Font.PLAIN, 16));
        txtTimKiemThuoc.setBounds(160, 30, 233, 30);
        pnlMedicationSelection.add(txtTimKiemThuoc);

        JButton btnSearch = new JButton("Tìm");
        btnSearch.setBackground(BUTTON_COLOR);
        btnSearch.setForeground(BUTTON_TEXT_COLOR);
        btnSearch.setFont(new Font("Arial", Font.BOLD, 16));
        btnSearch.setBounds(403, 30, 80, 30);
        pnlMedicationSelection.add(btnSearch);

        JLabel lblThuoc = new JLabel("Thuốc:");
        lblThuoc.setForeground(TEXT_COLOR);
        lblThuoc.setFont(new Font("Arial", Font.PLAIN, 16));
        lblThuoc.setBounds(10, 70, 150, 30);
        pnlMedicationSelection.add(lblThuoc);

        cboThuoc = new JComboBox<>();
        cboThuoc.setBackground(Color.WHITE);
        cboThuoc.setForeground(TEXT_COLOR);
        cboThuoc.setFont(new Font("Arial", Font.PLAIN, 16));
        cboThuoc.setBounds(160, 70, 323, 30);
        pnlMedicationSelection.add(cboThuoc);
        cboThuoc.addActionListener(e -> updatePriceDisplay());

        JLabel lblGia = new JLabel("Giá:");
        lblGia.setForeground(TEXT_COLOR);
        lblGia.setFont(new Font("Arial", Font.PLAIN, 16));
        lblGia.setBounds(10, 110, 150, 30);
        pnlMedicationSelection.add(lblGia);

        txtGia = new JTextField("0 VNĐ");
        txtGia.setEditable(false);
        txtGia.setForeground(TEXT_COLOR);
        txtGia.setFont(new Font("Arial", Font.PLAIN, 16));
        txtGia.setBackground(new Color(240, 240, 240));
        txtGia.setBounds(160, 110, 323, 30);
        pnlMedicationSelection.add(txtGia);

        JLabel lblSoLuong = new JLabel("Số lượng nhập:");
        lblSoLuong.setForeground(TEXT_COLOR);
        lblSoLuong.setFont(new Font("Arial", Font.PLAIN, 16));
        lblSoLuong.setBounds(10, 150, 150, 30);
        pnlMedicationSelection.add(lblSoLuong);

        spinnerSoLuong = new JSpinner(new SpinnerNumberModel(1, 1, 1000, 1));
        spinnerSoLuong.getEditor().getComponent(0).setForeground(TEXT_COLOR);
        spinnerSoLuong.setFont(new Font("Arial", Font.PLAIN, 16));
        spinnerSoLuong.setBounds(160, 150, 100, 30);
        pnlMedicationSelection.add(spinnerSoLuong);

        // Medication Buttons
        JPanel pnlMedicationButtons = new JPanel();
        pnlMedicationButtons.setBounds(0, 545, 489, 40);
        pnlMedicationButtons.setBackground(MAIN_COLOR);
        pnlMedicationButtons.setLayout(null);
        pnlLeft.add(pnlMedicationButtons);

        JButton btnAddMedication = new JButton("Thêm thuốc nhập");
        btnAddMedication.setBackground(new Color(254, 152, 65));
        btnAddMedication.setForeground(new Color(50, 20, 0));
        btnAddMedication.setFont(new Font("Arial", Font.BOLD, 16));
        btnAddMedication.setBounds(10, 0, 200, 40);
        pnlMedicationButtons.add(btnAddMedication);

        JButton btnRemoveMedication = new JButton("Xóa thuốc");
        btnRemoveMedication.setBackground(BUTTON_COLOR);
        btnRemoveMedication.setForeground(BUTTON_TEXT_COLOR);
        btnRemoveMedication.setFont(new Font("Arial", Font.BOLD, 16));
        btnRemoveMedication.setBounds(243, 0, 200, 40);
        pnlMedicationButtons.add(btnRemoveMedication);

        // Right Panel (Medication Table)
        JPanel pnlRight = new JPanel();
        pnlRight.setBounds(529, 70, 1011, 798);
        pnlRight.setBackground(MAIN_COLOR);
        add(pnlRight);
        pnlRight.setLayout(null);

        // Medication Table
        JPanel pnlTable = new JPanel();
        pnlTable.setBounds(10, 10, 991, 778);
        pnlTable.setBackground(MAIN_COLOR);
        pnlTable.setBorder(new TitledBorder(new LineBorder(PANEL_BORDER_COLOR, 1),
                "Danh sách thuốc nhập", TitledBorder.LEFT, TitledBorder.TOP,
                new Font("Arial", Font.BOLD, 16), TEXT_COLOR));
        pnlRight.add(pnlTable);
        pnlTable.setLayout(null);

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
        tableThuoc.setBackground(Color.WHITE);
        tableThuoc.setForeground(TEXT_COLOR);
        tableThuoc.setSelectionBackground(SELECTED_COLOR);
        tableThuoc.setRowHeight(30);
        tableThuoc.setFont(new Font("Arial", Font.PLAIN, 14));

        JScrollPane scrollThuoc = new JScrollPane(tableThuoc);
        scrollThuoc.setBounds(10, 21, 971, 747);
        pnlTable.add(scrollThuoc);

        // Event Handlers
        btnAddMedication.addActionListener(e -> addMedicationToTable());
        btnRemoveMedication.addActionListener(e -> removeMedicationFromTable());
        btnSearch.addActionListener(e -> searchMedication());
    }

    private void setInitialValues() {
        String lastMaPN = thuocDAO.getLastMaPhieuNhap();
        String newMaPN = generateNextMaPN(lastMaPN);
        txtMaPhieu.setText(newMaPN);
        txtNgayGiaoDich.setText(new SimpleDateFormat("dd/MM/yyyy").format(new Date()));
    }

    private String generateNextMaPN(String lastMaPN) {
        if (lastMaPN == null || lastMaPN.isEmpty() || !lastMaPN.startsWith("PN")) {
            return "PN001";
        }
        String numPart = lastMaPN.substring(2);
        int num = Integer.parseInt(numPart) + 1;
        return String.format("PN%03d", num);
    }

    private void loadMedicationData() {
        List<Object[]> medications = thuocDAO.getAllThuoc();
        DefaultComboBoxModel<String> model = new DefaultComboBoxModel<>();
        for (Object[] med : medications) {
            String maThuoc = (String) med[0];
            String tenThuoc = (String) med[1];
            String donGiaStr = (String) med[3]; // donGiaNhap as String
            double donGia;
            try {
                donGia = Double.parseDouble(donGiaStr.replaceAll("[^\\d.]", ""));
            } catch (NumberFormatException e) {
                donGia = 0.0; // Fallback value
                e.printStackTrace();
            }
            model.addElement(maThuoc + " - " + tenThuoc + " (" + df.format(donGia) + " VNĐ)");
        }
        cboThuoc.setModel(model);
        updatePriceDisplay();
    }

    private void loadSupplierData() {
        List<Object[]> suppliers = nhaCungCapDAO.getAllNhaCungCap();
        DefaultComboBoxModel<String> model = new DefaultComboBoxModel<>();
        for (Object[] supplier : suppliers) {
            String maNCC = (String) supplier[0];
            String tenNCC = (String) supplier[1];
            model.addElement(maNCC + " - " + tenNCC);
        }
        cboNhaCungCap.setModel(model);
    }

    private void searchMedication() {
        String searchText = txtTimKiemThuoc.getText().trim();
        List<Object[]> results = thuocDAO.timKiemThuoc(searchText, searchText, "");
        DefaultComboBoxModel<String> model = new DefaultComboBoxModel<>();
        for (Object[] med : results) {
            String maThuoc = (String) med[0];
            String tenThuoc = (String) med[1];
            String donGiaStr = (String) med[3]; // donGiaNhap as String
            double donGia;
            try {
                donGia = Double.parseDouble(donGiaStr.replaceAll("[^\\d.]", ""));
            } catch (NumberFormatException e) {
                donGia = 0.0; // Fallback value
                e.printStackTrace();
            }
            model.addElement(maThuoc + " - " + tenThuoc + " (" + df.format(donGia) + " VNĐ)");
        }
        cboThuoc.setModel(model);
        updatePriceDisplay();
    }

    private void updatePriceDisplay() {
        String selectedThuoc = (String) cboThuoc.getSelectedItem();
        if (selectedThuoc != null && !selectedThuoc.isEmpty()) {
            String[] parts = selectedThuoc.split(" - ");
            String maThuoc = parts[0];
            double donGia = getDonGia(maThuoc);
            txtGia.setText(df.format(donGia) + " VNĐ");
        } else {
            txtGia.setText("0 VNĐ");
        }
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
        String tenThuoc = parts[1].split(" \\(")[0].trim();
        double donGia = getDonGia(maThuoc);
        double thanhTien = soLuong * donGia;

        int existingRow = -1;
        for (int i = 0; i < modelThuoc.getRowCount(); i++) {
            if (modelThuoc.getValueAt(i, 1).equals(maThuoc)) {
                existingRow = i;
                break;
            }
        }

        if (existingRow >= 0) {
            int currentSoLuong = Integer.parseInt(modelThuoc.getValueAt(existingRow, 3).toString());
            int newSoLuong = currentSoLuong + soLuong;
            double newThanhTien = newSoLuong * donGia;
            modelThuoc.setValueAt(newSoLuong, existingRow, 3);
            modelThuoc.setValueAt(df.format(newThanhTien) + " VNĐ", existingRow, 5);
        } else {
            modelThuoc.addRow(new Object[] {
                    modelThuoc.getRowCount() + 1, maThuoc, tenThuoc, soLuong,
                    df.format(donGia) + " VNĐ", df.format(thanhTien) + " VNĐ"
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
            String thanhTienStr = modelThuoc.getValueAt(i, 5).toString().replace(" VNĐ", "").replace(",", "").trim();
            try {
                double thanhTienValue = Double.parseDouble(thanhTienStr);
                totalAmount += thanhTienValue;
            } catch (NumberFormatException e) {
                System.err.println("Error parsing thanhTien at row " + i + ": " + thanhTienStr);
            }
        }
        txtTongTien.setText(df.format(totalAmount) + " VNĐ");
    }

    private void saveTransaction() {
        String maPN = txtMaPhieu.getText().trim();
        String ngayNhap = txtNgayGiaoDich.getText().trim();
        String maNCC = cboNhaCungCap.getSelectedItem() != null ? cboNhaCungCap.getSelectedItem().toString().split(" - ")[0] : "";
        String hinhThucThanhToan = (String) cboHinhThucThanhToan.getSelectedItem();
        double tongTien;
        try {
            String tongTienStr = txtTongTien.getText().replace(" VNĐ", "").replace(",", "").trim();
            tongTien = Double.parseDouble(tongTienStr);
        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(this, "Tổng tiền không hợp lệ", "Lỗi", JOptionPane.ERROR_MESSAGE);
            return;
        }

        int rowCount = modelThuoc.getRowCount();
        if (rowCount == 0) {
            JOptionPane.showMessageDialog(this, "Danh sách thuốc nhập trống!", "Lỗi", JOptionPane.ERROR_MESSAGE);
            return;
        }

        Object[][] chiTiet = new Object[rowCount][3];
        for (int i = 0; i < rowCount; i++) {
            chiTiet[i][0] = modelThuoc.getValueAt(i, 1); // maThuoc
            chiTiet[i][1] = Integer.parseInt(modelThuoc.getValueAt(i, 3).toString()); // soLuong
            String donGiaStr = modelThuoc.getValueAt(i, 4).toString().replace(" VNĐ", "").replace(",", "").trim();
            chiTiet[i][2] = Double.parseDouble(donGiaStr); // donGiaNhap
        }

        if (maPN.isEmpty() || ngayNhap.isEmpty() || maNCC.isEmpty()) {
            JOptionPane.showMessageDialog(this, "Vui lòng nhập đầy đủ thông tin phiếu nhập!", "Lỗi", JOptionPane.ERROR_MESSAGE);
            return;
        }

        try {
            if (thuocDAO.saveTransaction(maPN, ngayNhap, maNCC, hinhThucThanhToan, tongTien, chiTiet)) {
                JOptionPane.showMessageDialog(this, "Lưu phiếu nhập thành công!", "Thông báo", JOptionPane.INFORMATION_MESSAGE);
                clearForm();
            } else {
                JOptionPane.showMessageDialog(this, "Lưu phiếu nhập thất bại", "Lỗi", JOptionPane.ERROR_MESSAGE);
            }
        } catch (Exception e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(this, "Lỗi khi lưu phiếu nhập: " + e.getMessage(), "Lỗi", JOptionPane.ERROR_MESSAGE);
        }
    }

    private void clearForm() {
        setInitialValues();
        cboNhaCungCap.setSelectedIndex(0);
        cboHinhThucThanhToan.setSelectedIndex(0);
        modelThuoc.setRowCount(0);
        txtTongTien.setText("0 VNĐ");
        txtTimKiemThuoc.setText("");
        txtGia.setText("0 VNĐ");
        loadMedicationData();
    }

    private void cancelTransaction() {
        int option = JOptionPane.showConfirmDialog(this, "Bạn có chắc muốn hủy?", "Xác nhận", JOptionPane.YES_NO_OPTION);
        if (option == JOptionPane.YES_OPTION) {
            clearForm();
        }
    }

    private double getDonGia(String maThuoc) {
        List<Object[]> medications = thuocDAO.getAllThuoc();
        for (Object[] med : medications) {
            if (((String) med[0]).equals(maThuoc)) {
                String donGiaStr = (String) med[3]; // donGiaNhap as String
                try {
                    return Double.parseDouble(donGiaStr.replaceAll("[^\\d.]", ""));
                } catch (NumberFormatException e) {
                    return 0.0;
                }
            }
        }
        return 0;
    }

}