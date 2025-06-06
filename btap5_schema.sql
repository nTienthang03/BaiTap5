USE [baitap5]
GO
INSERT [dbo].[MonUong] ([MaMon], [TenMon], [Gia]) VALUES (N'M001', N'Cà phê sữa', 30000)
INSERT [dbo].[MonUong] ([MaMon], [TenMon], [Gia]) VALUES (N'M002', N'Trà đào', 25000)
INSERT [dbo].[MonUong] ([MaMon], [TenMon], [Gia]) VALUES (N'M003', N'Nước cam', 28000)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SoDienThoai]) VALUES (N'KH001', N'Nguyễn Văn A', N'0901234567')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SoDienThoai]) VALUES (N'KH002', N'Lê Thị C', N'0912345678')
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV]) VALUES (N'NV001', N'Lê Thị B')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV]) VALUES (N'NV002', N'Trần Quốc Dũng')
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaKH], [MaNV], [TongTien]) VALUES (N'HD001', CAST(N'2025-04-23T16:50:34.570' AS DateTime), N'KH001', N'NV001', 175000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaKH], [MaNV], [TongTien]) VALUES (N'HD002', CAST(N'2025-04-23T16:50:34.570' AS DateTime), N'KH002', N'NV002', 0)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaMon], [SoLuong], [DonGia]) VALUES (N'HD001', N'M001', 5, 30000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaMon], [SoLuong], [DonGia]) VALUES (N'HD001', N'M002', 1, 25000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaMon], [SoLuong], [DonGia]) VALUES (N'HD002', N'M003', 3, 28000)
GO
