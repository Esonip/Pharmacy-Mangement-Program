package GUI;

import java.awt.*;
import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.InputEvent;
import java.awt.event.KeyEvent;

public class FrameTrangChu extends JFrame {

	private static final long serialVersionUID = 1L;
	private FrameQuanLyKhachHang frameQLKH;
	private FrameQuanLySanPham frameQLSP;
	private FrameTaoHoaDon frameTHD;
	private FrameQuanLyNhanVien frameQLNV;
	private FrameDanhSachHoaDon frameDSHD;
	private FrameThongTin frameTT;
	private FrameChinhSuaThongTin frameCSTT;
	private FrameThongKeSanPham frameTKSP;
	private FrameThongKeKhachHang frameTKKH;
	private FrameThongKeDoanhThu frameTKDT;
	public String maNV, chucVu;
	/**
	 * Launch the application.
	 */
//	public static void main(String[] args) {
//		EventQueue.invokeLater(new Runnable() {
//			public void run() {
//				try {
//					FrameTrangChu frame = new FrameTrangChu(maNV, chucVu);
//					frame.setVisible(true);
//				} catch (Exception e) {
//					e.printStackTrace();
//				}
//			}
//		});
//	}

	/**
	 * Create the frame.
	 */
	public FrameTrangChu(String maNV, String chucVu) {
		setFont(new Font("Segoe UI Black", Font.BOLD, 13));
		setIconImage(Toolkit.getDefaultToolkit().getImage("icon\\pharmacy.png"));
		setTitle("Hệ Thống Quản Lý Hiệu Thuốc Tây");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 1003, 630);
		setLocationRelativeTo(null);
		this.setExtendedState(JFrame.MAXIMIZED_BOTH);
		getContentPane().setLayout(new BorderLayout(0, 0));
		
		JLabel btnThongKeSanPham = new JLabel("");
		btnThongKeSanPham.setIcon(new ImageIcon("image\\BG_Dashboard.jpg"));
		getContentPane().add(btnThongKeSanPham);
		
		JMenuBar menuBar = new JMenuBar();
		getContentPane().add(menuBar, BorderLayout.NORTH);
		menuBar.setBackground(new Color(192, 192, 192));
		
		JMenu btnHeThong = new JMenu("Hệ Thống");
		btnHeThong.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnHeThong.setIcon(new ImageIcon("icon\\system.png"));
		menuBar.add(btnHeThong);
		
