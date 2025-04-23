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

ChiTietHoaDon ( pk
![image](https://github.com/user-attachments/assets/e8d876a7-f431-45b1-b243-115cf7a2a276)

HoaDon ( pk là MaHD)

![image](https://github.com/user-attachments/assets/7f8da71d-79d6-44b0-b834-c093f19259bb)

KhachHang ( pk la MaKH)
![image](https://github.com/user-attachments/assets/99d38998-9c16-4be6-b297-e5f482ea35fa)

MonUong( pk là MaMon)
![image](https://github.com/user-attachments/assets/e4da9fa1-86ba-4f5d-a4f8-38792d6ecb42)

NhanVien( pk MaNV)
![image](https://github.com/user-attachments/assets/e3868722-8885-4154-ac8c-8d949f928bd6)

2 Khóa ngoại FK và CK

Liên kết Chitiethoadon với MaMon và MaHoaDon
![image](https://github.com/user-attachments/assets/d7f7ba4b-812b-4cfc-9f26-d722c19dd06a)

Bảng MonUong liên kết với ChitietHoaHon bằng MaMon
![image](https://github.com/user-attachments/assets/1066dd69-97ab-4bc0-a02f-8e88ffb43928)

Bảng HoaDon liên kết với ChitietHoaDon bằng MaHD
![image](https://github.com/user-attachments/assets/9d613f72-f8fd-437c-b44c-afd3a42e042d)

Bảng KhachHang liên kết với HoaDon bằng MaKH 
![image](https://github.com/user-attachments/assets/8ea87fdc-b650-4402-afdc-2ea1c961bdeb)

bảng NhanVien liên kết với Hoadon bằng MaNv
![image](https://github.com/user-attachments/assets/fed0bb0f-bc0c-4d58-824f-264494e98459)




# NỘI DUNG B

Bổ xung thêm 1 vài trường Phi chuẩn 

Thêm trường Phi chuẩn TongTien cho bang HoaDon 

![image](https://github.com/user-attachments/assets/286752d9-d366-4a02-8c6d-acf7bbc26a81)

 Nạp code vào SQL 
 
 ![Screenshot (104)](https://github.com/user-attachments/assets/f39b2e84-70da-4823-9724-d4035ea273c9)


 Lợi ích khi thêm :
Truy vấn nhanh: Lấy tổng tiền trực tiếp, không cần tính toán lại mỗi lần.

Hỗ trợ báo cáo: Dễ dàng thống kê, lọc và xuất dữ liệu.

Giảm tải hệ thống: Hạn chế tính toán nặng khi nhiều người truy cập.

Tích hợp tiện lợi: Dễ dùng cho in hóa đơn, xuất file, gửi email...

Đảm bảo nhất quán: Trigger tự động cập nhật, tránh sai sót khi sửa dữ liệu.


  Dữ liệu ban đầu 
 ![image](https://github.com/user-attachments/assets/a1e4c32e-c0ee-46cc-96f8-4418de366340)
  sau khi nhập dữ liệu mới

  ![image](https://github.com/user-attachments/assets/2645bfc9-bdc1-4ac1-add8-6a2a4d5a95d5)

kết luận 
Trigger đã giúp tự động hóa việc cập nhật trường TongTien, đảm bảo dữ liệu luôn chính xác và nhất quán. Điều này giảm thiểu sai sót và tiết kiệm thời gian khi truy xuất thông tin hóa đơn, góp phần nâng cao hiệu suất của hệ thống quản lý quán cà phê.


 



  
