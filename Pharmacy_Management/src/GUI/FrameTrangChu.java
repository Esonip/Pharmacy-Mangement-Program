package GUI;

import java.awt.*;
import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.InputEvent;
import java.awt.event.KeyEvent;

public class FrameTrangChu extends JFrame {

	private static final long serialVersionUID = 1L;
	private Frame_Thuoc_DanhMucThuoc frame_Thuoc_DanhMucThuoc;
	private Frame_Thuoc_ThietLapGia frame_Thuoc_ThietLapGia;
	private Frame_Thuoc_KiemKho frame_Thuoc_KiemKho;
	
	private Frame_GiaoDich_BanThuoc frameTHD;
	private Frame_GiaoDich_HoaDon frame_GiaoDich_HoaDon;
	private Frame_GiaoDich_TraThuoc frame_GiaoDich_TraThuoc;
	private Frame_GiaoDich_NhapThuoc frame_GiaoDich_NhapThuoc;
	private Frame_GiaoDich_TraNhapThuoc frame_GiaoDich_TraNhapThuoc;
	
	private Frame_DoiTac_KhachHang frame_DoiTac_KhachHang;
	private Frame_DoiTac_NhaCungCap frame_DoiTac_NhaCungCap;
	
	private Frame_NhanVien_DanhSachNhanVien frame_NhanVien_DanhSachNhanVien;
	private Frame_NhanVien_LichLamViec frame_NhanVien_LichLamViec;
	private Frame_NhanVien_ChamCong frame_NhanVien_ChamCong;
	private Frame_NhanVien_BangLuong frame_NhanVien_BangLuong;
	
	private Frame_ThongKe_SanPham frame_ThongKe_SanPham;
	private Frame_ThongKe_KhachHang frame_ThongKe_KhachHang;
	private Frame_ThongKe_DoanhThu frame_ThongKe_DoanhThu;
	
	private Frame_SoQuy frame_SoQuy;
	
	private Frame_PhanMem_TTPM frame_PhanMem_TTPM;
	
	private Frame_TroGiup_HuongDanSuDung frame_TroGiup_HDSD;
	
	public String maNV, chucVu;
	private JMenuBar menuBar;
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
		setFont(new Font("Segoe UI", Font.BOLD, 13));
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
		
		menuBar = new JMenuBar();
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
				resetMenuColors();
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
		
		JMenu btnThuoc = new JMenu("Thuốc");
		btnThuoc.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnThuoc.setIcon(new ImageIcon("icon\\medicine.png"));
		menuBar.add(btnThuoc);
		
		JMenuItem btn_Thuoc_DanhMucThuoc = new JMenuItem("Danh Mục Thuốc");
		btnThuoc.add(btn_Thuoc_DanhMucThuoc);
		btn_Thuoc_DanhMucThuoc.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btn_Thuoc_DanhMucThuoc.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				resetMenuColors();
	            btnThuoc.setForeground(Color.RED);
	            frame_Thuoc_DanhMucThuoc = new Frame_Thuoc_DanhMucThuoc();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frame_Thuoc_DanhMucThuoc, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		btn_Thuoc_DanhMucThuoc.setIcon(new ImageIcon("icon\\catalog.png"));
		
		JMenuItem btn_Thuoc_ThietLapGia = new JMenuItem("Thiết Lập Giá");
		btn_Thuoc_ThietLapGia.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				resetMenuColors();
				btnThuoc.setForeground(Color.RED);
				frame_Thuoc_ThietLapGia = new Frame_Thuoc_ThietLapGia();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frame_Thuoc_ThietLapGia, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		btn_Thuoc_ThietLapGia.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btn_Thuoc_ThietLapGia.setIcon(new ImageIcon("icon\\price.png"));
		btnThuoc.add(btn_Thuoc_ThietLapGia);
		
		JMenuItem btn_Thuoc_KiemKho = new JMenuItem("Kiểm Kho");
		btn_Thuoc_KiemKho.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				resetMenuColors();
				btnThuoc.setForeground(Color.RED);
				frame_Thuoc_KiemKho = new Frame_Thuoc_KiemKho();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frame_Thuoc_KiemKho, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		btn_Thuoc_KiemKho.setIcon(new ImageIcon("icon\\check_list.png"));
		btn_Thuoc_KiemKho.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnThuoc.add(btn_Thuoc_KiemKho);
		