		JMenuItem btnTrangChu = new JMenuItem("Trang Chủ");
		btnTrangChu.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnTrangChu.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
		        getContentPane().add(btnThongKeSanPham, BorderLayout.CENTER);
		        revalidate();
		        repaint();
			}
		});
		btnTrangChu.setIcon(new ImageIcon("icon\\homepage.png"));
		btnHeThong.add(btnTrangChu);
		
		JMenuItem btnDangXuat = new JMenuItem("Đăng Xuất");
		btnDangXuat.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnDangXuat.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				int a = JOptionPane.showConfirmDialog(FrameTrangChu.this, "Bạn có muốn đăng xuất ứng dụng không?", "Lựa chọn", JOptionPane.YES_NO_OPTION);
		        if (a == JOptionPane.YES_OPTION) {
		        	dispose();
			        FrameDangNhap Framelogin = new FrameDangNhap();
			        Framelogin.setVisible(true); 
		        }
				
			}
		});
		btnDangXuat.setIcon(new ImageIcon("icon\\signout.png"));
		btnHeThong.add(btnDangXuat);
		
		JMenuItem btnThoat = new JMenuItem("Thoát");
		btnThoat.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnThoat.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				int a = JOptionPane.showConfirmDialog(FrameTrangChu.this, "Bạn có muốn thoát ứng dụng không?", "Lựa chọn", JOptionPane.YES_NO_OPTION);
		        if (a == JOptionPane.YES_OPTION) {
		        	dispose();
		        }
			}
		});
		btnThoat.setIcon(new ImageIcon("icon\\exit.png"));
		btnHeThong.add(btnThoat);
		
		JMenu btnDanhMuc = new JMenu("Danh Mục");
		btnDanhMuc.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnDanhMuc.setIcon(new ImageIcon("icon\\catalog.png"));
		menuBar.add(btnDanhMuc);
		
		JMenuItem btnKhachHang = new JMenuItem("Khách Hàng");
		btnKhachHang.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnKhachHang.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				frameQLKH = new FrameQuanLyKhachHang();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frameQLKH, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		
		btnKhachHang.setIcon(new ImageIcon("icon\\QL_customer.png"));
		btnDanhMuc.add(btnKhachHang);
		
		JMenuItem btnNhanVien = new JMenuItem("Nhân Viên");
		btnNhanVien.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnNhanVien.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				frameQLNV = new FrameQuanLyNhanVien();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frameQLNV, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		btnNhanVien.setIcon(new ImageIcon("icon\\QL_employee.png"));
		btnDanhMuc.add(btnNhanVien);
		
		JMenuItem btnSanPham = new JMenuItem("Sản phẩm");
		btnSanPham.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnSanPham.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				frameQLSP = new FrameQuanLySanPham();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frameQLSP, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		btnSanPham.setIcon(new ImageIcon("icon\\QL_product.png"));
		btnDanhMuc.add(btnSanPham);
		
		JMenuItem btnDanhSachHoaDon = new JMenuItem("Hóa Đơn");
		btnDanhSachHoaDon.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnDanhSachHoaDon.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				frameDSHD = new FrameDanhSachHoaDon();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frameDSHD, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		btnDanhSachHoaDon.setIcon(new ImageIcon("icon\\QL_bill.png"));
		btnDanhMuc.add(btnDanhSachHoaDon);
		
		JMenu btnXuLy = new JMenu("Xử Lý");
		btnXuLy.setFont(new Font("Segoe UI", Font.BOLD, 13));
		menuBar.add(btnXuLy);
		btnXuLy.setIcon(new ImageIcon("icon\\process.png"));
		
		JMenuItem btnTaoHoaDon = new JMenuItem("Tạo Hóa Đơn");
		btnTaoHoaDon.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnTaoHoaDon.setIcon(new ImageIcon("icon\\XL_bill.png"));
		btnTaoHoaDon.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				frameTHD = new FrameTaoHoaDon();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frameTHD, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		
		JMenuItem btnChinhSua = new JMenuItem("Thông Tin Cá Nhân");
		btnXuLy.add(btnChinhSua);
		btnChinhSua.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnChinhSua.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				frameCSTT = new FrameChinhSuaThongTin(maNV);
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frameCSTT, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		btnChinhSua.setIcon(new ImageIcon("icon\\XL_personal.png"));
		btnXuLy.add(btnTaoHoaDon);
		
		JMenuItem btnDonDatHang = new JMenuItem("Tạo Đơn Đặt Hàng");
		btnDonDatHang.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnDonDatHang.setIcon(new ImageIcon("icon\\XL_orders.png"));
		btnXuLy.add(btnDonDatHang);
		
		JMenu btnThongKe = new JMenu("Thống Kê");
		btnThongKe.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnThongKe.setIcon(new ImageIcon("icon\\static.png"));
		menuBar.add(btnThongKe);
		
		JMenuItem btnThongKeDoanhThu = new JMenuItem("Doanh thu");
		btnThongKeDoanhThu.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnThongKeDoanhThu.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				frameTKDT = new FrameThongKeDoanhThu();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frameTKDT, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		btnThongKeDoanhThu.setIcon(new ImageIcon("icon\\static_revenue.png"));
		btnThongKe.add(btnThongKeDoanhThu);
		
		JMenuItem btnThongKeKhachHang = new JMenuItem("Khách hàng");
		btnThongKeKhachHang.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnThongKeKhachHang.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				frameTKKH = new FrameThongKeKhachHang();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frameTKKH, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		btnThongKeKhachHang.setIcon(new ImageIcon("icon\\static_customer.png"));
		btnThongKe.add(btnThongKeKhachHang);
		
		JMenuItem mntmNewMenuItem_8 = new JMenuItem("Sản phẩm");
		mntmNewMenuItem_8.setFont(new Font("Segoe UI", Font.BOLD, 13));
		mntmNewMenuItem_8.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				frameTKSP = new FrameThongKeSanPham();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frameTKSP, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		mntmNewMenuItem_8.setIcon(new ImageIcon("icon\\static_product.png"));
		btnThongKe.add(mntmNewMenuItem_8);
		
		JMenu btnInfo = new JMenu("Thông Tin");
		btnInfo.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnInfo.setIcon(new ImageIcon("icon\\info.png"));
		menuBar.add(btnInfo);
		
		JMenuItem btnThongTin = new JMenuItem("Thông tin phần mềm");
		btnThongTin.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnThongTin.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				frameTT = new FrameThongTin();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frameTT, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		btnThongTin.setIcon(new ImageIcon("icon\\info_phanmem.png"));
		btnInfo.add(btnThongTin);
		
		JMenuItem btnDuongDan = new JMenuItem("Đường dẫn");
		btnDuongDan.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnDuongDan.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try {
					Desktop.getDesktop().browse(java.net.URI.create("https://github.com/Esonip/Pharmacy-Mangement-Program"));
				} catch (Exception ex) {
					// TODO: handle exception
					ex.printStackTrace();
				}
			}
		});
		btnDuongDan.setIcon(new ImageIcon("icon\\link.png"));
		btnInfo.add(btnDuongDan);
		
		JMenu btnTroGiup = new JMenu("Trợ Giúp");
		btnTroGiup.setIcon(new ImageIcon("icon\\help.png"));
		btnTroGiup.setFont(new Font("Segoe UI", Font.BOLD, 13));
		menuBar.add(btnTroGiup);
		
		JMenuItem btnHDSD = new JMenuItem("Hướng dẫn sử dụng");
		btnHDSD.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnHDSD.setIcon(new ImageIcon("icon\\guidelines.png"));
		btnTroGiup.add(btnHDSD);
		
		JPanel panel = new JPanel();
		panel.setBackground(new Color(255, 255, 255));
		menuBar.add(panel);
		panel.setLayout(null);
		
		JLabel lblUsername = new JLabel(chucVu + " | " + maNV);
		lblUsername.setFont(new Font("Segoe UI", Font.BOLD, 13));
		if ("Nhân Viên".equals(chucVu))
			lblUsername.setIcon(new ImageIcon("icon\\employee.png"));
		else
			lblUsername.setIcon(new ImageIcon("icon\\manager.png"));
		lblUsername.setBounds(733, 0, 188, 39);
		panel.add(lblUsername);
		
		if ("Nhân Viên".equals(chucVu)) {
	        btnNhanVien.setEnabled(false);
	    }
		
		themPhimTatClose();
		
		this.setVisible(true);
	}
	
	private void themPhimTatClose() {
        // Lấy InputMap và ActionMap từ JFrame
        InputMap inputMap = getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW);
        ActionMap actionMap = getRootPane().getActionMap();

        // Định nghĩa phím tắt Ctrl + W
        KeyStroke ctrlW = KeyStroke.getKeyStroke(KeyEvent.VK_W, InputEvent.CTRL_DOWN_MASK);

        // Gắn phím tắt với một hành động
        inputMap.put(ctrlW, "close");
        actionMap.put("close", new AbstractAction() {
            @Override
            public void actionPerformed(ActionEvent e) {
                // Thoát chương trình
                System.exit(0);
            }
        });
    }
}
