# BaiTap5
Nguyễn Tiến Thắng_K225480106058

BÀI TẬP VỀ NHÀ 05, Môn Hệ quản trị csdl.

SUBJECT: Trigger on mssql

# A. Trình bày lại đầu bài của đồ án PT&TKHT:
1. Mô tả bài toán của đồ án PT&TKHT, 
   đưa ra yêu cầu của bài toán đó
2. Cơ sở dữ liệu của Đồ án PT&TKHT :
   Có database với các bảng dữ liệu cần thiết (3nf),
   Các bảng này đã có PK, FK, CK cần thiết
 
# B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.
  # BÀI LÀM
  # NỘI DUNG A
DATABASE VÀ CÁC BẢNG.
 ChiTietDonHang( số hóa đơn khóa chính )
 ![image](https://github.com/user-attachments/assets/19068781-a070-42be-80e8-4c12d4a85c00)

DONDATHANG ( Pk là soHoaDon)

![image](https://github.com/user-attachments/assets/83c43a22-c7b5-4d8f-89b3-8a977e426981)

KHACHHANG ( pk là maKhachhang)
![image](https://github.com/user-attachments/assets/e4614511-fa14-4a29-ab3f-a305f65790fe)



LOAIHANG (pk maLoaihang)

![image](https://github.com/user-attachments/assets/c1767d0d-c59a-47e9-9ed9-2179a4a38b86)

MATHANG( pk mahang)
![image](https://github.com/user-attachments/assets/5b52f467-1b28-4fce-9e58-640e7da4c07e)

NHACUNGCAP (pk maNhaCC)
![image](https://github.com/user-attachments/assets/731cf3bc-fa9d-4e3c-9526-f6be486a333b)

NHANVIEN( PK maNhanVien)
![image](https://github.com/user-attachments/assets/e961f5a8-d9ab-4c1b-8a02-584afe725017)

SUKIEN ( Pk maSukien)
![image](https://github.com/user-attachments/assets/eeefc732-1cf0-4448-8682-177991193c4a)

THANHTOAN ( PK maHinhThucThanhToan)
![image](https://github.com/user-attachments/assets/972c1b51-a875-4007-b27a-32a15a980279)

2 Khóa ngoại (FK và Ck )
Liên kết bảng DONDATHANG VA CHITIETHOADON = SoHoaDon
![image](https://github.com/user-attachments/assets/6cda8c6f-32c8-414d-8961-6d5aa3e1d1c1)

liên kết MAHANG VÀ CHITIETDONHANG = maHang
![image](https://github.com/user-attachments/assets/051ccfb5-ae2b-4add-bc4c-cbada30bbbf0)

Liên kết KHACHHANG VA  DONDATHANG =maKhachHang
![image](https://github.com/user-attachments/assets/64c248a4-a684-45eb-9abf-8e5c2e0337d1)

Lien Kết  LOAiHANG VA  MATHANG= maLoaiHang 
![image](https://github.com/user-attachments/assets/19c5239a-a95e-4d49-9d0b-2168c376901f)

Liên kết THANHTOAN VA DONDATHANG =mahinhThucThanhToan
![image](https://github.com/user-attachments/assets/7d59046e-379d-4f9f-b21e-715d1040f7d0)



# NỘI DUNG B


 



  