		JMenu btnGiaoDich = new JMenu("Giao Dịch");
		btnGiaoDich.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnGiaoDich.setIcon(new ImageIcon("icon\\transaction.png"));
		menuBar.add(btnGiaoDich);
		
		JMenuItem btn_GiaoDich_HoaDon = new JMenuItem("Hóa Đơn");
		btn_GiaoDich_HoaDon.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btn_GiaoDich_HoaDon.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				resetMenuColors();
				btnGiaoDich.setForeground(Color.RED);
				frame_GiaoDich_HoaDon = new Frame_GiaoDich_HoaDon();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frame_GiaoDich_HoaDon, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		
		JMenuItem btn_GiaoDich_BanThuoc = new JMenuItem("Bán Thuốc");
		btn_GiaoDich_BanThuoc.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				resetMenuColors();
				btnGiaoDich.setForeground(Color.RED);
				frameTHD = new Frame_GiaoDich_BanThuoc();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frameTHD, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		
		JMenuItem btnDatThuoc = new JMenuItem("Đặt Thuốc");
		btnDatThuoc.setIcon(new ImageIcon("icon\\XL_orders.png"));
		btnDatThuoc.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnGiaoDich.add(btnDatThuoc);
		btn_GiaoDich_BanThuoc.setIcon(new ImageIcon("icon\\sell.png"));
		btn_GiaoDich_BanThuoc.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnGiaoDich.add(btn_GiaoDich_BanThuoc);
		btn_GiaoDich_HoaDon.setIcon(new ImageIcon("icon\\bill.png"));
		btnGiaoDich.add(btn_GiaoDich_HoaDon);
		
		JMenuItem btn_GiaoDich_TraThuoc = new JMenuItem("Trả Thuốc");
		btnGiaoDich.add(btn_GiaoDich_TraThuoc);
		btn_GiaoDich_TraThuoc.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btn_GiaoDich_TraThuoc.setIcon(new ImageIcon("icon\\return.png"));
		btn_GiaoDich_TraThuoc.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				resetMenuColors();
				btnGiaoDich.setForeground(Color.RED);
				frame_GiaoDich_TraThuoc = new Frame_GiaoDich_TraThuoc();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frame_GiaoDich_TraThuoc, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		
		JMenuItem btn_GiaoDich_NhapThuoc = new JMenuItem("Nhập Thuốc");
		btn_GiaoDich_NhapThuoc.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				resetMenuColors();
				btnGiaoDich.setForeground(Color.RED);
				frame_GiaoDich_NhapThuoc = new Frame_GiaoDich_NhapThuoc();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frame_GiaoDich_NhapThuoc, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		btnGiaoDich.add(btn_GiaoDich_NhapThuoc);
		btn_GiaoDich_NhapThuoc.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btn_GiaoDich_NhapThuoc.setIcon(new ImageIcon("icon\\import_goods.png"));
		
		JMenuItem btn_GiaoDich_TraNhapThuoc = new JMenuItem("Trả Nhập Thuốc");
		btn_GiaoDich_TraNhapThuoc.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				resetMenuColors();
				btnGiaoDich.setForeground(Color.RED);
				frame_GiaoDich_TraNhapThuoc = new Frame_GiaoDich_TraNhapThuoc();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frame_GiaoDich_TraNhapThuoc, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		btn_GiaoDich_TraNhapThuoc.setIcon(new ImageIcon("icon\\return_goods.png"));
		btn_GiaoDich_TraNhapThuoc.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnGiaoDich.add(btn_GiaoDich_TraNhapThuoc);
		
		JMenu btnDoiTac = new JMenu("Đối Tác");
		btnDoiTac.setIcon(new ImageIcon("icon\\partner.png"));
		btnDoiTac.setFont(new Font("Segoe UI", Font.BOLD, 13));
		menuBar.add(btnDoiTac);
		
		JMenuItem btn_DoiTac_KhachHang = new JMenuItem("Khách Hàng");
		btnDoiTac.add(btn_DoiTac_KhachHang);
		btn_DoiTac_KhachHang.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btn_DoiTac_KhachHang.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				resetMenuColors();
				btnDoiTac.setForeground(Color.RED);
				frame_DoiTac_KhachHang = new Frame_DoiTac_KhachHang();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frame_DoiTac_KhachHang, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		
		btn_DoiTac_KhachHang.setIcon(new ImageIcon("icon\\customer.png"));
		
		JMenuItem btn_DoiTac_NCC = new JMenuItem("Nhà Cung Cấp");
		btn_DoiTac_NCC.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				resetMenuColors();
				btnDoiTac.setForeground(Color.RED);
				frame_DoiTac_NhaCungCap = new Frame_DoiTac_NhaCungCap();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frame_DoiTac_NhaCungCap, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		btn_DoiTac_NCC.setIcon(new ImageIcon("icon\\supplier.png"));
		btn_DoiTac_NCC.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnDoiTac.add(btn_DoiTac_NCC);
		
		JMenu btnNhanVien = new JMenu("Nhân Viên");
		btnNhanVien.setIcon(new ImageIcon("icon\\nv.png"));
		btnNhanVien.setFont(new Font("Segoe UI", Font.BOLD, 13));
		menuBar.add(btnNhanVien);
		
		JMenuItem btn_NV_DSNV = new JMenuItem("Nhân Viên");
		btnNhanVien.add(btn_NV_DSNV);
		btn_NV_DSNV.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btn_NV_DSNV.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				resetMenuColors();
				btnNhanVien.setForeground(Color.RED);
				frame_NhanVien_DanhSachNhanVien = new Frame_NhanVien_DanhSachNhanVien();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frame_NhanVien_DanhSachNhanVien, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		btn_NV_DSNV.setIcon(new ImageIcon("icon\\category.png"));
		
		JMenuItem btn_NV_LichLamViec = new JMenuItem("Lịch làm việc");
		btn_NV_LichLamViec.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				resetMenuColors();
				btnNhanVien.setForeground(Color.RED);
				frame_NhanVien_LichLamViec = new Frame_NhanVien_LichLamViec();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frame_NhanVien_LichLamViec, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		btn_NV_LichLamViec.setIcon(new ImageIcon("icon\\schedule.png"));
		btn_NV_LichLamViec.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnNhanVien.add(btn_NV_LichLamViec);
		
		JMenuItem btn_NV_ChamCong = new JMenuItem("Chấm Công");
		btn_NV_ChamCong.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				resetMenuColors();
				btnNhanVien.setForeground(Color.RED);
				frame_NhanVien_ChamCong = new Frame_NhanVien_ChamCong();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frame_NhanVien_ChamCong, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		btn_NV_ChamCong.setIcon(new ImageIcon("icon\\timeskeeping.png"));
		btn_NV_ChamCong.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnNhanVien.add(btn_NV_ChamCong);
		
		JMenuItem btn_NV_BangLuong = new JMenuItem("Bảng Lương");
		btn_NV_BangLuong.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				resetMenuColors();
				btnNhanVien.setForeground(Color.RED);
				frame_NhanVien_BangLuong = new Frame_NhanVien_BangLuong();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frame_NhanVien_BangLuong, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		btn_NV_BangLuong.setIcon(new ImageIcon("icon\\payroll.png"));
		btn_NV_BangLuong.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnNhanVien.add(btn_NV_BangLuong);
		
		JMenu btn_SoQuy = new JMenu("Sổ Quỹ");
		btn_SoQuy.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				resetMenuColors();
				btn_SoQuy.setForeground(Color.RED);
				frame_SoQuy = new Frame_SoQuy();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frame_SoQuy, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		btn_SoQuy.setFont(new Font("Segoe UI", Font.BOLD, 13));
		menuBar.add(btn_SoQuy);
		btn_SoQuy.setIcon(new ImageIcon("icon\\cash_book.png"));
		
		JMenu btnThongKe = new JMenu("Thống Kê");
		btnThongKe.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnThongKe.setIcon(new ImageIcon("icon\\static.png"));
		menuBar.add(btnThongKe);
		
		JMenuItem btnThongKeDoanhThu = new JMenuItem("Doanh thu");
		btnThongKeDoanhThu.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnThongKeDoanhThu.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				resetMenuColors();
				btnThongKe.setForeground(Color.RED);
				frame_ThongKe_DoanhThu = new Frame_ThongKe_DoanhThu();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frame_ThongKe_DoanhThu, BorderLayout.CENTER);
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
				resetMenuColors();
				btnThongKe.setForeground(Color.RED);
				frame_ThongKe_KhachHang = new Frame_ThongKe_KhachHang();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frame_ThongKe_KhachHang, BorderLayout.CENTER);
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
				resetMenuColors();
				btnThongKe.setForeground(Color.RED);
				frame_ThongKe_SanPham = new Frame_ThongKe_SanPham();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frame_ThongKe_SanPham, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		mntmNewMenuItem_8.setIcon(new ImageIcon("icon\\static_product.png"));
		btnThongKe.add(mntmNewMenuItem_8);
		
		JMenu btnPhanMem = new JMenu("Phần Mềm");
		btnPhanMem.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnPhanMem.setIcon(new ImageIcon("icon\\info.png"));
		menuBar.add(btnPhanMem);
		
		JMenuItem btnThongTin = new JMenuItem("Thông tin phần mềm");
		btnThongTin.setFont(new Font("Segoe UI", Font.BOLD, 13));
		btnThongTin.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				resetMenuColors();
				btnPhanMem.setForeground(Color.RED);
				frame_PhanMem_TTPM = new Frame_PhanMem_TTPM();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frame_PhanMem_TTPM, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
		btnThongTin.setIcon(new ImageIcon("icon\\info_phanmem.png"));
		btnPhanMem.add(btnThongTin);
		
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
		btnPhanMem.add(btnDuongDan);
		
		JMenu btnTroGiup = new JMenu("Trợ Giúp");
		btnTroGiup.setIcon(new ImageIcon("icon\\help.png"));
		btnTroGiup.setFont(new Font("Segoe UI", Font.BOLD, 13));
		menuBar.add(btnTroGiup);
		
		JMenuItem btnHDSD = new JMenuItem("Hướng dẫn sử dụng");
		btnHDSD.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				resetMenuColors();
				btnTroGiup.setForeground(Color.RED);
				frame_TroGiup_HDSD = new Frame_TroGiup_HuongDanSuDung();
				getContentPane().removeAll();
				getContentPane().add(menuBar, BorderLayout.NORTH);
				getContentPane().add(frame_TroGiup_HDSD, BorderLayout.CENTER);
				revalidate();
				repaint();
			}
		});
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
		lblUsername.setBounds(416, 0, 255, 39);
		panel.add(lblUsername);
		
		if ("Nhân Viên".equals(chucVu)) {
			btnNhanVien.setEnabled(false);
			btnThuoc.setEnabled(false);
			btnThongKe.setEnabled(false);
			btn_DoiTac_NCC.setEnabled(false);
			btn_GiaoDich_NhapThuoc.setEnabled(false);
			btn_GiaoDich_TraNhapThuoc.setEnabled(false);
			btn_SoQuy.setEnabled(false);
	    }
		
		themPhimTatClose();
		
		this.setVisible(true);
	}
	
	@SuppressWarnings("serial")
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
            	int a = JOptionPane.showConfirmDialog(FrameTrangChu.this, "Bạn có muốn thoát ứng dụng không?", "Lựa chọn", JOptionPane.YES_NO_OPTION);
		        if (a == JOptionPane.YES_OPTION) {
		        	dispose();
		        }
            }
        });
    }
	
	// Hàm reset màu chữ của menu
	@SuppressWarnings("unused")
	private void resetMenuColors() {
	    Component[] components = menuBar.getComponents();
	    for (Component comp : components) {
	        if (comp instanceof JMenu) {
	            ((JMenu) comp).setForeground(Color.BLACK); // Màu mặc định
	        }
	    }
	}
}
